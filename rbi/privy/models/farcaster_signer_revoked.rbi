# typed: strong

module Privy
  module Models
    class FarcasterSignerRevoked < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::FarcasterSignerRevoked, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :fid

      sig { returns(String) }
      attr_accessor :public_key

      sig { returns(Privy::FarcasterSignerRevoked::Status::OrSymbol) }
      attr_accessor :status

      # A Farcaster signer response when the signer has been revoked.
      sig do
        params(
          fid: String,
          public_key: String,
          status: Privy::FarcasterSignerRevoked::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(fid:, public_key:, status:)
      end

      sig do
        override.returns(
          {
            fid: String,
            public_key: String,
            status: Privy::FarcasterSignerRevoked::Status::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::FarcasterSignerRevoked::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REVOKED =
          T.let(:revoked, Privy::FarcasterSignerRevoked::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::FarcasterSignerRevoked::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
