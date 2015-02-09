# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'randomapi/version'
Gem::Specification.new do |spec|
  spec.name          = "randomapi"
  spec.version       = RandomApi::VERSION
  spec.authors       = ["Denis Kuznetsov"]
  spec.email         = ["denis@f7.ru"]
  spec.summary       = %q{Gets data from randomapi.com}
  spec.description   = %q{Gets data from randomapi.com}
  spec.homepage      = "https://github.com/byteg/randomapi-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency('faraday', ['>= 0.7', '< 0.10'])
  spec.add_runtime_dependency('faraday_middleware', ['>= 0.8', '< 0.10'])
  spec.add_runtime_dependency('multi_json', '>= 1.0.3', '~> 1.0')
  spec.add_runtime_dependency('hashie',  '>= 0.4.0')
end
