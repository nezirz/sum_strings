# SumStrings
 
Simple gem which allows you to sum array of strings values. Primary ment for summing array of hours in format `["20:25","10:10"].strings_to_sum(':')`.
Which will result in a string `30:35`.

Code solution used by sample provided on stackoverflow by Cary Swoveland, thanks.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sum_strings'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sum_strings

## Usage

Sample for summing array of string values like hours.
We have array with some hours which we need to sum.
Sample array:
`working_hours = ["09:20","5:10","08:00","23:20","10:13"]`

Summing this array we can do like:
`working_hours.sum_strings(':')`

The gem is extended method of ruby Array calss so calling method `sum_strings(':')` with providing split char as parameter.

Result would be:
`56:3`

In case that you have some other split char you just need to provide it to a method.
Sample:
`working_hours = ["09-20","5-10","08-00","23-20","10-13"]`
`sum_strings('-')`

Here is a simple project where you can see practical usage of the gem `https://github.com/nezirz/use_sum_strings`

This is how the summing looks:
![alt text](https://raw.github.com/nezirz/sum_strings/master/sum_strings.png)


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at `https://github.com/nezirz/sum_strings`. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SumStrings project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/sum_strings/blob/master/CODE_OF_CONDUCT.md).
