# frozen_string_literal: true

module Privy
  module Models
    # Encoding scheme for bytes in the `raw_sign` RPC.
    module RawSignBytesEncoding
      extend Privy::Internal::Type::Enum

      UTF_8 = :"utf-8"
      HEX = :hex
      BASE64 = :base64

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
