# typed: strong

module Privy
  module Models
    class WalletCreateParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::WalletCreateParams, Privy::Internal::AnyHash)
        end

      # The wallet chain types.
      sig { returns(Privy::WalletChainType::OrSymbol) }
      attr_accessor :chain_type

      # Additional signers for the wallet.
      sig { returns(T.nilable(T::Array[Privy::AdditionalSignerItemInput])) }
      attr_reader :additional_signers

      sig do
        params(
          additional_signers: T::Array[Privy::AdditionalSignerItemInput::OrHash]
        ).void
      end
      attr_writer :additional_signers

      # A human-readable label for the wallet.
      sig { returns(T.nilable(String)) }
      attr_reader :display_name

      sig { params(display_name: String).void }
      attr_writer :display_name

      # A customer-provided identifier for mapping to external systems. URL-safe
      # characters only ([a-zA-Z0-9_-]), max 64 chars. Write-once: cannot be changed
      # after creation.
      sig { returns(T.nilable(String)) }
      attr_reader :external_id

      sig { params(external_id: String).void }
      attr_writer :external_id

      # The owner of the resource, specified as a Privy user ID, a P-256 public key, or
      # null to remove the current owner.
      sig do
        returns(
          T.nilable(T.any(Privy::OwnerInputUser, Privy::OwnerInputPublicKey))
        )
      end
      attr_accessor :owner

      # The key quorum ID to set as the owner of the resource. If you provide this, do
      # not specify an owner.
      sig { returns(T.nilable(String)) }
      attr_accessor :owner_id

      # An optional list of up to one policy ID to enforce on the wallet.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :policy_ids

      sig { params(policy_ids: T::Array[String]).void }
      attr_writer :policy_ids

      # Idempotency keys ensure API requests are executed only once within a 24-hour
      # window.
      sig { returns(T.nilable(String)) }
      attr_reader :privy_idempotency_key

      sig { params(privy_idempotency_key: String).void }
      attr_writer :privy_idempotency_key

      sig do
        params(
          chain_type: Privy::WalletChainType::OrSymbol,
          additional_signers:
            T::Array[Privy::AdditionalSignerItemInput::OrHash],
          display_name: String,
          external_id: String,
          owner:
            T.nilable(
              T.any(
                Privy::OwnerInputUser::OrHash,
                Privy::OwnerInputPublicKey::OrHash
              )
            ),
          owner_id: T.nilable(String),
          policy_ids: T::Array[String],
          privy_idempotency_key: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The wallet chain types.
        chain_type:,
        # Additional signers for the wallet.
        additional_signers: nil,
        # A human-readable label for the wallet.
        display_name: nil,
        # A customer-provided identifier for mapping to external systems. URL-safe
        # characters only ([a-zA-Z0-9_-]), max 64 chars. Write-once: cannot be changed
        # after creation.
        external_id: nil,
        # The owner of the resource, specified as a Privy user ID, a P-256 public key, or
        # null to remove the current owner.
        owner: nil,
        # The key quorum ID to set as the owner of the resource. If you provide this, do
        # not specify an owner.
        owner_id: nil,
        # An optional list of up to one policy ID to enforce on the wallet.
        policy_ids: nil,
        # Idempotency keys ensure API requests are executed only once within a 24-hour
        # window.
        privy_idempotency_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            chain_type: Privy::WalletChainType::OrSymbol,
            additional_signers: T::Array[Privy::AdditionalSignerItemInput],
            display_name: String,
            external_id: String,
            owner:
              T.nilable(
                T.any(Privy::OwnerInputUser, Privy::OwnerInputPublicKey)
              ),
            owner_id: T.nilable(String),
            policy_ids: T::Array[String],
            privy_idempotency_key: String,
            request_options: Privy::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
