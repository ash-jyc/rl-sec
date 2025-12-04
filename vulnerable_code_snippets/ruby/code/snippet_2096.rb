require 'nokogiri'

def parse_xml(xml_string)
  doc = Nokogiri::XML(xml_string)
  puts doc.to_xml
end

puts "Enter your XML:"
user_input = gets.chomp
parse_xml(user_input)