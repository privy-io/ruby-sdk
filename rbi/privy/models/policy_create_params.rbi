# typed: strong

module Privy
  module Models
    class PolicyCreateParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::PolicyCreateParams, Privy::Internal::AnyHash)
        end

      # The wallet chain types.
      sig { returns(Privy::WalletChainType::OrSymbol) }
      attr_accessor :chain_type

      # Name to assign to policy.
      sig { returns(String) }
      attr_accessor :name

      sig { returns(T::Array[Privy::PolicyCreateParams::Rule]) }
      attr_accessor :rules

      # Version of the policy. Currently, 1.0 is the only version.
      sig { returns(Privy::PolicyCreateParams::Version::OrSymbol) }
      attr_accessor :version

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

      # Idempotency keys ensure API requests are executed only once within a 24-hour
      # window.
      sig { returns(T.nilable(String)) }
      attr_reader :privy_idempotency_key

      sig { params(privy_idempotency_key: String).void }
      attr_writer :privy_idempotency_key

      sig do
        params(
          chain_type: Privy::WalletChainType::OrSymbol,
          name: String,
          rules: T::Array[Privy::PolicyCreateParams::Rule::OrHash],
          version: Privy::PolicyCreateParams::Version::OrSymbol,
          owner:
            T.nilable(
              T.any(
                Privy::OwnerInputUser::OrHash,
                Privy::OwnerInputPublicKey::OrHash
              )
            ),
          owner_id: T.nilable(String),
          privy_idempotency_key: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The wallet chain types.
        chain_type:,
        # Name to assign to policy.
        name:,
        rules:,
        # Version of the policy. Currently, 1.0 is the only version.
        version:,
        # The owner of the resource, specified as a Privy user ID, a P-256 public key, or
        # null to remove the current owner.
        owner: nil,
        # The key quorum ID to set as the owner of the resource. If you provide this, do
        # not specify an owner.
        owner_id: nil,
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
            name: String,
            rules: T::Array[Privy::PolicyCreateParams::Rule],
            version: Privy::PolicyCreateParams::Version::OrSymbol,
            owner:
              T.nilable(
                T.any(Privy::OwnerInputUser, Privy::OwnerInputPublicKey)
              ),
            owner_id: T.nilable(String),
            privy_idempotency_key: String,
            request_options: Privy::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Rule < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Privy::PolicyCreateParams::Rule, Privy::Internal::AnyHash)
          end

        # The action to take when a policy rule matches.
        sig { returns(Privy::PolicyAction::OrSymbol) }
        attr_accessor :action

        sig do
          returns(
            T::Array[
              T.any(
                Privy::EthereumTransactionCondition,
                Privy::EthereumCalldataCondition,
                Privy::EthereumTypedDataDomainCondition,
                Privy::EthereumTypedDataMessageCondition,
                Privy::Ethereum7702AuthorizationCondition,
                Privy::TempoTransactionCondition,
                Privy::SolanaProgramInstructionCondition,
                Privy::SolanaSystemProgramInstructionCondition,
                Privy::SolanaTokenProgramInstructionCondition,
                Privy::SystemCondition,
                Privy::TronTransactionCondition,
                Privy::TronCalldataCondition,
                Privy::SuiTransactionCommandCondition,
                Privy::SuiTransferObjectsCommandCondition,
                Privy::ActionRequestBodyCondition,
                Privy::AggregationCondition
              )
            ]
          )
        end
        attr_accessor :conditions

        # Method the rule applies to.
        sig { returns(Privy::PolicyMethod::OrSymbol) }
        attr_accessor :method_

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        sig do
          params(
            action: Privy::PolicyAction::OrSymbol,
            conditions:
              T::Array[
                T.any(
                  Privy::EthereumTransactionCondition::OrHash,
                  Privy::EthereumCalldataCondition::OrHash,
                  Privy::EthereumTypedDataDomainCondition::OrHash,
                  Privy::EthereumTypedDataMessageCondition::OrHash,
                  Privy::Ethereum7702AuthorizationCondition::OrHash,
                  Privy::TempoTransactionCondition::OrHash,
                  Privy::SolanaProgramInstructionCondition::OrHash,
                  Privy::SolanaSystemProgramInstructionCondition::OrHash,
                  Privy::SolanaTokenProgramInstructionCondition::OrHash,
                  Privy::SystemCondition::OrHash,
                  Privy::TronTransactionCondition::OrHash,
                  Privy::TronCalldataCondition::OrHash,
                  Privy::SuiTransactionCommandCondition::OrHash,
                  Privy::SuiTransferObjectsCommandCondition::OrHash,
                  Privy::ActionRequestBodyCondition::OrHash,
                  Privy::AggregationCondition::OrHash
                )
              ],
            method_: Privy::PolicyMethod::OrSymbol,
            name: String,
            id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The action to take when a policy rule matches.
          action:,
          conditions:,
          # Method the rule applies to.
          method_:,
          name:,
          id: nil
        )
        end

        sig do
          override.returns(
            {
              action: Privy::PolicyAction::OrSymbol,
              conditions:
                T::Array[
                  T.any(
                    Privy::EthereumTransactionCondition,
                    Privy::EthereumCalldataCondition,
                    Privy::EthereumTypedDataDomainCondition,
                    Privy::EthereumTypedDataMessageCondition,
                    Privy::Ethereum7702AuthorizationCondition,
                    Privy::TempoTransactionCondition,
                    Privy::SolanaProgramInstructionCondition,
                    Privy::SolanaSystemProgramInstructionCondition,
                    Privy::SolanaTokenProgramInstructionCondition,
                    Privy::SystemCondition,
                    Privy::TronTransactionCondition,
                    Privy::TronCalldataCondition,
                    Privy::SuiTransactionCommandCondition,
                    Privy::SuiTransferObjectsCommandCondition,
                    Privy::ActionRequestBodyCondition,
                    Privy::AggregationCondition
                  )
                ],
              method_: Privy::PolicyMethod::OrSymbol,
              name: String,
              id: String
            }
          )
        end
        def to_hash
        end
      end

      # Version of the policy. Currently, 1.0 is the only version.
      module Version
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::PolicyCreateParams::Version) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VERSION_1_0 =
          T.let(:"1.0", Privy::PolicyCreateParams::Version::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::PolicyCreateParams::Version::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
