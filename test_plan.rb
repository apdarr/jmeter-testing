require 'ruby-jmeter'
# Targeting seperate Heroku app

test do
    threads count: 10 do
      visit name: 'National Parks Home Page', url: 'https://national-parks-app.herokuapp.com'
    end
end.run
