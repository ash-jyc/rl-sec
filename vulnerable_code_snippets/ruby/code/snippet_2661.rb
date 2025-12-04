require 'sinatra'

get '/' do
  erb :index
end

post '/calculate' do
  operation = params[:operation]
  eval(operation)
end

__END__

@@ index
<form action="/calculate" method="post">
  <input type="text" name="operation" placeholder="Enter operation">
  <input type="submit" value="Calculate">
</form>