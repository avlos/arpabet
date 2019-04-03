# ARPAbet [![Codacy Badge](https://api.codacy.com/project/badge/Grade/8ecbc76da0ef462c93078dd3ff2a4f79)](https://www.codacy.com/app/DemetraSkl/arpabet?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=avlos/arpabet&amp;utm_campaign=Badge_Grade) [![CircleCI](https://circleci.com/gh/avlos/arpabet.svg?style=svg)](https://circleci.com/gh/avlos/arpabet)

The ARPAbet gem allows you to convert notations from [ARPAbet](https://en.wikipedia.org/wiki/ARPABET) to [International Phonetic Alphabet (IPA)](https://en.wikipedia.org/wiki/International_Phonetic_Alphabet).

## Installation

Add this line to your application's Gemfile:

```ruby
gem "arpabet"
```

and run `bundle`.

In Ruby then write:
```ruby
require "arpabet"
```

Or install the gem by running:
```ruby
gem install arpabet
```
## Usage

```ruby
  example = "SIL_S EH0_B L_E EH0_B S_I K_I IY1_E SIL_S"
  arpa = Arpabet::Parser.new(example)
  puts arpa.to_ipa
  puts arpa.to_unicode
```

You can fire up pry to try the above, or try
the command line tool `arparse`, like so:

`bundle exec exe/arparse -a SIL_S EH0_B L_E EH0_B S_I K_I IY1_E SIL_S`

For more help on how to use the command line tool run:
`bundle exec exe/arparse --help`

## Development

After checking out the repo, run `bin/setup` to install dependencies in a vendor directory. You then run `bin/console` for an interactive prompt that will allow you to experiment with the code.

To install this gem on your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on <a href="https://github.com/avlos/arpabet">Avlos/arpabet</a>.
