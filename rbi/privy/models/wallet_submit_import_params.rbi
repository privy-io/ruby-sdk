# typed: strong

module Privy
  module Models
    class WalletSubmitImportParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::WalletSubmitImportParams, Privy::Internal::AnyHash)
        end

      # The submission input for importing an HD wallet.
      sig { returns(T.any(Privy::HDSubmitInput, Privy::PrivateKeySubmitInput)) }
      attr_accessor :wallet

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

      sig do
        params(
          wallet:
            T.any(
              Privy::HDSubmitInput::OrHash,
              Privy::PrivateKeySubmitInput::OrHash
            ),
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
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The submission input for importing an HD wallet.
        wallet:,
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
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            wallet: T.any(Privy::HDSubmitInput, Privy::PrivateKeySubmitInput),
            additional_signers: T::Array[Privy::AdditionalSignerItemInput],
            display_name: String,
            external_id: String,
            owner:
              T.nilable(
                T.any(Privy::OwnerInputUser, Privy::OwnerInputPublicKey)
              ),
            owner_id: T.nilable(String),
            policy_ids: T::Array[String],
            request_options: Privy::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The submission input for importing an HD wallet.
      module Wallet
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(Privy::HDSubmitInput, Privy::PrivateKeySubmitInput)
          end

        sig do
          override.returns(
            T::Array[Privy::WalletSubmitImportParams::Wallet::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
