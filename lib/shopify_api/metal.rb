module ShopifyAPI
  module Metal
    module Middleware
      autoload :ShopifyOAuth, 'shopify_api/metal/middleware/shopify_oauth'
      autoload :DebugRequest, 'shopify_api/metal/middleware/debug_request'
    end

    autoload :Session, 'shopify_api/metal/session'
  end
end
