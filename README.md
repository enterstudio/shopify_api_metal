# ShopifyApi::Metal

The official ShopifyAPI gem works well if you are writing a private app. However, if you are
writing an app that works with multiple shops, it doesn't work so well. The official client
was written using ActiveResource, and ActiveResource was never designed for multiple stores.

Furthermore, the Shopify API rate limit uses custom headers to inform the client when things
are getting close.

Finally, for some apps, a representation layer is not necessary.

This is an UNOFFICIAL gem. It is not written by Shopify. This gem is intended to:

1. Thread-safe, without resorting to thread-safe class attributes
2. Built on Faraday, so that backends and middleware can be customized
3. Stay in it's own namespace so you can run this along side the official gem

What this gem will not do:

1. Convert data into resource objects. Use [roarify https://github.com/fighella/roarify] if you need that.
2. Solve all your problems. This was written for Shopapps for our needs. We welcome Pull Requests though, and may expand the scope of the project.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'shopify_api_metal'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install shopify_api_metal

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/shopify_api_metal.

