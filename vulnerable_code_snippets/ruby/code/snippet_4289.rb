require 'sinatra'
require 'erb'

get '/' do
  erb :index
end

post '/search' do
  @result = params[:query]
  erb :search_results
end

__END__

@@ index
<form action="/search" method="post">
  <input type="text" name="query">
  <input type="submit" value="Search">
</form>

@@ search_results
<p>Your search results: <%= @result %></p>