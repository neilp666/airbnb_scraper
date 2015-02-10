require 'nokogiri'
require 'open-uri'
 
# Store URL to be scraped
#url = "https://www.airbnb.com/s/Brooklyn--NY--United-States"
url = "https://www.airbnb.co.uk/s/london"
 
# Parse the page with Nokogiri
page = Nokogiri::HTML(open(url))
 
# Display output onto the screen
page.css('div.h5.listing-name').each do |line|
	puts line.text
end

page.css('span.h3.price-amount').each do |line|
	puts line.text
end

page.css('div.text-muted.listing-location.text-truncate').each do |line|
	puts line.text
end