require 'getty_up/api/util'

class Response < OpenStruct

end

module GettyUp
  module API
    module SearchForImages
      include GettyUp::API::Util

      ENDPOINT = "http://connect.gettyimages.com/v1/search/SearchForImages"

      def search_for_images(phrase, start = 1, count = 25)
        request = {
          :RequestHeader => { :Token => @token},
          :SearchForImages2RequestBody => {
            :Query => { :SearchPhrase => phrase},
            :ResultOptions => {
              :ItemCount => count,
              :ItemStartNumber => start
            },
            :Filter => { :ImageFamilies => ["creative"] }
          }
        }
        response = post_json(request, ENDPOINT)

        #status = response["ResponseHeader"]["Status"]
        #images = response["SearchForImagesResult"]["Images"]


        result = OpenStruct.new
        result.response_header = response["ResponseHeader"]#.inject({}){|memo, hsh| memo.merge({hsh.first.underscore.to_sym => hsh.last})}
        result.images = response["SearchForImagesResult"]["Images"]
        result

      end
    end
  end
end
