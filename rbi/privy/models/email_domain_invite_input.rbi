# typed: strong

module Privy
  module Models
    class EmailDomainInviteInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EmailDomainInviteInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::EmailDomainInviteInput::Type::OrSymbol) }
      attr_accessor :type

      # An email domain.
      sig { returns(String) }
      attr_accessor :value

      # Allowlist invite input for an email domain.
      sig do
        params(
          type: Privy::EmailDomainInviteInput::Type::OrSymbol,
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
          { type: Privy::EmailDomainInviteInput::Type::OrSymbol, value: String }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::EmailDomainInviteInput::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL_DOMAIN =
          T.let(:emailDomain, Privy::EmailDomainInviteInput::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::EmailDomainInviteInput::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
