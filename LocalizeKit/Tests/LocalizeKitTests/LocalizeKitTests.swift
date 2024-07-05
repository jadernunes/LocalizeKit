import XCTest
@testable import LocalizeKit

final class LocalizeKitTests: XCTestCase {
    func testLocalization() throws {
        enum EnumString: String, LocalizableString {
            case test = "test"
        }
        
        XCTAssertEqual(EnumString.test.localized(bundle: .module), "Test1")
    }
}
