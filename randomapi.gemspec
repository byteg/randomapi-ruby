# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "randomapi/version"

Gem::Specification.new do |spec|
  spec.name          = "randomapi"
  spec.version       = RandomApi::VERSION
  spec.authors       = ["Denis Kuznetsov"]
  spec.email         = ["denis@f7.ru"]

  spec.license       = "MIT"

  spec.summary       = "Gets data from randomapi.com"
  spec.description   = "Client library for randomapi.com API"
  spec.homepage      = "https://github.com/byteg/randomapi-ruby"

  spec.metadata = {
    "homepage_uri" => "https://github.com/byteg/randomapi-ruby",
    "source_code_uri" => "https://github.com/byteg/randomapi-ruby",
    "bug_tracker_uri" => "https://github.com/byteg/randomapi-ruby/issues"
  }

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 3.2.0"

  spec.add_runtime_dependency "faraday", ["~> 2.13", ">= 2.13.0"]
end
