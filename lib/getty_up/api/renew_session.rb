require 'getty_up/api/util'

module GettyUp
  module API
    module RenewSession
      include GettyUp::API::Util

      ENDPOINT = "https://connect.gettyimages.com/v1/session/RenewSession"

      def renew_session
        request = {
          :RequestHeader =>
          {
            :Token => @token
          },
          :RenewSessionRequestBody =>
          {
            :SystemId => @system_id,
            :SystemPassword => @system_password
          }
        }
        response = post_json(request)

        #status = response["ResponseHeader"]["Status"]
        #token = response["RenewSessionResult"]["Token"]
        #secure_token = response["RenewSessionResult"]["SecureToken"]
      end

    end
  end
end
