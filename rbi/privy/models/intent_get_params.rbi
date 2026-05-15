# typed: strong

module Privy
  module Models
    class IntentGetParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Privy::IntentGetParams, Privy::Internal::AnyHash) }

      # ID of the intent.
      sig { returns(String) }
      attr_accessor :intent_id

      sig do
        params(
          intent_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # ID of the intent.
        intent_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { intent_id: String, request_options: Privy::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
