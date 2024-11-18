import XCTest

class HomeScreen : BaseTest {

    private var welcomeText: XCUIElement { app.staticTexts["Welcome to XCUITest Course "] }
    private var cityField: XCUIElement { app.textFields["city"] }
    private var enrollButton: XCUIElement { app.buttons["enrollButton"] }
    private var successMessage: XCUIElement { app.staticTexts["Thanks for Joining!"] }
   
    // MARK: - Actions
    @discardableResult
      func enterCountry(_ username: String) -> HomeScreen {
          waitForElementToAppear(element: welcomeText)
          cityField.tap()
          cityField.typeText(username)
          return self
      }
    
    @discardableResult
    func clickEnroll() -> HomeScreen{
        enrollButton.tap()
        return self
    }
    
    @discardableResult
    func verifyMessage() -> HomeScreen {
        waitForElementToAppear(element: successMessage, timeout: 5);
        return self
    }
    

    
}
