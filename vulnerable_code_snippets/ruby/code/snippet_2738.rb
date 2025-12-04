require 'rexml/document'
include REXML

def parse_xml(xml_string)
  document = Document.new(xml_string)
  root = document.root
  root.elements.each('element') do |element|
    puts element.text
  end
end

xml_string = "<?xml version='1.0'?><document><element>Hello, World</element></document>"
parse_xml(xml_string)