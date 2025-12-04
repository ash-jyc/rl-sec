require 'sinatra'
require 'erb'

get '/' do
  @username = params['username']
  erb :index
end

__END__

@@ index
<html>
  <body>
    <p>Hello <%= @username %></p>
  </body>
</html>