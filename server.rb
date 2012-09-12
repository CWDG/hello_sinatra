require 'sinatra'

get '/' do
  # default route
  # get = show
  # return strings
  "Hello Sinatra!"
end

post "/add" do
  # post = create something
  # .. complicated stuff happens
  "...Created!"
end

get "/http_methods" do
  erb :http_methods
end

# just serves files (images, css, js, etc.)
set :public_folder, File.dirname(__FILE__) + '/public'  # default

# multiple routes
get "/hello/cwdg" do
  "<h1>Hello CWDG</h1>"
end

get "/hello" do
  "<h1>Hello Student</h1>"
end

# parameters
get "/hi/:name" do
  $name = params[:name]
  "<h1>Hello #{$name.capitalize}</h1>"
end

# set view directory
set :views, settings.root + '/views'  # default

get "/templating" do
  @name = $name || 'Student'
  @footer_class = rand > 0.5 ? "blue" : "green"
  erb :templating, layout: :layout
end



