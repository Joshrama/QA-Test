
Feature: purchase sauce labs backpack at swag labs

  @Swagcheck
  Scenario: Purchase sauce labs backpack
    Given user access the website login page
    When user enter valid username and password
    And user clicks on login button
    Then user should be navigated to the products page
    When user verify that the product is Sauce Labs Backpack
    And user click on the add to cart button for Sauce Labs Backpack
    And user click on the shopping cart badge
    Then user should be navigated to the cart page
    When user verify that the product price is correct
    And user click on the checkout button
    Then user should be navigated to the checkout step one page
    When user enter the required details on checkout page
    And user click the continue button
    Then user should be navigated to the checkout step two page
    When user verify the order status
    And user click the finish button
    Then user should be navigated to the checkout complete page
  
	