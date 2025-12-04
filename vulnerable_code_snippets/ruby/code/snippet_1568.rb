require 'sinatra'
require 'erb'

get '/' do
  erb :index
end

post '/search' do
  @query = params[:query]
  erb :results
end

__END__

@@ index
<form action="/search" method="post">
  <input type="text" name="query">
  <input type="submit" value="Search">
</form>

@@ results
<p>You searched for: <%= @query %></p>