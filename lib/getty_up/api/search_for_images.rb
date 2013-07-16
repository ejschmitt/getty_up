require 'getty_up/api/util'

class Response < OpenStruct

end

module GettyUp
  module API
    module SearchForImages
      include GettyUp::API::Util

      ENDPOINT = "http://connect.gettyimages.com/v1/search/SearchForImages"

      def search_for_images(phrase, start = 1, count = 25, options = {})
        request = {
          :RequestHeader => { :Token => @token},
          :SearchForImages2RequestBody => {
            :Query => { :SearchPhrase => phrase},
            :ResultOptions => {
              ItemStartNumber: start,
              ItemCount: count
            }
          }.merge(options)
        }
        response = post_json(request, ENDPOINT)

        result = OpenStruct.new
        result.response_header = response["ResponseHeader"]#.inject({}){|memo, hsh| memo.merge({hsh.first.underscore.to_sym => hsh.last})}
        result.images = response["SearchForImagesResult"]["Images"]
        result

      end
    end
  end
end
