# Rack::TryStatic, Recontributed Rack Middleware

This package includes one add-on component for Rack, a Ruby web server interface:

* Rack::TryStatic - Tries to match a request to a static file.

## Installation

Add this line to your application's Gemfile:

    gem 'rack-try_static2'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rack-try_static2

## Usage

The Rack::TryStatic middleware delegates requests to Rack::Static middleware
trying to match a static file

Examples

    use Rack::TryStatic,
      :root => "public",  # static files root dir
      :urls => %w[/],     # match all requests
      :try => ['.html', 'index.html', '/index.html'] # try these postfixes sequentially

uses same options as Rack::Static with extra :try option which is an array
of postfixes to find desired file


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Add failing tests
4. Commit your changes (`git commit -am 'Adding tests for some feature'`)
5. Make your tests pass
6. Commit your changes (`git commit -am 'Implements some feature'`)
7. Push to the branch (`git push origin my-new-feature`)
8. Create new Pull Request
