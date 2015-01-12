# Ehiveruby

Ruby client library for the eHive API

## Installation

Add this line to your application's Gemfile:

    gem 'ehiveruby'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ehiveruby

## Usage

    require 'ehiverubvy'
    # set up a connection with your API key and optional community
    e = Ehive.new('65234598764c4d7fb17c16a26312d2a4',  1000)
    # Get a list of accounts with optional offset
    accounts = e.accounts(offset: 10)
    # Get a single account
    account = e.account(4567)
    
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
