require 'nokogiri'

doc = Nokogiri::HTML(open('doc.html'))

selectors.each do |selector|
  if doc.search(selector).empty?
    @unused_selectors[selector] += 1
  end
end