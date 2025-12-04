# This is a simple web application that uses eval to evaluate user input
require 'sinatra'

get '/' do
  erb :index
end

post '/eval' do
  @result = eval(params[:code])
  erb :result
end

__END__

@@ index
<form action="/eval" method="post">
  <textarea name="code"></textarea>
  <input type="submit" value="Evaluate">
</form>

@@ result
Result: <%= @result %>