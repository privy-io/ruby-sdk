# typed: strong

module Privy
  module Models
    class FarcasterUnlinkInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::FarcasterUnlinkInput, Privy::Internal::AnyHash)
        end

      sig { returns(Float) }
      attr_accessor :fid

      # Input for unlinking a Farcaster account.
      sig { params(fid: Float).returns(T.attached_class) }
      def self.new(fid:)
      end

      sig { override.returns({ fid: Float }) }
      def to_hash
      end
    end
  end
end
