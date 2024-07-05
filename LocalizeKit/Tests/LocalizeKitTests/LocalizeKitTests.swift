import XCTest
@testable import LocalizeKit

final class LocalizeKitTests: XCTestCase {
    func testLocalization() throws {
        enum EnumString: String, LocalizableString {
            case test = "test"
        }
        
        XCTAssertEqual(EnumString.test.localized(bundle: .module), "Test1")
    }
    
    func testValues() throws {
        enum EnumString: String, LocalizableString {
            case testValues = "test_values"
        }
        
        XCTAssertEqual(EnumString.testValues.localized("1", bundle: .module), "1 Test2")
    }
}
