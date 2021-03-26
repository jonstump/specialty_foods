# Ruby Rails with Active Record Project for Epicodus: Specialty Foods - "Kent Farms"

#### By Jon Stump

<img align="center" src="https://avatars2.githubusercontent.com/u/59323850?s=460&u=372c7d529b7379408ae54491ab3449b6e2f4d94d&v=4">

* * *

## Description

This is a website for "Kent Farms" to showcase their products and allow for customers to review them.

![Table Schema](/public/img/kent_farms_schema.png)
* * *

## Technologies used

* Ruby
* Rspec
* Pry
* Capybara
* Rails
* Neovim
* Postgres
* HTML
* CSS
* Bundler
* git
* Rubocop
* Faker
* Devise
* Simplecov
* bootstrap
* C8H10N4O2

* * *

## Specs

Initial Specs:
| Behavior | Input | Output |
| ------------- |:-------------:| -----:|
| Should allow an admin to input a product with a name, price, and county of origin  | Apple, 1.99, United States | Product appears in a clickable list. |
| Should allow a user to input a review for a product with content and a rating | review: "These apples were amazing. They were juicy with a crisp taste", 5 | Review will show up on product with rating |
| Admins should have ability to update product names entered | original Product: Apple, new name: Oranges | Oranges will show on the product page |
| Admins should have ability to update product prices entered | original price: 1.99, new price: 2.99 | The product's price will be updated to 2.99 |
| Admins should have ability to update product country entered | original country: United States, new name: Japan | Japan will show as the country of origin on product page |
| Admins should have ability to update reviews | Click edit and change any field on a use review  | Review is updated |
| Admins should have ability to delete products entered | click Delete on the product page | This removes the product and associated reviews from the products page and DB |
| Users should be able to see details of a product when clicking on it | Click on the Apples | This brings up a page for Apples and shows all of the details and reviews |
| Should have validation checks for all fields are filled out, including rating | Apples entered a second time | This will throw and error any time a user attempts to do double entry of an item |
| Review content should be between 50 and 250 characters | User attempts to enter a review of 10 characters  | This will keep the user from saving their review because it isn't within greater than 50 characters |
| All product titles should be automatically capitalized | Entry of apples | Product should will show as Apples. |
| Users should be able to create an account and login | Email: name@email.com, Password:P@$$w0rd | Navbar will show name@email.com logged in. |

* * *

## Installation

* Go to ( https://github.com/jonstump/specialty-foods ).

* Navigate to the code button on the github website.

* Click on the code button to open the menu.

- Copy the HTTPS code by clicking the clipboard next to the link.

- Within your Bash terminal navigate to your desired location by using cd fallowed by your desired directory.

```bash
 cd Desktop
```

- Once you have chosen your desired directory use the command.

```bash
git clone https://github.com/jonstump/specialty-foods
```

<div
  style="
    background-color: #d1ecf1;
    color: grey; padding: 6px;
    font-size: 9px;
    border-radius: 5px;
    border: 1px solid #d4ecf1;
    margin-bottom: 12px"
>
  <span
    style="
      font-size: 12px;
      font-weight: 600;
      color: #0c5460;"
  >
    ⓘ
  </span>
  <span
    style="
      font-size: 12px;
      font-weight: 900;
      color: #0c5460;
      margin-bottom: 24px"
  >
    Note :
  </span>
  If you have any problems make sure your HTTPS code is correct! The example above might not be the most recent HTTPS code!
</div>

* Now that the project is downloaded you will need to run the command 'bundle install' to install all of the gems from the Gemfile.

``` bash
bundle install
```

* In oder to run the tests enter 'rspec' into your terminal.

``` bash
rspec
```

* If you would like to see the code use the command "editor ." (where editor is your code editor. example code for VScode and vim for Vim) to open the project in your code editor.

``` bash
nvim .
```

* You will need to use rails in order to setup the databases for the project along with Postgres installed on your machine as well. To install the databases and tables run the following command in your terminal:

``` bash
rake db:create
```
``` bash
rake db:migrate
```
``` bash
rake db:test:prepare
```
``` bash
rake db:seed
```

* To launch a local version of the site in your browser enter the following:

``` bash
rails s
```

This will launch a local host via Rails. You should be able to navigate to http://localhost:3000/ to see the site locally.

* To test admin functionality you will need to create and admin user. You can do so by creating a new user via the rails admin with the following:
``` bash
rails c
```
once this has pulled up the rails console you can create an admin user by pasting in the folling:
```ruby
User.create!(
    email: 'superman@krpyton.com',
    password: 'admin123',
    admin: true
)
```

## To dos

* Update CSS on navbar to give it better colors in line with the rest of the site.
* Make the product page a little nice rather than a bullet point list.
* Add active storage so admins can add pictures to products
* Allow users to update or delete their reviews
* Add timestamps to reviews so that they can be sorted.
* Add a search for products.
* Add an average rating for each product.

## Bugs

* When username is enabled it doesn't properly capture the name when signing up and throws an error.

## Resources
* [Smallville Wiki](https://smallville.fandom.com/wiki/Kent_Farm)
* [DC Comics](https://www.dccomics.com/)
* [w3Schools](https://www.w3schools.com/)
* [Coolors](https://coolors.co/564138-2e86ab-f6f5ae-f5f749-f24236)
* [stackoverflow](https://stackoverflow.com/)

* * *

## License

> [GPLv3](/LICENSE)\
> Jon Stump &copy; 2021

* * *

## Contact Information

_Jon Stump: [Email](jmstump@gmail.com)_

