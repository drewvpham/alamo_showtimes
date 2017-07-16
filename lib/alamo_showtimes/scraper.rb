require 'nokogiri'
require 'open-uri'
require 'pry'



class Scraper

  def get_page
      doc = Nokogiri::HTML(open("https://yahoo.com"))

      binding.pry
  end

end

Scraper.new.get_page
