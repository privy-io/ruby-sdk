# frozen_string_literal: true

module Privy
  module Models
    class AuthorizationKey < Privy::Internal::Type::BaseModel
      # @!attribute display_name
      #
      #   @return [String, nil]
      required :display_name, String, nil?: true

      # @!attribute public_key
      #
      #   @return [String]
      required :public_key, String

      # @!method initialize(display_name:, public_key:)
      #   A public key authorized to sign on a key quorum.
      #
      #   @param display_name [String, nil]
      #   @param public_key [String]
    end
  end
end
