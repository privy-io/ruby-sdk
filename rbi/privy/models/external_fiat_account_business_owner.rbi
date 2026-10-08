# typed: strong

module Privy
  module Models
    class ExternalFiatAccountBusinessOwner < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::ExternalFiatAccountBusinessOwner,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :business_name

      sig { returns(Privy::ExternalFiatAccountBusinessOwner::Type::OrSymbol) }
      attr_accessor :type

      # A business that owns an external fiat account.
      sig do
        params(
          business_name: String,
          type: Privy::ExternalFiatAccountBusinessOwner::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(business_name:, type:)
      end

      sig do
        override.returns(
          {
            business_name: String,
            type: Privy::ExternalFiatAccountBusinessOwner::Type::OrSymbol
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::ExternalFiatAccountBusinessOwner::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        BUSINESS =
          T.let(
            :business,
            Privy::ExternalFiatAccountBusinessOwner::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::ExternalFiatAccountBusinessOwner::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
