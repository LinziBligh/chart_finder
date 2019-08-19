# ChartFinder

Welcome to ChartFinder! This gem scrapes the archives of the UK's Official Chart Company website for the date that you enter, and displays the official UK singles chart for that date. (UK music chart records started on 14/11/1952). You can then choose a song from that chart to see more information about it.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'chart_finder'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install chart_finder

## Usage

When prompted, enter the date of chart you would like to see, in the format dd/mm/yyyy. Once the chart is displayed, to see more information about a song, just enter its position number in the chart. 

To see the chart again, type chart, or just type exit to end the programme.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'legacy-cookie-7702'/chart_finder. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the ChartFinder project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'legacy-cookie-7702'/chart_finder/blob/master/CODE_OF_CONDUCT.md).
