# typed: strong

module Privy
  module Models
    class LinkedAccountCustomJwtInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountCustomJwtInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :custom_user_id

      sig { returns(Symbol) }
      attr_accessor :type

      # The payload for importing a Custom JWT account.
      sig do
        params(custom_user_id: String, type: Symbol).returns(T.attached_class)
      end
      def self.new(custom_user_id:, type: :custom_auth)
      end

      sig { override.returns({ custom_user_id: String, type: Symbol }) }
      def to_hash
      end
    end
  end
end
