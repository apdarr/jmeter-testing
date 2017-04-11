require 'ruby-jmeter'
# Targeting seperate Heroku app

puts Dir.pwd

test do
    threads count: ENV["THREADS"] do
      visit name: 'Google', url: 'https://www.google.com'
    end
end.run(path:'/app/vendor/apache-jmeter/apache-jmeter-3.1/bin/')
