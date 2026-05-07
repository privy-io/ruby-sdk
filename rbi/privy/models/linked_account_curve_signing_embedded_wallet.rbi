# typed: strong

module Privy
  module Models
    class LinkedAccountCurveSigningEmbeddedWallet < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::LinkedAccountCurveSigningEmbeddedWallet,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :address

      sig { returns(String) }
      attr_accessor :chain_id

      # The wallet chain types that support curve-based signing.
      sig { returns(Privy::CurveSigningChainType::TaggedSymbol) }
      attr_accessor :chain_type

      sig do
        returns(
          Privy::LinkedAccountCurveSigningEmbeddedWallet::ConnectorType::TaggedSymbol
        )
      end
      attr_accessor :connector_type

      sig { returns(T::Boolean) }
      attr_accessor :delegated

      sig { returns(T.nilable(Float)) }
      attr_accessor :first_verified_at

      sig { returns(T::Boolean) }
      attr_accessor :imported

      sig { returns(T.nilable(Float)) }
      attr_accessor :latest_verified_at

      sig { returns(String) }
      attr_accessor :public_key

      # The method used to recover an embedded wallet account.
      sig { returns(Privy::EmbeddedWalletRecoveryMethod::TaggedSymbol) }
      attr_accessor :recovery_method

      sig do
        returns(
          Privy::LinkedAccountCurveSigningEmbeddedWallet::Type::TaggedSymbol
        )
      end
      attr_accessor :type

      sig { returns(Float) }
      attr_accessor :verified_at

      sig do
        returns(
          Privy::LinkedAccountCurveSigningEmbeddedWallet::WalletClient::TaggedSymbol
        )
      end
      attr_accessor :wallet_client

      sig do
        returns(
          Privy::LinkedAccountCurveSigningEmbeddedWallet::WalletClientType::TaggedSymbol
        )
      end
      attr_accessor :wallet_client_type

      sig { returns(Float) }
      attr_accessor :wallet_index

      # A curve signing embedded wallet account linked to the user.
      sig do
        params(
          id: T.nilable(String),
          address: String,
          chain_id: String,
          chain_type: Privy::CurveSigningChainType::OrSymbol,
          connector_type:
            Privy::LinkedAccountCurveSigningEmbeddedWallet::ConnectorType::OrSymbol,
          delegated: T::Boolean,
          first_verified_at: T.nilable(Float),
          imported: T::Boolean,
          latest_verified_at: T.nilable(Float),
          public_key: String,
          recovery_method: Privy::EmbeddedWalletRecoveryMethod::OrSymbol,
          type: Privy::LinkedAccountCurveSigningEmbeddedWallet::Type::OrSymbol,
          verified_at: Float,
          wallet_client:
            Privy::LinkedAccountCurveSigningEmbeddedWallet::WalletClient::OrSymbol,
          wallet_client_type:
            Privy::LinkedAccountCurveSigningEmbeddedWallet::WalletClientType::OrSymbol,
          wallet_index: Float
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        address:,
        chain_id:,
        # The wallet chain types that support curve-based signing.
        chain_type:,
        connector_type:,
        delegated:,
        first_verified_at:,
        imported:,
        latest_verified_at:,
        public_key:,
        # The method used to recover an embedded wallet account.
        recovery_method:,
        type:,
        verified_at:,
        wallet_client:,
        wallet_client_type:,
        wallet_index:
      )
      end

      sig do
        override.returns(
          {
            id: T.nilable(String),
            address: String,
            chain_id: String,
            chain_type: Privy::CurveSigningChainType::TaggedSymbol,
            connector_type:
              Privy::LinkedAccountCurveSigningEmbeddedWallet::ConnectorType::TaggedSymbol,
            delegated: T::Boolean,
            first_verified_at: T.nilable(Float),
            imported: T::Boolean,
            latest_verified_at: T.nilable(Float),
            public_key: String,
            recovery_method: Privy::EmbeddedWalletRecoveryMethod::TaggedSymbol,
            type:
              Privy::LinkedAccountCurveSigningEmbeddedWallet::Type::TaggedSymbol,
            verified_at: Float,
            wallet_client:
              Privy::LinkedAccountCurveSigningEmbeddedWallet::WalletClient::TaggedSymbol,
            wallet_client_type:
              Privy::LinkedAccountCurveSigningEmbeddedWallet::WalletClientType::TaggedSymbol,
            wallet_index: Float
          }
        )
      end
      def to_hash
      end

      module ConnectorType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::LinkedAccountCurveSigningEmbeddedWallet::ConnectorType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        EMBEDDED =
          T.let(
            :embedded,
            Privy::LinkedAccountCurveSigningEmbeddedWallet::ConnectorType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::LinkedAccountCurveSigningEmbeddedWallet::ConnectorType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::LinkedAccountCurveSigningEmbeddedWallet::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        WALLET =
          T.let(
            :wallet,
            Privy::LinkedAccountCurveSigningEmbeddedWallet::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::LinkedAccountCurveSigningEmbeddedWallet::Type::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module WalletClient
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::LinkedAccountCurveSigningEmbeddedWallet::WalletClient
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRIVY =
          T.let(
            :privy,
            Privy::LinkedAccountCurveSigningEmbeddedWallet::WalletClient::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::LinkedAccountCurveSigningEmbeddedWallet::WalletClient::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module WalletClientType
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              Privy::LinkedAccountCurveSigningEmbeddedWallet::WalletClientType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PRIVY =
          T.let(
            :privy,
            Privy::LinkedAccountCurveSigningEmbeddedWallet::WalletClientType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::LinkedAccountCurveSigningEmbeddedWallet::WalletClientType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
