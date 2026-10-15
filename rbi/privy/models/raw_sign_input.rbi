# typed: strong

module Privy
  module Models
    class RawSignInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::RawSignInput, Privy::Internal::AnyHash) }

      # Parameters for the `raw_sign` RPC.
      sig { returns(Privy::RawSignInputParams::Variants) }
      attr_accessor :params

      # Provide either `hash` (to sign a pre-computed hash) OR `bytes`, `encoding`, and
      # `hash_function` (to hash and then sign). These options are mutually exclusive.
      sig do
        params(
          params:
            T.any(
              Privy::RawSignHashParams::OrHash,
              Privy::RawSignBytesParams::OrHash
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # Parameters for the `raw_sign` RPC.
        params:
      )
      end

      sig { override.returns({ params: Privy::RawSignInputParams::Variants }) }
      def to_hash
      end
    end
  end
end
