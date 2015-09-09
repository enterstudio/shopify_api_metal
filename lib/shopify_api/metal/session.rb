require 'faraday'
require 'faraday_middleware'

module ShopifyAPI
  module Metal
    # This is not exactly compatible with ShopifyAPI::Session
    class Session

      class << self
        def connection(domain, token, debug = false)
          Faraday.new("https://#{domain}/admin") do |f|
            f.request  :shopify_oauth, token
            f.request  :json

            f.response :json

            f.request  :debug if debug
            f.adapter Faraday.default_adapter
          end
        end
      end
    end
  end
end

if Faraday::Middleware.respond_to? :register_middleware
  puts 'registering'
  Faraday::Request.register_middleware \
    shopify_oauth: -> { ShopifyAPI::Metal::Middleware::ShopifyOAuth },
    debug:         -> { ShopifyAPI::Metal::Middleware::DebugRequest }
end
