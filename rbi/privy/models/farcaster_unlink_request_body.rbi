# typed: strong

module Privy
  module Models
    class FarcasterUnlinkRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::FarcasterUnlinkRequestBody, Privy::Internal::AnyHash)
        end

      sig { returns(Float) }
      attr_accessor :fid

      # The request body for unlinking a Farcaster account.
      sig { params(fid: Float).returns(T.attached_class) }
      def self.new(fid:)
      end

      sig { override.returns({ fid: Float }) }
      def to_hash
      end
    end
  end
end
