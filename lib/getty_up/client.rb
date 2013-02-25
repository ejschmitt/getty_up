require 'getty_up/configurable'
require 'getty_up/api/create_session'
require 'getty_up/api/search_for_images'
require 'getty_up/api/renew_session'

module GettyUp
  class Client
    include GettyUp::Configurable
    include GettyUp::API::CreateSession
    include GettyUp::API::SearchForImages
    include GettyUp::API::RenewSession

    def initialize(options={})
      GettyUp::Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", options[key] || GettyUp.instance_variable_get(:"@#{key}"))
      end
    end
  end
end
