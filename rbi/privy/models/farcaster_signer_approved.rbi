# typed: strong

module Privy
  module Models
    class FarcasterSignerApproved < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::FarcasterSignerApproved, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :fid

      sig { returns(String) }
      attr_accessor :public_key

      sig { returns(Privy::FarcasterSignerApproved::Status::OrSymbol) }
      attr_accessor :status

      # A Farcaster signer response when the signer has been approved.
      sig do
        params(
          fid: String,
          public_key: String,
          status: Privy::FarcasterSignerApproved::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(fid:, public_key:, status:)
      end

      sig do
        override.returns(
          {
            fid: String,
            public_key: String,
            status: Privy::FarcasterSignerApproved::Status::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::FarcasterSignerApproved::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APPROVED =
          T.let(:approved, Privy::FarcasterSignerApproved::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::FarcasterSignerApproved::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
