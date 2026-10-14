# typed: strong

module Privy
  module Models
    class DenylistEmailDomainInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::DenylistEmailDomainInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::DenylistEmailDomainInput::Type::OrSymbol) }
      attr_accessor :type

      # An email domain.
      sig { returns(String) }
      attr_accessor :value

      # Denylist input for an email domain, which blocks every email address on the
      # domain.
      sig do
        params(
          type: Privy::DenylistEmailDomainInput::Type::OrSymbol,
          value: String
        ).returns(T.attached_class)
      end
      def self.new(
        type:,
        # An email domain.
        value:
      )
      end

      sig do
        override.returns(
          {
            type: Privy::DenylistEmailDomainInput::Type::OrSymbol,
            value: String
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::DenylistEmailDomainInput::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL_DOMAIN =
          T.let(
            :emailDomain,
            Privy::DenylistEmailDomainInput::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::DenylistEmailDomainInput::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
