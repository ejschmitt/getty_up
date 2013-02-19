require 'getty_up/api/util'

module GettyUp
  module API
    module GetImageDetails
      include GettyUp::API::Util

      ENDPOINT = "https://connect.gettyimages.com/v1/search/GetImageDetails"

      def get_image_details(assetIds)

        request = {
          :RequestHeader => {
            :Token => @token,
            :CoordinationId => "MyUniqueId"
          },
          :GetImageDetailsRequestBody => {
            :CountryCode => "USA",
            :ImageIds => assetIds,
            :Language => "en-us"
          }
        }

        response = post_json(request, ENDPOINT)

        # status = response["ResponseHeader"]["Status"]
        # images = response["GetImageDetailsResult"]["Images"]
      end

    end
  end
end
