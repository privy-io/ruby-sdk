# typed: strong

module Privy
  module Models
    class CardIssuingCustomerConsentsRequestBody < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CardIssuingCustomerConsentsRequestBody,
            Privy::Internal::AnyHash
          )
        end

      # The Privy API environment.
      sig { returns(Privy::Environment::OrSymbol) }
      attr_accessor :environment

      # Set to true when the user accepted the bank agreements. Requires the electronic
      # disclosure to be accepted first, in this request or a previous one.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :accept_bank_terms

      sig { params(accept_bank_terms: T::Boolean).void }
      attr_writer :accept_bank_terms

      # Set to true when the user accepted the electronic disclosure (E-Sign consent).
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :accept_electronic_disclosure

      sig { params(accept_electronic_disclosure: T::Boolean).void }
      attr_writer :accept_electronic_disclosure

      # Request body for recording that the user accepted the agreements Privy tracks.
      # Send one field per screen the user accepted. Acceptances are recorded once —
      # re-sending a field that is already recorded leaves the original timestamp
      # unchanged.
      sig do
        params(
          environment: Privy::Environment::OrSymbol,
          accept_bank_terms: T::Boolean,
          accept_electronic_disclosure: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        # The Privy API environment.
        environment:,
        # Set to true when the user accepted the bank agreements. Requires the electronic
        # disclosure to be accepted first, in this request or a previous one.
        accept_bank_terms: nil,
        # Set to true when the user accepted the electronic disclosure (E-Sign consent).
        accept_electronic_disclosure: nil
      )
      end

      sig do
        override.returns(
          {
            environment: Privy::Environment::OrSymbol,
            accept_bank_terms: T::Boolean,
            accept_electronic_disclosure: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
