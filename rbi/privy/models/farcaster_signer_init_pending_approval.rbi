# typed: strong

module Privy
  module Models
    class FarcasterSignerInitPendingApproval < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::FarcasterSignerInitPendingApproval,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :public_key

      sig { returns(String) }
      attr_accessor :signer_approval_url

      sig do
        returns(Privy::FarcasterSignerInitPendingApproval::Status::OrSymbol)
      end
      attr_accessor :status

      # A Farcaster signer init response when the signer is pending approval.
      sig do
        params(
          public_key: String,
          signer_approval_url: String,
          status: Privy::FarcasterSignerInitPendingApproval::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(public_key:, signer_approval_url:, status:)
      end

      sig do
        override.returns(
          {
            public_key: String,
            signer_approval_url: String,
            status: Privy::FarcasterSignerInitPendingApproval::Status::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::FarcasterSignerInitPendingApproval::Status)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING_APPROVAL =
          T.let(
            :pending_approval,
            Privy::FarcasterSignerInitPendingApproval::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::FarcasterSignerInitPendingApproval::Status::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
