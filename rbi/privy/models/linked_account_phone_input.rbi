# typed: strong

module Privy
  module Models
    class LinkedAccountPhoneInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountPhoneInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :number

      sig { returns(Symbol) }
      attr_accessor :type

      # The payload for importing a phone account.
      sig { params(number: String, type: Symbol).returns(T.attached_class) }
      def self.new(number:, type: :phone)
      end

      sig { override.returns({ number: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
