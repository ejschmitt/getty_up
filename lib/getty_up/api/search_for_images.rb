module GettyUp
  module API
    module SearchForImages
      ENDPOINT = "http://connect.gettyimages.com/v1/search/SearchForImages"

      def search_for_images(phrase)
        request = {
          :RequestHeader => { :Token => token},
          :SearchForImages2RequestBody => {
            :Query => { :SearchPhrase => phrase},
            :ResultOptions => {
              :ItemCount => 25,
              :ItemStartNumber => 1
            },
            :Filter => { :ImageFamilies => ["creative"] }
          }
        }
        response = post_json(request)

        #status = response["ResponseHeader"]["Status"]
        #images = response["SearchForImagesResult"]["Images"]
      end
    end
  end
end
