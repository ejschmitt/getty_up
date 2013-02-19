require 'getty_up/configurable'
module GettyUp
  class << self
    include GettyUp::Configurable
    def client
      @client = Twitter::Client.new(options) unless defined?(@client) && @client.hash == options.hash
    end
  end
end
