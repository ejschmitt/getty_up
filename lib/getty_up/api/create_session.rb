require 'getty_up/api/util'

module GettyUp
  module API
    module CreateSession
      include GettyUp::API::Util

      ENDPOINT = "https://connect.gettyimages.com/v1/session/CreateSession"

      def create_session
        request = {
          :RequestHeader => {},
          :CreateSessionRequestBody =>
          {
            :SystemId => @system_id,
            :SystemPassword => @system_password,
            :UserName => @api_username,
            :UserPassword => @api_password
          }
        }

        response = post_json(request, ENDPOINT)

        @token = response["CreateSessionResult"]["Token"]
        @status = response["ResponseHeader"]["Status"]
        @secure_token = response["CreateSessionResult"]["SecureToken"]
        @token_duration = response["CreateSessionResult"]["TokenDurationMinutes"]
        @token_expiration = @token_duration.minutes.from_now
      end

      def session_valid?
        @token_expiration.present? && @token_expiration > Time.now
      end

    end
  end
end
