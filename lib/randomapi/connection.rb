require 'faraday_middleware'
Dir[File.expand_path('../../faraday/*.rb', __FILE__)].each{|f| require f}

module RandomApi
  module Connection
    private

    def connection(raw=false)
      options = {
        :headers => {
                     'Accept' => "application/#{format}",
                     'User-Agent' => user_agent
                     },
        :proxy => proxy,
        :url => endpoint,
      }.merge(connection_options)

      Faraday::Connection.new(options) do |connection|
        connection.use Faraday::Request::UrlEncoded
        connection.use Faraday::Response::Logger
        connection.use FaradayMiddleware::Mashify unless raw
        connection.ssl[:version] = :SSLv3
        unless raw
          case format.to_s.downcase
          when 'json' then connection.use Faraday::Response::ParseJson
          end
        end
        connection.adapter(adapter)
      end
    end
  end
end