# typed: strong

module Privy
  module Models
    class OnrampKYCResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OnrampKYCResponse, Privy::Internal::AnyHash)
        end

      # Status of the KYC verification process.
      sig { returns(Privy::OnrampKYCStatus::OrSymbol) }
      attr_accessor :status

      sig { returns(String) }
      attr_accessor :user_id

      sig { returns(T.nilable(String)) }
      attr_reader :provider_user_id

      sig { params(provider_user_id: String).void }
      attr_writer :provider_user_id

      # Response for an onramp KYC verification.
      sig do
        params(
          status: Privy::OnrampKYCStatus::OrSymbol,
          user_id: String,
          provider_user_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Status of the KYC verification process.
        status:,
        user_id:,
        provider_user_id: nil
      )
      end

      sig do
        override.returns(
          {
            status: Privy::OnrampKYCStatus::OrSymbol,
            user_id: String,
            provider_user_id: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
