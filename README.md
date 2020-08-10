# README

# Pagination

**Pagination** is a type of technique use to query large data sets. There are varienty of ways in apply pagination and also libraries to help manage dataset.

In this project, I made a basic API dataset with 100 data that can be access through this website https://pagination123.herokuapp.com/apps. I use Ruby on Rails for this project with no libraries for pagination.For the data, I added though seeds.rb file.

To achieve the API request, I use render json to set up and load the data file. I add all the parameter into an apps and added parameters into it.

`def index
        start = params.fetch(:start,0).to_i
        last = params.fetch(:last,100).to_i
        max = params.fetch(:max,2).to_i
        by = params.fetch(:by, 'id').to_s
        order = params.fetch(:order, "ASC").to_s
        apps = App.offset(start * max).limit(max).order(by + " " + order)
        render json: {status: 'SUCCESS', message: 'Loaded Apps', range:apps}, status: :ok
    end`

The functionality I added to the pagination are start, max, by and order.

**start:** Where should you data start. 0 is the starting point.

**max:**   How many data appear per request.

**by:**    filter by id or by name.

**order:** order by ASC or DESC.

# Testing

For testing, I use rails builtin test module to test the endpoint of /apps. It ran 3 assertion and 0 failure. The code is achieve it is down below

`test "api endpoint exist and work" do
    assert_routing({method: 'get', path: '/apps'}, {controller: "apps", action: "index"}) 
  end`
