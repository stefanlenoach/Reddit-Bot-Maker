# Reddit Bot Maker

Uses Watir Ruby gem and Chrome web-driver to automate creating Reddit usernames and upvoting a post with a list of usernames.

##user_creator.rb

Creates new Reddit usernames every half hour and saves name and password to reddit_bots.txt. Half hour cycle is used to bypass Reddit timeout for creating users.

To use, run ```ruby user_creator.rb ``` in the terminal from the project folder.

##upvoter.rb

Uses the list of generated usernames in reddit_bots.txt to upvote a post.
To use, run ```ruby upvoter.rb``` in the terminal from the project folder.
