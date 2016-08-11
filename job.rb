require 'rubygems'
require 'watir'
require 'selenium-webdriver'
require 'watir-webdriver'
require 'bench'

class Job
  def initialize
    @i = 0
  end

  def apply
    @browser = Watir::Browser.new :chrome
    @browser.goto('https://angel.co/login?utm_source=top_nav_job_listings_browse')
    @browser.text_field(name: 'user[email]').set('stefanlenoach@gmail.com')
    @browser.text_field(name: 'user[password]').set('1maxwell1')
    @browser.button(name: 'commit').click
    sleep(1)
    # @browser.a(:text, 'Jobs').click
    @jobs = []
    @browser.goto('https://angel.co/jobs')
    sleep(3)
    # @browser.divs(class: "header-info").each do |div|
    #     sleep(3)
    #     div.click
    #     sleep(1)
    #     div.a(class: "g-button blue interested-button").click
    #     @jobs << div
    # end

    @browser.links(class: "g-button blue interested-button").each do |link|
      sleep(1)
      link.focus
      link.click
    end

    # @browser.goto('https://angel.co/jobs')
    # @browser.button(class: 'header-info').click
    # @browser.button(class: 'header-info').click
    # @browser.text_field(:name => 'header-info').set(@bots[@i])
    # sleep(1)
    # @browser.text_field(:name => 'passwd').set("redditbot123")
    # sleep(1)
    # #@browser.checkbox(:id => 'rem-login-main').set
    # @browser.button(class: 'btn').click
    # sleep(1)
    # @browser.goto('https://www.reddit.com/r/HillaryForPrison/comments/4qlh3b/reminder_hillary_clinton_is_under_criminal/')
    # sleep(1)
  end
end

  a = Job.new
  a.apply
