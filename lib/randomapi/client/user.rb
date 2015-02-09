module RandomApi
  class Client

    module User

      def random_user(options = {})
        get("", options)
      end

    end

  end
end