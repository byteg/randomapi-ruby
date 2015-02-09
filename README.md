# randomapi-ruby
API to access data from https://randomapi.com

#Installation
Bundler:
------------
	gem install randomapi
	
#Initialization
If you use only 1 API key & API id, it makes sense to pass them in the initializer:
```ruby
RandomApi.configure do |config|
  config.api_key = "YOUR_API_KEY_HERE"
  config.api_id = "YOUR_API_ID_HERE"
end
```

#Client creation
To make requests you need to create a client:
```ruby
client = RandomApi.client # uses api key & id from initializer
client = RandomApi.client(api_key: "ANOTHER_API_KEY", api_id: "ANOTHER_API_ID") # passes key & id directly
```
  
#Making calls
```ruby
client.request # makes request to API to return 1 result
client.request(results: 5) # give me 5 results!
client.request(results: 5, myvar: 1) # give me 5 results with variable "myvar" set to 1
  ```
## Contributing to randomapi
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make pull request

License
-------
This code is free to use under the terms of the MIT license.

## Copyright
Copyright (c) 2015 Denis Kuznetsov.
