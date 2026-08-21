# typed: strong

module Privy
  module Models
    class CardIssuingBankAgreement < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CardIssuingBankAgreement, Privy::Internal::AnyHash)
        end

      # Stable identifier for this agreement, e.g. "cardholder_agreement". Match on this
      # rather than on `name`, which is display copy and can be reworded.
      sig { returns(String) }
      attr_accessor :id

      # Display name, e.g. "Cardholder Agreement".
      sig { returns(String) }
      attr_accessor :name

      # Link to the agreement. Empty when the document has not been published yet.
      sig do
        returns(T.any(String, Privy::CardIssuingBankAgreement::URL::OrSymbol))
      end
      attr_accessor :url

      # A single agreement the user must accept for the issuing bank.
      sig do
        params(
          id: String,
          name: String,
          url: T.any(String, Privy::CardIssuingBankAgreement::URL::OrSymbol)
        ).returns(T.attached_class)
      end
      def self.new(
        # Stable identifier for this agreement, e.g. "cardholder_agreement". Match on this
        # rather than on `name`, which is display copy and can be reworded.
        id:,
        # Display name, e.g. "Cardholder Agreement".
        name:,
        # Link to the agreement. Empty when the document has not been published yet.
        url:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            name: String,
            url: T.any(String, Privy::CardIssuingBankAgreement::URL::OrSymbol)
          }
        )
      end
      def to_hash
      end

      # Link to the agreement. Empty when the document has not been published yet.
      module URL
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(String, Privy::CardIssuingBankAgreement::URL::TaggedSymbol)
          end

        sig do
          override.returns(
            T::Array[Privy::CardIssuingBankAgreement::URL::Variants]
          )
        end
        def self.variants
        end

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::CardIssuingBankAgreement::URL) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMPTY = T.let(:"", Privy::CardIssuingBankAgreement::URL::TaggedSymbol)
      end
    end
  end
end
