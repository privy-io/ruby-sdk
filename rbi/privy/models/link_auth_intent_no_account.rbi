# typed: strong

module Privy
  module Models
    class LinkAuthIntentNoAccount < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkAuthIntentNoAccount, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::LinkAuthIntentNoAccount::Status::OrSymbol) }
      attr_accessor :status

      # No Link account for this email. Call registerLinkUser() then retry.
      sig do
        params(
          status: Privy::LinkAuthIntentNoAccount::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(status:)
      end

      sig do
        override.returns(
          { status: Privy::LinkAuthIntentNoAccount::Status::OrSymbol }
        )
      end
      def to_hash
      end

      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::LinkAuthIntentNoAccount::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        NO_ACCOUNT =
          T.let(
            :no_account,
            Privy::LinkAuthIntentNoAccount::Status::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::LinkAuthIntentNoAccount::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
