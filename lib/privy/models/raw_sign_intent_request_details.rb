# frozen_string_literal: true

module Privy
  module Models
    class RawSignIntentRequestDetails < Privy::Internal::Type::BaseModel
      # @!attribute body
      #   Provide either `hash` (to sign a pre-computed hash) OR `bytes`, `encoding`, and
      #   `hash_function` (to hash and then sign). These options are mutually exclusive.
      #
      #   @return [Privy::Models::RawSignInput]
      required :body, -> { Privy::RawSignInput }

      # @!attribute method_
      #
      #   @return [Symbol, Privy::Models::RawSignIntentRequestDetails::Method]
      required :method_, enum: -> { Privy::RawSignIntentRequestDetails::Method }, api_name: :method

      # @!attribute url
      #
      #   @return [String]
      required :url, String

      # @!method initialize(body:, method_:, url:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::RawSignIntentRequestDetails} for more details.
      #
      #   Request details for a raw sign intent.
      #
      #   @param body [Privy::Models::RawSignInput] Provide either `hash` (to sign a pre-computed hash) OR `bytes`, `encoding`, and
      #
      #   @param method_ [Symbol, Privy::Models::RawSignIntentRequestDetails::Method]
      #
      #   @param url [String]

      # @see Privy::Models::RawSignIntentRequestDetails#method_
      module Method
        extend Privy::Internal::Type::Enum

        POST = :POST

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
