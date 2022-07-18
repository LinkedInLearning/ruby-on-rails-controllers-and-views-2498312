# Ruby on Rails Controllers and Views
This is the repository for the LinkedIn Learning course Ruby on Rails Controllers and Views. The full course is available from [LinkedIn Learning][lil-course-url].

![Ruby on Rails Controllers and Views][lil-thumbnail-url] 

Want to build smarter controllers and better-looking web pages with Ruby on Rails? In this foundational course, instructor Kevin Skoglund teaches developers how to better implement controllers and views in Ruby on Rails, and covers the fundamentals and best practices around these common programming concepts. Learn how to leverage the most useful features of controllers, including maintaining state with cookie and session data, displaying messages, organizing code, and using filters for routine tasks. Next, discover how to render different types of data, how to use view layouts, and how to incorporate assets such as images, style sheets, and JavaScript. Finally, find out how to work more efficiently with Ruby helper methods, which make common tasks like formatting text and numbers, date and time calculations, and outputting form fields easier.

## Instructions
This repository has branches for each of the videos in the course. You can use the branch pop up menu in github to switch to a specific branch and take a look at the course at that stage, or you can add `/tree/BRANCH_NAME` to the URL to go to the branch you want to access.

## Branches
The branches are structured to correspond to the videos in the course. The naming convention is `CHAPTER#_MOVIE#`. As an example, the branch named `02_03` corresponds to the second chapter and the third video in that chapter. 
Some branches will have a beginning and an end state. These are marked with the letters `b` for "beginning" and `e` for "end". The `b` branch contains the code as it is at the beginning of the movie. The `e` branch contains the code as it is at the end of the movie. The `main` branch holds the final state of the code when in the course.

When switching from one exercise files branch to the next after making changes to the files, you may get a message like this:

    error: Your local changes to the following files would be overwritten by checkout:        [files]
    Please commit your changes or stash them before you switch branches.
    Aborting

To resolve this issue:
	
    Add changes to git using this command: git add .
	Commit changes using this command: git commit -m "some message"

## Installing
1. To use these exercise files, you must have the following installed:
	- Ruby 2.7 minimum, 3.0 or later preferred
	- Ruby on Rails 7
	- MySQL
2. Clone this repository into your local machine using the terminal (Mac), CMD (Windows), or a GUI tool like SourceTree.
3. Install the RubyGems needed for the project:
	- cd task_manager
	- bundle install
4. Configure the project database and import initial data:
	- Add credentials to config/database.yml
	- rails db:create
	- rails lil:import


### Instructor

Kevin Skoglund 
                            


                            

Check out my other courses on [LinkedIn Learning](https://www.linkedin.com/learning/instructors/kevin-skoglund).

[lil-course-url]: https://www.linkedin.com/learning/ruby-on-rails-controllers-and-views
[lil-thumbnail-url]: https://cdn.lynda.com/course/2498312/2498312-1657743096167-16x9.jpg

