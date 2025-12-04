require 'sinatra'
require 'erb'

get '/' do
  @user_input = params['user_input']
  erb :index
end

__END__

@@ index
<html>
  <body>
    <%= @user_input %>
  </body>
</html>