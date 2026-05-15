# typed: strong

module Privy
  module Models
    # Parameters for the `raw_sign` RPC.
    module RawSignInputParams
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(Privy::RawSignHashParams, Privy::RawSignBytesParams)
        end

      sig { override.returns(T::Array[Privy::RawSignInputParams::Variants]) }
      def self.variants
      end
    end
  end
end
