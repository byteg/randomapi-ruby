module RandomApi
  class Client < API
    Dir[File.expand_path('../client/*.rb', __FILE__)].each{|f| require f}
    include RandomApi::Client::User

  end
end