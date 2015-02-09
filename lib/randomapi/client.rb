module RandomApi
  class Client < API

    def request(options = {})
      get("", options)
    end

  end
end