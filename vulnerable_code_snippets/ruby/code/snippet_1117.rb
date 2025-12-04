def read_file(filename)
  File.read(filename)
end

def handle_request(params)
  filename = params[:filename]
  if filename.include?("../") # this is a basic check for path traversal
    return "Invalid filename"
  end
  read_file(filename)
end

puts handle_request({filename: "../etc/passwd"})