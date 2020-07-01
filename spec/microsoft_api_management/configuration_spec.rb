# frozen_string_literal: true

require 'microsoft_api_management/configuration'

module MicrosoftApiManagement
  RSpec.describe Configuration do
    it 'allows the subscription id to be written into configuration' do
      aggregate_failures do
        subject.subscription_id = 'something'
        expect(subject.subscription_id).to eq('something')
      end
    end

    context 'when the subscription id has not been configured' do
      it 'raises an exception' do
        expect { subject.subscription_id }.to raise_error(
          MissingConfiguration,
          'Subscription key must be set'
        )
      end
    end
  end
end
