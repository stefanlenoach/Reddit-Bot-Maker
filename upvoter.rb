require 'rubygems'
require 'watir'
require 'selenium-webdriver'
require 'watir-webdriver'
require 'bench'

class Upvote
  def initialize
    @bots = File.open("reddit_bots.txt").readlines.map  {|line| line}
    @i = 0
  end

  def upvote
    @browser = Watir::Browser.new :chrome
    @browser.goto('https://www.reddit.com/')
    sleep(1)
    @browser.text_field(:name => 'user').set(@bots[@i])
    sleep(1)
    @browser.text_field(:name => 'passwd').set("redditbot123")
    sleep(1)
    #@browser.checkbox(:id => 'rem-login-main').set
    @browser.button(class: 'btn').click
    sleep(1)
    @browser.goto('https://www.reddit.com/r/HillaryForPrison/comments/4qlh3b/reminder_hillary_clinton_is_under_criminal/')
    sleep(1)
     if @browser.div(class: 'arrow up login-required access-required')
       @browser.div(class: 'arrow up login-required access-required').click
     end
    sleep(5)
    @browser.close
    @i += 1
  end
end
a = Upvote.new
while true
  a.upvote
end
