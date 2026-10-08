# typed: strong

module Privy
  module Models
    class ExternalFiatAccountIndividualOwner < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::ExternalFiatAccountIndividualOwner,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :first_name

      sig { returns(String) }
      attr_accessor :last_name

      sig { returns(Privy::ExternalFiatAccountIndividualOwner::Type::OrSymbol) }
      attr_accessor :type

      # An individual who owns an external fiat account.
      sig do
        params(
          first_name: String,
          last_name: String,
          type: Privy::ExternalFiatAccountIndividualOwner::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(first_name:, last_name:, type:)
      end

      sig do
        override.returns(
          {
            first_name: String,
            last_name: String,
            type: Privy::ExternalFiatAccountIndividualOwner::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::ExternalFiatAccountIndividualOwner::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        INDIVIDUAL =
          T.let(
            :individual,
            Privy::ExternalFiatAccountIndividualOwner::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::ExternalFiatAccountIndividualOwner::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
