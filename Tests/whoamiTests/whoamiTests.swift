import XCTest
@testable import Whoami

final class whoamiTests: XCTestCase {
	
	let who = Whoami()
	
	func testUserName() throws {
		#if os(macOS)
		XCTAssertEqual(who.userName(), "moon")
		#elseif os(iOS)
		XCTAssertEqual(who.userName(), "")
		#endif
	}
	
	func testHostName() throws {
		XCTAssertEqual(who.hostName(), "macbook.local")
	}

	func testSystemVersion() throws {
		#if os(macOS)
		XCTAssertEqual(who.systemVersion(), 12)
		#elseif os(iOS)
		XCTAssertEqual(who.systemVersion(), 15)
		#endif
		
	}
	
	func testPlatform() throws {
		#if os(macOS)
		XCTAssertEqual(who.platform(), Platform.macOS)
		#elseif os(iOS)
			XCTAssertEqual(who.platform(), Platform.iOS)
		#endif
	}
	
	func testLanguage() throws {
		XCTAssertEqual(who.lang(), "en_US")
	}
}
