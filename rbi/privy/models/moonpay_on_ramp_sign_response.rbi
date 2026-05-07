# typed: strong

module Privy
  module Models
    class MoonpayOnRampSignResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::MoonpayOnRampSignResponse, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :external_transaction_id

      sig { returns(String) }
      attr_accessor :signed_url

      # The response from signing a Moonpay on-ramp.
      sig do
        params(external_transaction_id: String, signed_url: String).returns(
          T.attached_class
        )
      end
      def self.new(external_transaction_id:, signed_url:)
      end

      sig do
        override.returns(
          { external_transaction_id: String, signed_url: String }
        )
      end
      def to_hash
      end
    end
  end
end
