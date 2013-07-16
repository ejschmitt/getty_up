require 'getty_up/configurable'
require 'getty_up/api/create_session'
require 'getty_up/api/search_for_images'
require 'getty_up/api/renew_session'
require 'getty_up/api/get_largest_image_download_authorization'
require 'getty_up/api/create_download_request'
require 'getty_up/api/get_image_details'

module GettyUp
  class Client
    include GettyUp::Configurable
    include GettyUp::API::CreateSession
    include GettyUp::API::SearchForImages
    include GettyUp::API::RenewSession
    include GettyUp::API::GetLargestImageDownloadAuthorization
    include GettyUp::API::CreateDownloadRequest
    include GettyUp::API::GetImageDetails

    def initialize(options={})
      GettyUp::Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", options[key] || GettyUp.instance_variable_get(:"@#{key}"))
      end
    end
  end
end
