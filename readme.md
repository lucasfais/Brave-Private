# Brave Private

> Open the given URL in a private Brave window

This is a fake browser that simply opens the given URL in a private (incognito) Brave window and then quits.

The use-case is being able to open a URL in a private Brave window from a browser picker app like [Velja](https://sindresorhus.com/velja).

## Requirements

- macOS 13 or later
- [Brave Browser](https://brave.com) installed in the `/Applications` folder

## Install

- Build the app in Xcode (see below) or download a release build.
- Move the app into the `/Applications` folder.

It launches Brave through the command line with the `--incognito` flag, so it needs no Accessibility or Automation permissions.

## Build

- Open `Brave Private.xcodeproj` in Xcode.
- Select the `Brave Private` target and make sure a signing team is selected under “Signing & Capabilities”.
- Choose Product › Run, then copy the built `Brave Private.app` (under the “Products” group › Show in Finder) into `/Applications`.

## Usage

Open a URL with the app like you would with normal Brave.

For example, enable the “Brave Private” browser in the Velja settings and then select it in the browser prompt when clicking a link.

## Related

- [Copy URL](https://github.com/sindresorhus/Copy-URL) - Adds copy functionality to browser picker apps

## Credits

Based on [Safari Private](https://github.com/sindresorhus/Safari-Private) by [Sindre Sorhus](https://sindresorhus.com).

## License

The code is under MIT license.

The Brave name and logo are trademarks of Brave Software, Inc. This project is not affiliated with Brave.
