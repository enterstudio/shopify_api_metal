require 'faraday/middleware'

module ShopifyAPI
  module Metal
    module Middleware
      class ShopifyOAuth < Faraday::Middleware
        # https://docs.shopify.com/api/authentication/oauth#making-authenticated-requests
        # https://github.com/Shopify/shopify_api/blob/6c1e4599d9a58b3ed6d82011bdc7acb13157f0a1/lib/shopify_api/session.rb#L25

        AUTH_HEADER = 'X-Shopify-Access-Token'.freeze
        attr_reader :token

        def call(env)
          env[:request_headers][AUTH_HEADER] = token
          @app.call env
        end

        def initialize(app, token)
          @app   = app
          @token = token.to_s
        end
      end
    end
  end
end
