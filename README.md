# Reddit Bot Maker

Uses Watir and Chrome web-driver to automate creating Reddit usernames and upvoting a post with a list of usernames.


##Getting started
Before you run either ```user_creator.rb``` or ```upvoter.rb``` make sure you've
installed all the necessary gems and placed the chromedriver in your local path

##user_creator.rb

Creates new Reddit usernames every half hour and saves name and password to reddit_bots.txt. Half hour cycle is used to bypass Reddit timeout for creating users.

To use, run ```ruby user_creator.rb ``` in the terminal from the project folder.

##upvoter.rb

Uses the list of generated usernames in reddit_bots.txt to upvote a post. In the
upvoter.rb file, change the ```goto``` link to whichever post you want upvoted.
To use, run ```ruby upvoter.rb``` in the terminal from the project folder.
