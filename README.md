# ConnectQtest

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/connectQtest`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'connectQtest'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install connectQtest

## Usage

 This gem is for run qtest testcases using automation script, for that you need belows things to add in your file.
 
  $projectid = #your project Id, you will get from qtest
  
  $id = $runid = TestrunID - whatever testcase you want to execute
  
  $qtesturl #your qtest url, you will get from qtest
  
  $authkey #your Qtest authorization, you will get from qtest
 
 Call this function in your file/method 
 
  Qtest.QtestPostTestResult (name,runid,failMessage)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/connectQtest. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

