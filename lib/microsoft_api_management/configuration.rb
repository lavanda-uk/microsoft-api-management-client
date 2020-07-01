# frozen_string_literal: true

module MicrosoftApiManagement
  class MissingConfiguration < StandardError; end

  class Configuration # :nodoc:
    attr_writer :subscription_id

    def subscription_id
      @subscription_id || (raise MissingConfiguration, 'Subscription key must be set')
    end
  end
end
