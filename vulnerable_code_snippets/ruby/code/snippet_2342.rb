require 'sinatra'
require 'erb'

get '/' do
  erb :index
end

post '/comment' do
  @comment = params[:comment]
  erb :comment
end

__END__

@@ index
<form action="/comment" method="post">
  <input type="text" name="comment">
  <input type="submit" value="Post Comment">
</form>

@@ comment
<h1>Your Comment:</h1>
<p><%= @comment %></p>