# typed: strong

module Privy
  module Models
    class PhoneInviteInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PhoneInviteInput, Privy::Internal::AnyHash)
        end

      sig { returns(Privy::PhoneInviteInput::Type::OrSymbol) }
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :value

      # Allowlist invite input for a phone number.
      sig do
        params(
          type: Privy::PhoneInviteInput::Type::OrSymbol,
          value: String
        ).returns(T.attached_class)
      end
      def self.new(type:, value:)
      end

      sig do
        override.returns(
          { type: Privy::PhoneInviteInput::Type::OrSymbol, value: String }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::PhoneInviteInput::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PHONE = T.let(:phone, Privy::PhoneInviteInput::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::PhoneInviteInput::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
