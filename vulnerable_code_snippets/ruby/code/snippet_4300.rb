require 'sinatra'

get '/' do
  @name = params[:name]
  erb :index
end

__END__

@@ index
<h1>Hello, <%= @name %>!!!</h1>
<form action="/" method="get">
  <input type="text" name="name" placeholder="Enter your name">
  <input type="submit" value="Submit">
</form>