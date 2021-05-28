import XCTest
@testable import MainTarget

final class ExampleMergeSwiftModulesTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(PrimaryService(model: .init(id: "1")).text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

