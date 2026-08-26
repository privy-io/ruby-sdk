# typed: strong

module Privy
  module Models
    class CreateCryptoDepositAccountWithConfigRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CreateCryptoDepositAccountWithConfigRequestBody,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :deposit_config_id

      # Creates a crypto deposit account from an existing deposit configuration.
      sig { params(deposit_config_id: String).returns(T.attached_class) }
      def self.new(deposit_config_id:)
      end

      sig { override.returns({ deposit_config_id: String }) }
      def to_hash
      end
    end
  end
end
