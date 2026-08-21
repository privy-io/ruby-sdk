# typed: strong

module Privy
  module Models
    class CardIssuingBankInfo < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CardIssuingBankInfo, Privy::Internal::AnyHash)
        end

      # Agreements the user must accept for this bank, in the order they should be
      # presented. Render every entry — the set and size vary by bank.
      sig { returns(T::Array[Privy::CardIssuingBankAgreement]) }
      attr_accessor :agreements

      # Display name of the issuing bank, e.g. "Lead Bank".
      sig { returns(String) }
      attr_accessor :name

      # The bank issuing the card and the agreements the user must accept for it. Served
      # from the backend so the agreements can change without an SDK release, and so
      # swapping banks does not require a client change.
      sig do
        params(
          agreements: T::Array[Privy::CardIssuingBankAgreement::OrHash],
          name: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Agreements the user must accept for this bank, in the order they should be
        # presented. Render every entry — the set and size vary by bank.
        agreements:,
        # Display name of the issuing bank, e.g. "Lead Bank".
        name:
      )
      end

      sig do
        override.returns(
          {
            agreements: T::Array[Privy::CardIssuingBankAgreement],
            name: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
