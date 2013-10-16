# Solution for Challenge: Scraping HN 1: Building Objects. Started 2013-08-15T00:23:16+00:00
require 'nokogiri'
require 'open-uri'
 
PAGE = Nokogiri::HTML(open(ARGV.first))
 
 
class PageParser
 
  attr_reader :page, :attributes
 
  def initialize(page)
    @page = page
    @attributes = {}
  end
 
  def parse_page
    attributes[:title]  = page.search('.title > a').map { |link| link.inner_text }.first # array
    attributes[:url]    = page.search('.title > a').map { |link| link['href'] }.first # array
    attributes[:points] = page.search('#score_5003980').inner_text # returns string
    attributes[:item_id]= page.search('.subtext > a:nth-child(3)').map {|link| link['href'] }.first.gsub(/(.*)(?<=\=)/, '')
  end
end
 
parse_attributes = PageParser.new(PAGE)
 
 
parse_attributes.parse_page
page = parse_attributes.attributes
 
 
class Comment
 
  # comment belongs_to exactly one post
 
  def initialize(user, text)
    @user = user
    @text = text
  end
end
 
 
 
class Post
  # post has_many comments
  attr_reader :page, :title
  attr_accessor :comments_array
 
  def initialize(page_attributes, page)
    @title   = page_attributes[:title]
    @url     = page_attributes[:url]
    @points  = page_attributes[:points]
    @item_id = page_attributes[:item_id]
    @page    = page
    @comments_array = []
  end
 
  def comments
    users    = page.search('.comhead > a:first-child').map {|link| link.inner_text }
    comments = page.search('.comment > font').map { |font| font.inner_text}
    user_and_comments = Hash[*(users.zip(comments)).flatten]
    user_and_comments.each do |user, text|
      comments_array << Comment.new(user, text)
    end
 
    comments_array
  end
 
  def add_comment(user, text)
    comments_array << Comment.new(user, text)
  end
end
 
post = Post.new(page, PAGE)
 
# post.add_comment "Chantal", "I am awesome!"
post.comments
 
puts "Post title: #{post.title}"
puts "Number of comments: #{post.comments_array.size}"