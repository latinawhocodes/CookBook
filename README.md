CookBook Sinatra MVC

    Welcome to CookBook! This is a MVC Sinatra web application that allows cooking enthusiasts to post snippets of recipes or just a small post in general. This app is for cooking/food enthusiasts who wish to share their experiences and tips with others. Imagine Facebook but for cooking! 

Objectives
    1. Build a Sinatra MVC Application
    2. Use ActiveRecord with Sinatra
    3. Use multiple models
    4. Use at least one has_many relationship on a User model and one belongs_to relationship on another model
    5. Must have user accounts -users can sign up, sign in, and sign out
    6. Validate uniqueness of user login attribute
    7. Once logged in, a user must have the ability to create, read, update, and destroy the resource that belongs_to   
        user.
    8. Ensure users can edit and delete only their own resources.
    9. Validate user input so that bad data cannot be persisted to the database. 
 


### File Structure
```
├── Gemfile
├── Gemfile.lock
├── LICENSE.md
├── README.md
├── Rakefile
├── app
│   ├── controllers
│   │   └── application_controller.rb
│   │   └── users_controller.rb
│   │   └── cards_controller.rb
│   ├── models
│   │   ├── cards.rb
│   │   └── user.rb
│   └── views
│       ├── index.erb
│       ├── layout.erb
│       ├── tweets
│       │   ├── new.erb
│       │   ├── edit.erb
│       │   ├── show.erb
│       │   └── cards.erb
│       └── users
│           ├── signup.erb
│           └── login.erb
├── config
│   └── environment.rb
├── config.ru
├── db
│   ├── development.sqlite
│   ├── migrate
│   │   ├── 20151124191332_create_users.rb
│   │   └── 20151124191334_create_cards.rb
│   ├── schema.rb
│   └── test.sqlite
```