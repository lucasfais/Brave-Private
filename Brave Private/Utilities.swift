import AppKit

/// Open the given URLs in a new private (incognito) Brave window.
func openPrivateBraveWindow(with urls: [URL]) {
	guard NSWorkspace.shared.urlForApplication(withBundleIdentifier: "com.brave.Browser") != nil else {
		let alert = NSAlert()
		alert.messageText = "Brave Browser is not installed."
		alert.informativeText = "Install Brave Browser in the Applications folder and try again."
		alert.runModal()
		return
	}

	let process = Process()
	process.executableURL = URL(fileURLWithPath: "/usr/bin/open")
	process.arguments = ["-na", "Brave Browser", "--args", "--incognito"] + urls.map(\.absoluteString)
	try? process.run()
}
