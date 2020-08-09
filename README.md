# This repository has been discontinued.

The destination is [gen-lgtm](https://github.com/8398a7/gen-lgtm).

# LgtmCreator

You can easily create LGTM image from gif animation.

![](https://cloud.githubusercontent.com/assets/8043276/12905143/1cdb5638-cf18-11e5-9efb-4f13614700cb.gif)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'lgtm_creator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lgtm_creator
    
## Requirements

- ImageMagick 6.4.9 or later

## Usage

When installing globally, `bundle exec` can be omitted.

```shell
> bundle exec lgtm_creator convert sample.gif result.gif
```

You can also name it automatically.

```shell
> bundle exec lgtm_creator convert sample.gif --autoname # result is lgtm_sample.gif
```

It can also be specified in directory units.

```shell
> bundle exec lgtm_creator convert dir/images -r # The file name of the deliverable is prefixed with lgtm_.
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/8398a7/lgtm_creator.

