require 'nokogiri'
require 'open-uri'
 
# Store URL to be scraped
#url = "https://www.airbnb.com/s/Brooklyn--NY--United-States"
url = "https://www.airbnb.co.uk/s/london"
 
# Parse the page with Nokogiri
page = Nokogiri::HTML(open(url))
 
# Display output onto the screen
puts page