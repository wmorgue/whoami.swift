import Foundation

#if canImport(UIKit)
import class UIKit.UIDevice
#endif


public enum Whoami {
	
	/// Get the user's username.
	public func userName() -> String {
		NSUserName()
	}
	
	/// Get the user's full username.
	public func fullUserName() -> String {
		NSFullUserName()
	}
	
	/// Get the host device's hostname.
	public func hostName() -> String {
		ProcessInfo.processInfo.hostName
	}
	
	public func deviceName() -> String {
		///TODO
#if os(iOS)
		UIDevice.current.name
#else
		String("Can't determine device name")
#endif
	}
	
	public func deviceModel() -> String {
		///TODO
#if os(iOS)
		UIDevice.current.localizedModel
#else
		String("Can't determine device")
#endif
	}
	
	/// Get the platform.
	public func platform() -> Platform {
#if os(macOS)
		Platform.macOS
#elseif os(iOS)
		Platform.iOS
#elseif os(watchOS)
		Platform.watchOS
#elseif os(Linux)
		Platform.Linux
#elseif os(Windows)
		Platform.Windows
#else
		Platform.Unknown("Unknown platform")
#endif
	}
	
	/// Get the OS major version
	public func systemVersion() -> Int {
		ProcessInfo.processInfo.operatingSystemVersion.majorVersion
	}
	
	/// Get the user's preferred language(s).
	public func lang() -> String {
		Locale.current.identifier
	}
}
