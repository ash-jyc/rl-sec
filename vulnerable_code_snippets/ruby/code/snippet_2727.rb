require 'sinatra'

get '/' do
  erb :index
end

post '/calculate' do
  begin
    eval(params[:expression])
  rescue Exception => e
    "Error: #{e.message}"
  end
end

__END__

@@ index
<form action="/calculate" method="POST">
  <input type="text" name="expression">
  <input type="submit" value="Calculate">
</form>