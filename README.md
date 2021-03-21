# Ruby Rails with Active Record Project for Epicodus: Specialty Foods - "Kent Farms"

#### By Jon Stump

<img align="center" src="https://avatars2.githubusercontent.com/u/59323850?s=460&u=372c7d529b7379408ae54491ab3449b6e2f4d94d&v=4">

* * *

## Description

This is a website for "Kent Farms" to showcase their products and allow for customers to review them.

![Table Schema](/public/img/specialty_foods.png)
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
* C8H10N4O2

* * *

## Specs

Initial Specs:
| Behavior | Input | Output |
| ------------- |:-------------:| -----:|
| Should allow a user to input a product with a name, price, and county of origin  | Apple, 1.99, United States | Product appears in a clickable list. |
| Should allow a user to input a review for a product with an author, content, and rating | name: Jane, review: "These apples were amazing. They were juicy with a crisp taste", 5 | Review will show up on product with rating |
| Users should have ability to update product names entered | original Product: Apple, new name: Oranges | Oranges will show on the product page |
| Users should have ability to update product prices entered | original price: 1.99, new price: 2.99 | The product's price will be updated to 2.99 |
| Users should have ability to update product country entered | original country: United States, new name: Japan | Japan will show as the country of origin on product page |
| Users should have ability to update review authors entered | original author: Jane, new author: Jennifer | Jennifer will show on the product page |
| Users should have ability to update review ratings entered | original review: 3, new review: 5 | Review rating of 5 will show when rating is clicked on|
| Users should have ability to update review content entered | original content: These apples were super delicious!, new content: These apples were super delicious and I loved the color! | clicking on the review will show the updated content body |
| Users should have ability to delete products entered | click Delete on the product page | This removes the product and associated reviews from the products page and DB |
| Users should have ability to delete reviews entered | click Delete on the review page | This removes the review from the products page and DB |
| Users should be able to see details of a product when clicking on it | Click on the Apples | This brings up a page for Apples and shows all of the details and reviews |
| Should have validation checks for all fields are filled out, including rating | Apples entered a second time | This will throw and error any time a user attempts to do double entry of an item |
| Review content should be between 50 and 250 characters | User attempts to enter a review of 10 characters  | This will keep the user from saving their review because it isn't within greater than 50 characters |
| All product titles should be automatically capitalized | Entry of apples | Product should will show as Apples. |

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

## To dos

* Figure out how to install bootstrap.

## Bugs

* Bootstrap gem and its dependencies will not install properly.

## Resources
* [Smallville Wiki](https://smallville.fandom.com/wiki/Kent_Farm)
* [DC Comics](https://www.dccomics.com/)
* [w3Schools](https://www.w3schools.com/)
* [Coolors](https://coolors.co/f7ebec-ddbdd5-ac9fbb-59656f-1d1e2c)
* [stackoverflow](https://stackoverflow.com/)

* * *

## License

> [GPLv3](/LICENSE)\
> Jon Stump &copy; 2021

* * *

## Contact Information

_Jon Stump: [Email](jmstump@gmail.com)_

