@Selenium
Feature: User should be able to create an account so they can sign in and purchase items
	
	Scenario: navigate to sign in page
		When the user requests the sign in page
		Then: the user should be on the sign in page
	
	Scenario: user does not exist and tries to log in
		Given: the user is new
		And they navigate to the sign in page
		When they try to login as a user that already exists 
		Then Teher should be an error message 
	
	Scenario: user exists and tries to log in
		Given: the user is not new
		And they navigate to the sign in page
		When they try to login as a user that already exists 
		Then they should be taken to http://automationpractice.com/index.php?controller=my-account
	
	Scenario: user does not exist and tries to register
		Given: the user is new
		And they navigate to the sign in page
		When they try to create an account my enteing an email
		Then They should be taken to a page to input personal details
		Then they should be taken to http://automationpractice.com/index.php?controller=my-account

Feature: User should be able to search for Summer Dresses and see what dresses are in stock
	
	Scenario: the user serches for summer dresses
		Given the user serches for sumer dresses
		Then they navigate to http://automationpractice.com/index.php?id_category=11&controller=category
	
	Scenario: View details of a dress
		Given the user searches for a summer dress
		When they click on a dress they want 
		Then they can view a pop up box containing details of the dress
		
	
Feature: User Should be able to add items to basket. They can purchase or remove an item from a basket

	Scenario: View details of a dress and add to cart
		Given the user is now on a search page 
		And want to add to cart once they view it
		When they see a dress theyw ant on the search page
		And they click on a dress they want 
		Then they can view a pop up box containing details of the dress
		And chose the quantity and size they want 
		And Can click the add to cart button if they wish to purchase it 
	
	Scenario: add a dress to cart without viewing the details
		Given the user is now on a search page 
		And want to add to cart without viewing the details
		When they see a dress they want on the search page
		Then they hover on the dress they want
		And Can click the add to cart button if they wish to purchase it 
	
	Scenario: The user can remove an item wothout being on the checkout page
		Given The user does not want to go straight to the checkout webpage 
		And: they wish to remove an item 
		When the hover on the cart object with their mouse
		Then a drop down menu containing the items in their cart is shown
		When the click the 'x' next to an item
		Then the item will be removed 
	
	Scenario: The user can remove an item when they navigate to the checkout page 
		Given The user goes straigh to the chekout page
		And clicks on the trash can icon next to the object 
		Then the item will be removed 
		
Feature: User can checkout their basket. 

	Scenario: The user wishes to checkout and the cart has an item in it
	Given the user goes to checkout 
	When there is at least one item in the cart 
	And they try to checkout 
	Then They can proceed to check out and add their details 
	
	Scenario: The user wishes to checkout and the cart is empty
	Given the user goes to checkout 
	When the cart is empty
	And they try to checkout 
	Then They will not be allowed to proceed to check out and add their details 
	And will be given an error message saying "Your shopping cart is empty."
