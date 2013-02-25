require 'getty_up/configurable'
require 'getty_up/client'
require 'getty_up/api/util'
require 'getty_up/api/search_for_images'
require 'getty_up/api/create_session'
require 'getty_up/api/renew_session'

module GettyUp
  class << self
    include GettyUp::Configurable
    def client
      @client = GettyUp::Client.new(options) unless defined?(@client) && @client.hash == options.hash
    end
  end
end
