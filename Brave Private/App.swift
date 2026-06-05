import SwiftUI

@main
struct AppMain: App {
	@NSApplicationDelegateAdaptor(AppDelegate.self) private var appDelegate

	var body: some Scene {
		Settings {}
	}
}

private final class AppDelegate: NSObject, NSApplicationDelegate {
	private var task: Task<Void, Never>?
	private var didOpenURLs = false

	func applicationDidFinishLaunching(_ notification: Notification) {
		scheduleQuit()

		// When launched without any URL, still open an empty private window,
		// like pressing Cmd-Shift-N in Brave. Wait briefly first in case the
		// system is about to deliver URLs to open.
		Task {
			try? await Task.sleep(for: .milliseconds(300))

			guard !didOpenURLs else {
				return
			}

			openPrivateBraveWindow(with: [])
			scheduleQuit()
		}
	}

	func application(_ application: NSApplication, open urls: [URL]) {
		didOpenURLs = true
		openPrivateBraveWindow(with: urls)
		scheduleQuit()
	}

	@MainActor
	private func scheduleQuit() {
		task?.cancel()

		task = Task {
			do {
				try await Task.sleep(for: .seconds(10))
				NSApp.terminate(nil)
			} catch {}
		}
	}
}
