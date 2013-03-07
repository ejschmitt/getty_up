module GettyUp
  module API
    module Util
      def post_json(request, endpoint, debug = false)
        if debug
          puts  '--- Request to Getty --'
          puts  request
        end

        #You may wish to replace this code with your preferred library for posting and receiving JSON data.
        uri = URI.parse(endpoint)
        http = Net::HTTP.new(uri.host, 443)
        http.use_ssl = true

        response = http.post(uri.path, request.to_json, {'Content-Type' =>'application/json'}).body
        if debug
          puts  '--- Response from Getty --'
          puts  response
        end
        JSON.parse(response)
      end

    end
  end
end
