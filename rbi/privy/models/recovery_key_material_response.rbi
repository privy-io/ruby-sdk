# typed: strong

module Privy
  module Models
    class RecoveryKeyMaterialResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::RecoveryKeyMaterialResponse, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :file_id

      sig { returns(String) }
      attr_accessor :icloud_record_name

      sig { returns(String) }
      attr_accessor :recovery_code

      sig { returns(String) }
      attr_accessor :recovery_key

      sig { returns(String) }
      attr_accessor :recovery_key_derivation_salt

      # The type of recovery mechanism used for wallet recovery.
      sig { returns(Privy::RecoveryType::OrSymbol) }
      attr_accessor :recovery_type

      # The response containing the recovery key material.
      sig do
        params(
          file_id: String,
          icloud_record_name: String,
          recovery_code: String,
          recovery_key: String,
          recovery_key_derivation_salt: String,
          recovery_type: Privy::RecoveryType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        file_id:,
        icloud_record_name:,
        recovery_code:,
        recovery_key:,
        recovery_key_derivation_salt:,
        # The type of recovery mechanism used for wallet recovery.
        recovery_type:
      )
      end

      sig do
        override.returns(
          {
            file_id: String,
            icloud_record_name: String,
            recovery_code: String,
            recovery_key: String,
            recovery_key_derivation_salt: String,
            recovery_type: Privy::RecoveryType::OrSymbol
          }
        )
      end
      def to_hash
      end
    end
  end
end
