# Bookshop

## 1st Rails app

### Models
    - Users model (Managed by Devise)
        * user has many orders
    - Orders model
        * order has many products (books)
        * order belongs to user
    - Books model
        * book belongs to order

### Views
    - Index
    - Books
    - Genres
    - Checkout

### Controllers
    - Orders controller
    - Genres controller
    - Books controller
    - User (managed by Devise)
    - Admin (managed by ActiveAdmin)

### Requirements
    - Devise gem
        * Sign up
        * user authentication
        * password reset
        * email validation
        * Log in

    - ActiveAdmin gem
        * manage users
        * manage orders

    - Stripe gem
        * checkout integration
        * use service wrapper

    - BasicAuth
        * Authentication to API server

    - Httparty gem
        * API get requests
        * use service wrapper

## 2nd Rails app (API)

### Models
    - Books model
        * book belongs to gategory
        * book belongs to author
    - Genres model
        * genre has many books
    - Author model
        * author has many books

### Controllers
    - Books controller
    - Genres controller

### Requirements
    - ActiveAdmin gem
        * manage genres
        * manage books
        * manage authors



    - BasicAuth
        * Auth system
    
    - API Routes
        * get all items  - /api/books - books#index
        * get book - /api/books/:id - books#show
        * get all genres - /api/genres - genres#index
        * get books by genre - /api/genres/:id - genres#show

# User stories

    As a user 
    I should be able to sign up 
    So that I can log in

    As a user
    I should be able to log in 
    So that I can place orders

    As a user
    I should be able to view all books
    So that I can select books from a list

    As a user 
    I should be able to view one book
    So that I can check the details

    Scenario:
    Given I am on the books list page
    When I click on the More Info button for a book
    Then I will see a screen with details for the selected book 

    As a user
    I should be able to view all genres
    So that I can filter books by genre
    
    As a user
    I should be able to filter books by genre
    So that I have a grouped list

    As a user
    I should be able to add books to cart
    So that I can place an order

    Scenario:
    Given I am on the books list page
    When I click on the Add to Cart button for a book
    Then I the book will be added to the shopping cart 
    And the number of items will be updated in the nav bar

    As a user
    I should be able to place an order
    So that I can purchase books

    As an admin
    I should be able to manage users 

    As an admin 
    I should be able to manage orders

