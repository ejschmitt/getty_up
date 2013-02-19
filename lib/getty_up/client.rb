require 'getty_up/api/create_session.rb'

module GettyUp
  class Client
    include GettyUp::API::CreateSession

    def initialize(options={})
      GettyUp::Configurable.keys.each do |key|
        instance_variable_set(:"@#{key}", options[key] || GettyUp.instance_variable_get(:"@#{key}"))
      end
    end
  end
end
