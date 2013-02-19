module GettyUp
  module API
    module CreateSession
      include GettyUp::API::Util

      ENDPOINT = "https://connect.gettyimages.com/v1/session/CreateSession"

      def create_session
        request = {
          :RequestHeader =>
          {

          },
          :CreateSessionRequestBody =>
          {
            :SystemId => @system_id,
            :SystemPassword => @system_pwd,
            :UserName => @user_name,
            :UserPassword => @user_pwd
          }
        }

        response = post_json(request)

        #status = response["ResponseHeader"]["Status"]
        #token = response["CreateSessionResult"]["Token"]
        #secure_token = response["CreateSessionResult"]["SecureToken"]
      end

    end
  end
end
