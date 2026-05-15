# typed: strong

module Privy
  module Models
    class FarcasterSignerStatusPendingApproval < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::FarcasterSignerStatusPendingApproval,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :public_key

      sig do
        returns(Privy::FarcasterSignerStatusPendingApproval::Status::OrSymbol)
      end
      attr_accessor :status

      # A Farcaster signer status response when the signer is pending approval.
      sig do
        params(
          public_key: String,
          status: Privy::FarcasterSignerStatusPendingApproval::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(public_key:, status:)
      end

      sig do
        override.returns(
          {
            public_key: String,
            status:
              Privy::FarcasterSignerStatusPendingApproval::Status::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::FarcasterSignerStatusPendingApproval::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING_APPROVAL =
          T.let(
            :pending_approval,
            Privy::FarcasterSignerStatusPendingApproval::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::FarcasterSignerStatusPendingApproval::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
