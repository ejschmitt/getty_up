module GettyUp
  module Configurable
    attr_writer :system_id, :system_password, :api_username, :api_password
    attr_accessor :status, :token, :secret_token

    class << self
      def keys
        @keys ||= [
          :system_id,
          :system_password,
          :api_username,
          :api_password,
          :status,
          :token,
          :secret_token
        ]
      end
    end

    def configure
      yield self
      self
    end

    def credentials
      {
        system_id: @system_id,
        system_password: @system_password,
        api_username: @api_username,
        api_password: @api_password
      }
    end

  end
end
