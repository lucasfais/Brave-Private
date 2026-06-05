➡️ Inspired and based on https://github.com/sindresorhus/Safari-Private

# Brave Private

> Open the given URL in a private Brave window

This is a fake browser that simply opens the given URL in a private (incognito) Brave window and then quits.

The use-case is being able to open a URL in a private Brave window from a browser picker app like [Velja](https://sindresorhus.com/velja).

## Download

[**Latest release**](https://github.com/lucasfais/Brave-Private/releases/latest)

<sup>Requires macOS 13 or later and Brave Browser.</sup>

## Requirements

- macOS 13 or later
- [Brave Browser](https://brave.com) installed in the `/Applications` folder

## Install

- [Download the latest release](https://github.com/lucasfais/Brave-Private/releases/latest) and unzip it, or build it yourself (see below).
- Move the app into the `/Applications` folder.

It launches Brave through the command line with the `--incognito` flag, so it needs no Accessibility or Automation permissions.

## First launch on macOS

I don't have a paid Apple Developer account, so the first time you open a downloaded release, macOS Gatekeeper will block it. This is normal for a free, open-source app.

To allow it:

1. Double-click the app once. macOS will refuse to open it and show a warning.
2. Open **System Settings › Privacy & Security**, scroll down, and click **Open Anyway** next to the “Brave Private” message.
3. Confirm with Touch ID or your password.

It will open normally every time after that.

Alternatively, remove the quarantine flag in Terminal:

```sh
xattr -dr com.apple.quarantine "/Applications/Brave Private.app"
```

## Build

- Open `Brave Private.xcodeproj` in Xcode.
- Select the `Brave Private` target. No signing team is required — Xcode signs it to run locally (ad-hoc) automatically. You can select your own team under “Signing & Capabilities” if you have one.
- Choose Product › Run, then copy the built `Brave Private.app` (under the “Products” group › Show in Finder) into `/Applications`.

## Usage

Open a URL with the app like you would with normal Brave.

For example, enable the “Brave Private” browser in the Velja settings and then select it in the browser prompt when clicking a link.

## Credits

Based on [Safari Private](https://github.com/sindresorhus/Safari-Private) by [Sindre Sorhus](https://sindresorhus.com).

## License

The code is under MIT license.

The Brave name and logo are trademarks of Brave Software, Inc. This project is not affiliated with Brave.
