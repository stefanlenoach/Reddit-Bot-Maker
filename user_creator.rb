require 'rubygems'
require 'watir'
require 'watir-webdriver'
class Creator
  attr_accessor :browser, :firsts, :seconds
  def initialize
    @first = ["boat", "prison", "cheese", "gypsy", "phlegm", "french", "pork", "anus", "butt", "fry", "jingle", "penguin", "trump", "mexican", "canadian", "jew", "german", "grape", "dog"]
    @second = ["jumper", "larder", "lemon", "jackal", "titty", "titties", "tits", "toots", "milktank", "taytay", "butthole", "clown", "spy", "burger", "frenchfry", "washboard", "bball", "prince", "folgers"]

  end

  def create
    number = rand(0..9999).to_s
    password = "redditbot123"
    username = @first.shuffle[0] + @second.shuffle[0] + number
    @browser = Watir::Browser.new
    @browser.goto('https://www.reddit.com/login')
    #sleep(1)
    @browser.text_field(:id => 'user_reg').set(username)
    #sleep(1)
    @browser.text_field(:id => 'passwd_reg').set(password)
    #sleep(1)
    @browser.text_field(:id => 'passwd2_reg').set(password)
    sleep(1)
    @browser.button(class: 'c-btn c-btn-primary c-pull-right').click
    File.open("reddit_bots.txt", "a").puts username
    sleep(5)
    @browser.close
  end
end
a = Creator.new
while true
  a.create
  sleep(1800)
end
