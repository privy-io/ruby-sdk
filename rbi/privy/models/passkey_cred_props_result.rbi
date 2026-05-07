# typed: strong

module Privy
  module Models
    class PasskeyCredPropsResult < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PasskeyCredPropsResult, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :rk

      sig { params(rk: T::Boolean).void }
      attr_writer :rk

      # The result of the WebAuthn credProps extension.
      sig { params(rk: T::Boolean).returns(T.attached_class) }
      def self.new(rk: nil)
      end

      sig { override.returns({ rk: T::Boolean }) }
      def to_hash
      end
    end
  end
end
