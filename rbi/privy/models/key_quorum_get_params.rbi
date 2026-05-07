# typed: strong

module Privy
  module Models
    class KeyQuorumGetParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::KeyQuorumGetParams, Privy::Internal::AnyHash)
        end

      # A unique identifier for a key quorum.
      sig { returns(String) }
      attr_accessor :key_quorum_id

      sig do
        params(
          key_quorum_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # A unique identifier for a key quorum.
        key_quorum_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { key_quorum_id: String, request_options: Privy::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
