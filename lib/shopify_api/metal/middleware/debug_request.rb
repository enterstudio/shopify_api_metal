require 'faraday/middleware'

module ShopifyAPI
  module Metal
    module Middleware
      class DebugRequest < Faraday::Middleware

        def call(env)
          if self.respond_to?(:ap)
            ap env
          else
            puts env
          end
          @app.call env
        end
      end
    end
  end
end
