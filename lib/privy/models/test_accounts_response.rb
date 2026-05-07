# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Apps#get_test_credentials
    class TestAccountsResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Privy::Models::TestAccount>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::TestAccount] }

      # @!method initialize(data:)
      #   Response for listing test accounts for an app.
      #
      #   @param data [Array<Privy::Models::TestAccount>]
    end
  end
end
