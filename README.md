# Smart_Dev_Test

[Requirements](#requirements) | [Getting Started](#getting-started) | [Prerequisites](#prerequisites) | [Installing](#installing) | [Use](#use) | [Running Tests](#running-tests) | [Author](#author)

## Requirements

1. Write a program that:
* Receives a log file as an argument (webserver.log is provided) e.g.: ./<parse> webserver.log
* Returns the following:
  
  * list of webpages with most page views ordered from most pages views to less page views e.g.:
/home 90 visits /index 80 visits etc...

  * list of webpages with most unique page views also ordered e.g.:
/about/2 8 unique views /index 5 unique views etc...

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites
* You will need to be using `Ruby version 2.6.0` (type ruby -v into your terminal to see your current version)
  * To download Ruby (if not installed) I use homebrew, but you can find details on all methods [here](https://www.ruby-lang.org/en/documentation/installation/)
  * To update your Ruby version you can use RVM (Ruby Version Manager). In your terminal type `rvm install ruby-2.6.0`
* This program is tested using Rspec
  

### Installing

1. Clone this repo to your local machine
2. Use `bundle install`
3. Open you `REPL`, I have used `IRB` as an example, you may use `PRY` or another alternative

### Use

* Require the file in irb > `require './lib/parse.rb'`
  * you should see `=> true` if the file has been loaded
  
* Create a new instance of the Parse class `> file = Parse.new`
  * you will see something similar to this `=> #<Parse:0x00007f81921a1f10 @file=[], @webpage_views=[], @unique_views=[]>`
  
* Call the parse_file method on the `file` and insert the log file to be parsed as the argument
  * example `> file.parse_file("webserver.log")`
  
* You will see the file split into webpages and IP adresses
  * example `["/home", "126.318.035.038"]`

* You can now call either of the following two methods on the `file`, depending on what you want to view.
  * show how many times a webpage was visited `views_of_pages` 
  * show unique webpage visits `unique_page_visits`
  
* Use `quit` to end your `IRB` session

### Running Tests

1. If not already done, clone the repo
2. Use `bundle install`
3. Run `rspec` from the terminal

## Author
Stuart Pethurst 
