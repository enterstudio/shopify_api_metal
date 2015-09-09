# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'shopify_api/metal/version'

Gem::Specification.new do |spec|
  spec.name          = "shopify_api_metal"
  spec.version       = ShopifyApi::Metal::VERSION
  spec.authors       = ["Ho-Sheng Hsiao"]
  spec.email         = ["hosh@shopapps.co"]

  spec.summary       = %q{Unofficial Shopify API: bare-bones, threadsafe, Faraday, no resources}
  spec.description   = %q{Unofficial Shopify API: bare-bones, threadsafe, customizable with Faraday, no resources (use Roarify)}
  spec.homepage      = "https://github.com/shopappsio/shopify_api_metal"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'faraday', '~> 0.9.1'
  spec.add_dependency 'faraday_middleware'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
