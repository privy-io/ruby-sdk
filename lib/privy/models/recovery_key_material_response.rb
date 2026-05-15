# frozen_string_literal: true

module Privy
  module Models
    class RecoveryKeyMaterialResponse < Privy::Internal::Type::BaseModel
      # @!attribute file_id
      #
      #   @return [String]
      required :file_id, String

      # @!attribute icloud_record_name
      #
      #   @return [String]
      required :icloud_record_name, String

      # @!attribute recovery_code
      #
      #   @return [String]
      required :recovery_code, String

      # @!attribute recovery_key
      #
      #   @return [String]
      required :recovery_key, String

      # @!attribute recovery_key_derivation_salt
      #
      #   @return [String]
      required :recovery_key_derivation_salt, String

      # @!attribute recovery_type
      #   The type of recovery mechanism used for wallet recovery.
      #
      #   @return [Symbol, Privy::Models::RecoveryType]
      required :recovery_type, enum: -> { Privy::RecoveryType }

      # @!method initialize(file_id:, icloud_record_name:, recovery_code:, recovery_key:, recovery_key_derivation_salt:, recovery_type:)
      #   The response containing the recovery key material.
      #
      #   @param file_id [String]
      #
      #   @param icloud_record_name [String]
      #
      #   @param recovery_code [String]
      #
      #   @param recovery_key [String]
      #
      #   @param recovery_key_derivation_salt [String]
      #
      #   @param recovery_type [Symbol, Privy::Models::RecoveryType] The type of recovery mechanism used for wallet recovery.
    end
  end
end
