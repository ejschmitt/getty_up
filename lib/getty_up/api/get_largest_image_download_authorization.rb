require 'getty_up/api/util'

module GettyUp
  module API
    module GetLargestImageDownloadAuthorization
      include GettyUp::API::Util

      ENDPOINT = "http://connect.gettyimages.com/v1/download/GetLargestImageDownloadAuthorizations"


      def get_largest_image_download_authorization(token ,image_id)
        request = {
          :RequestHeader => {
            :Token => token,
            :CoordinationId => "MyUniqueId"
          },
          :GetLargestImageDownloadAuthorizationsRequestBody =>
          { :Images =>
            [{
              :ImageId => image_id
            }]
          }
        }

        response = post_json(request, ENDPOINT)
      end

    end
  end
end
