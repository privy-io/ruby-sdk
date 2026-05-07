# typed: strong

module Privy
  module Models
    class EmailInviteInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::EmailInviteInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::EmailInviteInput::Type::OrSymbol) }
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :value

      # Allowlist invite input for an email address.
      sig do
        params(
          type: Privy::EmailInviteInput::Type::OrSymbol,
          value: String
        ).returns(T.attached_class)
      end
      def self.new(type:, value:)
      end

      sig do
        override.returns(
          { type: Privy::EmailInviteInput::Type::OrSymbol, value: String }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::EmailInviteInput::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMAIL = T.let(:email, Privy::EmailInviteInput::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::EmailInviteInput::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
