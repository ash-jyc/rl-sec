require 'nokogiri'
require 'open-uri'

class XmlParser
  def initialize(url)
    @url = url
  end

  def parse_xml
    xml_data = open(@url).read
    doc = Nokogiri::XML(xml_data)
    doc.xpath('//item').each do |node|
      puts node.text
    end
  end
end

parser = XmlParser.new('http://example.com/xxe_vulnerable_service')
parser.parse_xml