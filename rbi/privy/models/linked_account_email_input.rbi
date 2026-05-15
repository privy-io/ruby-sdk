# typed: strong

module Privy
  module Models
    class LinkedAccountEmailInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountEmailInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      sig { returns(Symbol) }
      attr_accessor :type

      # The payload for importing an email account.
      sig { params(address: String, type: Symbol).returns(T.attached_class) }
      def self.new(address:, type: :email)
      end

      sig { override.returns({ address: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
