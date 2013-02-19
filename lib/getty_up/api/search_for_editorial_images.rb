require 'getty_up/api/util'

module GettyUp
  module API
    module SearchForEditorialImages
      include GettyUp::API::Util

      ENDPOINT = "http://connect.gettyimages.com/v1/search/SearchForImages"

      def search_for_images(phrase)
        request = {
          :RequestHeader => { :Token => @token},
          :SearchForImages2RequestBody => {
            :Query => { :SearchPhrase => phrase},
            :ResultOptions => {
              :ItemCount => 25,
              :ItemStartNumber => 1
            },
            :Filter => { :ImageFamilies => ["editorial"] }
          }
        }
        response = post_json(request, ENDPOINT)

        #status = response["ResponseHeader"]["Status"]
        #images = response["SearchForImagesResult"]["Images"]
      end

    end
  end
end
