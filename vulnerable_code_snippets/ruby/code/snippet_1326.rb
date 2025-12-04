require 'sinatra'

get '/' do
  erb :index
end

post '/submit' do
  eval(params[:code])
end

__END__

@@ index
<form action="/submit" method="post">
  <input type="text" name="code">
  <input type="submit" value="Submit">
</form>