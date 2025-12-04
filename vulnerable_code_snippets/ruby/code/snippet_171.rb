require 'sinatra'
require 'erb'

get '/' do
  @message = params['message']
  erb :index
end

__END__

@@ index
<html>
  <body>
    <%= "<p>#{@message}</p>" %>
  </body>
</html>