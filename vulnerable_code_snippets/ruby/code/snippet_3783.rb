require 'rexml/document'

def parse_xml(xml_string)
  doc = REXML::Document.new(xml_string)
  root = doc.root
  root.elements.each('//*') do |element|
    if element.attributes['name'] == 'password'
      puts "Found password: #{element.text}"
    end
  end
end

xml_string = "<root><user name='admin' password='password123'></user></root>"
parse_xml(xml_string)