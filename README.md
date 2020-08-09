# README

# Pagination

Pagination is a type of techniques use to query large data sets. There are varienty of ways in apply pagination and also libraries to help manage the dataset.

In this project, I made an basic API dataset with 100 data that can be access through this website https://pagination123.herokuapp.com/apps. I use Ruby on Rails for this project with no libraries for pagination. Every was from scratch. For the data, I added from the seeds.rb


To achieve the API request, I use rnder json to set up and load the data file. I add all the parameter into an apps

The functionality I added to the pagination are start, max, by and order
start: Where should you data start. 0 is the starting point
max:   How many data appear per request.
by:    filter by id or by name
order: order by ASC or DESC
