require 'ruby-jmeter'
# Targeting seperate Heroku app

puts Dir.pwd

test do
    threads count: 1 do
      visit name: 'National Parks Home Page', url: 'https://national-parks-app-prod.herokuapp.com'
    end
end.run(path:'/app/vendor/apache-jmeter/apache-jmeter-3.1/bin/')
