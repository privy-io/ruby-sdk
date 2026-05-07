# typed: strong

module Privy
  module Models
    class TempoFeePayerSignature < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TempoFeePayerSignature, Privy::Internal::AnyHash)
        end

      # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      # bytes).
      sig { returns(String) }
      attr_accessor :r

      # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
      # bytes).
      sig { returns(String) }
      attr_accessor :s

      sig { returns(Privy::TempoFeePayerSignature::YParity::OrFloat) }
      attr_accessor :y_parity

      # A fee payer signature for sponsored Tempo transactions (secp256k1 only).
      sig do
        params(
          r: String,
          s: String,
          y_parity: Privy::TempoFeePayerSignature::YParity::OrFloat
        ).returns(T.attached_class)
      end
      def self.new(
        # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
        # bytes).
        r:,
        # A hex-encoded string prefixed with '0x', capped at 100002 characters (50,000
        # bytes).
        s:,
        y_parity:
      )
      end

      sig do
        override.returns(
          {
            r: String,
            s: String,
            y_parity: Privy::TempoFeePayerSignature::YParity::OrFloat
          }
        )
      end
      def to_hash
      end

      module YParity
        extend Privy::Internal::Type::Enum

        TaggedFloat =
          T.type_alias { T.all(Float, Privy::TempoFeePayerSignature::YParity) }
        OrFloat = T.type_alias { Float }

        Y_PARITY_0 =
          T.let(0, Privy::TempoFeePayerSignature::YParity::TaggedFloat)
        Y_PARITY_1 =
          T.let(1, Privy::TempoFeePayerSignature::YParity::TaggedFloat)

        sig do
          override.returns(
            T::Array[Privy::TempoFeePayerSignature::YParity::TaggedFloat]
          )
        end
        def self.values
        end
      end
    end
  end
end
