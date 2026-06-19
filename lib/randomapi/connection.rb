module RandomApi
  module Connection
    private

    def connection(raw=false)
      Faraday.new(
        url: endpoint,
        headers: {
          "Accept" => "application/#{format}",
          "User-Agent" => user_agent
        },
        proxy: proxy,
        **connection_options
      ) do |conn|
        conn.request :url_encoded
        conn.response :json unless raw
        conn.adapter(adapter)
      end
    end
  end
end