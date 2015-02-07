require "randomapi/version"

require File.expand_path('../randomapi/configuration', __FILE__)
require File.expand_path('../randomapi/api', __FILE__)
require File.expand_path('../randomapi/client', __FILE__)

module RandomApi
  extend Configuration

  def self.client(options={})
    RandomApi::Client.new(options)
  end
end
