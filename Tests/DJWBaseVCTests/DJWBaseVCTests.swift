import XCTest
@testable import DJWBaseVC

final class DJWBaseVCTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(DJWBaseVC().text, "Hello, World!")
    }


    static var allTests = [
        ("testExample", testExample)
    ]
}

final class BaseVCTest: XCTestCase {
    func test_deinit() {
        var vc: BaseVC? = BaseVC()
        let exp = expectation(description: "Viewcontroller has deinited")
        vc?.onKill = {
            exp.fulfill()
        }

        DispatchQueue.main.async {
            vc?.kill()
            vc = nil
        }

        waitForExpectations(timeout: 2)
    }
}

final class BaseVTest: XCTestCase {
    func test_deinit() {
        var v: BaseV? = BaseV()
        let exp = expectation(description: "View has deinited")
        v?.onKill = {
            exp.fulfill()
        }

        DispatchQueue.main.async {
            v?.kill()
            v = nil
        }

        waitForExpectations(timeout: 2)
    }
}
