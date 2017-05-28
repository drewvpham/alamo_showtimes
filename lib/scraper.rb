require 'nokogiri'
require 'open-uri'
require 'pry'


require_relative './alamo_showtimes.rb'

class Scraper

  def print_theatres

  end

  def print_courses
  self.make_courses
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end

  def get_page
    doc=Nokogiri::HTML(open("https://drafthouse.com/austin/theater/lakeline"))

    # doc.css(".post").each do |post|
    #   course = Course.new
    #   course.title = post.css("h2").text
    #   course.schedule = post.css(".date").text
    #   course.description = post.css("p").text
    # end
    # binding.pry
  end

  def get_courses
    self.get_page.css('.post')
  end
  def make_courses
    self.get_courses.each do |post|
    course = Course.new
    course.title = post.css("h2").text
    course.schedule = post.css(".date").text
    course.description = post.css("p").text
  end
end


end

Scraper.new.get_page
