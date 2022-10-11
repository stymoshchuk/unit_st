# UnitSt
## Installation

Install the gem and add to the application's Gemfile by executing:

    bundle add unit_st

If bundler is not being used to manage dependencies, install the gem by executing:

    gem install unit_st

In Gemfile should be added: 

    gem "unit_st", "~> 0.1.5"

0.1.5 - latest version

## Usage

For now it is possible to use only methods:
create_player(first_name, last_name, height_feet, height_inches, position, team_id, weight_pounds)
update_player_info(id, first_name, last_name)

In method update_player_info only parameter `id` is required

Example of usage:
example.rb

require "unit_st"

class Example
    include UnitSt

    def create
        create_player("Andy", "White", 500, 800, 1, 7, 2.0)
    end

    def update
        update_player_info(2,"Andy", "Grim")
    end
end

puts Example.new.create
puts Example.new.update



## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/unit_st. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/unit_st/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the UnitSt project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/unit_st/blob/master/CODE_OF_CONDUCT.md).
