# Running JMeter on a Heroku dyno

This simple app uses [this custom buildpack](https://github.com/apdarr/heroku-buildpack-load-test) which installs the JMeter binary at build.

The app leverages [ruby-jmeter](https://github.com/flood-io/ruby-jmeter), a well documented and actively maintained gem that allows you to script JMeter tests in Ruby. 

This particular app just issues `GET` requests to an example site, but there are useful examples of scripting various user behaviors with `ruby-jmeter` [in this directory](https://github.com/flood-io/ruby-jmeter/tree/master/examples).

Note that `test_plan.rb` specifies the exact file location of the JMeter binary, which is installed with the custom buildpack linked above.

# Initiating tests

Simply push to Heroku and scale the processes:

`heroku ps:scale ruby-jmeter=1`

Note that any significant load testing against the Heroku platform must adhere to Heroku's [Acceptable Use Policy](https://www.heroku.com/policy/aup) (see Prohibited Action #11).
