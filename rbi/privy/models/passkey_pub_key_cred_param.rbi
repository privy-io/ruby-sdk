# typed: strong

module Privy
  module Models
    class PasskeyPubKeyCredParam < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::PasskeyPubKeyCredParam, Privy::Internal::AnyHash)
        end

      sig { returns(Float) }
      attr_accessor :alg

      sig { returns(Privy::PasskeyPubKeyCredParam::Type::OrSymbol) }
      attr_accessor :type

      # A public key credential parameter specifying the algorithm and credential type.
      sig do
        params(
          alg: Float,
          type: Privy::PasskeyPubKeyCredParam::Type::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(alg:, type:)
      end

      sig do
        override.returns(
          { alg: Float, type: Privy::PasskeyPubKeyCredParam::Type::OrSymbol }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::PasskeyPubKeyCredParam::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PUBLIC_KEY =
          T.let(
            :"public-key",
            Privy::PasskeyPubKeyCredParam::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::PasskeyPubKeyCredParam::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
