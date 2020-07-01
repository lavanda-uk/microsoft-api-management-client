# frozen_string_literal: true

require 'microsoft_api_management/configuration'
require 'microsoft_api_management/client'

module MicrosoftApiManagement # :nodoc:
  def self.configure
    yield(configuration)
  end

  def self.configuration
    @configuration ||= Configuration.new
  end
end
