---
layout: gem_layout
---

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/8ecbc76da0ef462c93078dd3ff2a4f79)](https://www.codacy.com/app/DemetraSkl/arpabet?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=avlos/arpabet&amp;utm_campaign=Badge_Grade)

[![CircleCI](https://circleci.com/gh/avlos/arpabet.svg?style=svg)](https://circleci.com/gh/avlos/arpabet)

## installation

Add this line to your application"s Gemfile:

```ruby
gem "arpabet"
```

And then execute:
```ruby
    $ bundle
```
Or install it yourself as:
```ruby
    $ gem install arpabet
```
## usage

```ruby
  arpa = Arpabet::Parser.new(your_arpa_string)
  puts arpa.to_ipa
  puts arpa.to_unicode
```

fire up pry try the above, or try
the command line tool `arparse`, like so:

`bundle exec arparse --help`

## development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## contributing

Bug reports and pull requests are welcome on <a href="https://github.com/avlos/arpabet">Avlos/arpabet</a>.
