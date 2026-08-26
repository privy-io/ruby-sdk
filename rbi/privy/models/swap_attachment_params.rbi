# typed: strong

module Privy
  module Models
    class SwapAttachmentParams < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::SwapAttachmentParams, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :destination_address

      # Per-attachment parameters for swap automations.
      sig { params(destination_address: String).returns(T.attached_class) }
      def self.new(destination_address:)
      end

      sig { override.returns({ destination_address: String }) }
      def to_hash
      end
    end
  end
end
