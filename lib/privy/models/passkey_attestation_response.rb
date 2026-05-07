# frozen_string_literal: true

module Privy
  module Models
    class PasskeyAttestationResponse < Privy::Internal::Type::BaseModel
      # @!attribute attestation_object
      #
      #   @return [String]
      required :attestation_object, String

      # @!attribute client_data_json
      #
      #   @return [String]
      required :client_data_json, String

      # @!attribute authenticator_data
      #
      #   @return [String, nil]
      optional :authenticator_data, String

      # @!attribute public_key
      #
      #   @return [String, nil]
      optional :public_key, String

      # @!attribute public_key_algorithm
      #
      #   @return [Float, nil]
      optional :public_key_algorithm, Float

      # @!attribute transports
      #
      #   @return [Array<String>, nil]
      optional :transports, Privy::Internal::Type::ArrayOf[String]

      # @!method initialize(attestation_object:, client_data_json:, authenticator_data: nil, public_key: nil, public_key_algorithm: nil, transports: nil)
      #   The authenticator attestation response from a WebAuthn registration ceremony.
      #
      #   @param attestation_object [String]
      #   @param client_data_json [String]
      #   @param authenticator_data [String]
      #   @param public_key [String]
      #   @param public_key_algorithm [Float]
      #   @param transports [Array<String>]
    end
  end
end
