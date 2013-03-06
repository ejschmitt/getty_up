GettyUp!
========

Example
-------

```ruby
getty = GettyUp::Client.new
getty.create_session
results = getty.search_for_images('tree', 1)
```

Usage
-----

Create an initializer (or pass the settings into Client.new):

```ruby
GettyUp.configure do |config|
  config.system_id = 'xxx'   
  config.system_password = 'xxx'
  config.api_username = 'xxx'
  config.api_password = 'xxx'
end
```

Use the available methods to interact with the API, methods currently available are:

```
create_download_request
create_session
get_image_details
get_largest_image_download_authorization
renew_session
search_for_images
```

Acknowledgment
--------------

This gem is inspired by the twitter gem and the example code provided by Getty.

This gem could use plenty of changes/updates - feel free to contribute.

