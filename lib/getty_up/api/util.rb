module GettyUp
  module API
    module Util
      def post_json(request)
        #You may wish to replace this code with your preferred library for posting and receiving JSON data.
        uri = URI.parse(ENDPOINT)
        http = Net::HTTP.new(uri.host, 443)
        http.use_ssl = true

        response = http.post(uri.path, request.to_json, {'Content-Type' =>'application/json'}).body
        JSON.parse(response)
      end

    end
  end
end
