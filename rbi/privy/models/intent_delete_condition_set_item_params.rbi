# typed: strong

module Privy
  module Models
    class IntentDeleteConditionSetItemParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            Privy::IntentDeleteConditionSetItemParams,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :condition_set_id

      sig { returns(String) }
      attr_accessor :condition_set_item_id

      # Request expiry. Value is a Unix timestamp in milliseconds representing the
      # deadline by which the request must be processed.
      sig { returns(T.nilable(String)) }
      attr_reader :privy_request_expiry

      sig { params(privy_request_expiry: String).void }
      attr_writer :privy_request_expiry

      sig do
        params(
          condition_set_id: String,
          condition_set_item_id: String,
          privy_request_expiry: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        condition_set_id:,
        condition_set_item_id:,
        # Request expiry. Value is a Unix timestamp in milliseconds representing the
        # deadline by which the request must be processed.
        privy_request_expiry: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            condition_set_id: String,
            condition_set_item_id: String,
            privy_request_expiry: String,
            request_options: Privy::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
