import XCTest

class BaseTest {
    
    
    let app: XCUIApplication
    init(app: XCUIApplication) {
           self.app = app
       }

    func waitForElementToAppear(element: XCUIElement, timeout: TimeInterval = 5) {
        let exists = element.waitForExistence(timeout: timeout)
        XCTAssertTrue(exists, "Element \(element) did not appear in \(timeout) seconds.")
    }
  
    
}
