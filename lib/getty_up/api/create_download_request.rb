require 'getty_up/api/util'

module GettyUp
  module API
    module CreateDownloadRequest
      include GettyUp::API::Util

      ENDPOINT = "https://connect.gettyimages.com/v1/download/CreateDownloadRequest"

      def create_download_request(download_token)
        request = {
          :RequestHeader => {
            :Token => @secure_token,
            :CoordinationId => "MyUniqueId"
          },
          :CreateDownloadRequestBody =>
          { :DownloadItems =>
            [{
              :DownloadToken => download_token
            }]
          }
        }
        response = post_json(request, ENDPOINT)
      end
    end
  end
end
