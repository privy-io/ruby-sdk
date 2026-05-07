# typed: strong

module Privy
  module Models
    # An embedded wallet account with an ID.
    module LinkedAccountEmbeddedWalletWithID
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountEthereumEmbeddedWallet,
            Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountSolanaEmbeddedWallet,
            Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinSegwitEmbeddedWallet,
            Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinTaprootEmbeddedWallet,
            Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountCurveSigningEmbeddedWallet
          )
        end

      class LinkedAccountEthereumEmbeddedWallet < Privy::Models::LinkedAccountEthereumEmbeddedWallet
        OrHash =
          T.type_alias do
            T.any(
              Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountEthereumEmbeddedWallet,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountEthereumEmbeddedWallet::RecoveryMethod::OrSymbol
          )
        end
        attr_accessor :recovery_method

        # An Ethereum embedded wallet account linked to the user.
        sig do
          params(
            id: String,
            recovery_method:
              Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountEthereumEmbeddedWallet::RecoveryMethod::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(id:, recovery_method:)
        end

        sig do
          override.returns(
            {
              id: String,
              recovery_method:
                Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountEthereumEmbeddedWallet::RecoveryMethod::OrSymbol
            }
          )
        end
        def to_hash
        end

        module RecoveryMethod
          extend Privy::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountEthereumEmbeddedWallet::RecoveryMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRIVY_V2 =
            T.let(
              :"privy-v2",
              Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountEthereumEmbeddedWallet::RecoveryMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountEthereumEmbeddedWallet::RecoveryMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class LinkedAccountSolanaEmbeddedWallet < Privy::Models::LinkedAccountSolanaEmbeddedWallet
        OrHash =
          T.type_alias do
            T.any(
              Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountSolanaEmbeddedWallet,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountSolanaEmbeddedWallet::RecoveryMethod::OrSymbol
          )
        end
        attr_accessor :recovery_method

        # A Solana embedded wallet account linked to the user.
        sig do
          params(
            id: String,
            recovery_method:
              Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountSolanaEmbeddedWallet::RecoveryMethod::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(id:, recovery_method:)
        end

        sig do
          override.returns(
            {
              id: String,
              recovery_method:
                Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountSolanaEmbeddedWallet::RecoveryMethod::OrSymbol
            }
          )
        end
        def to_hash
        end

        module RecoveryMethod
          extend Privy::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountSolanaEmbeddedWallet::RecoveryMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRIVY_V2 =
            T.let(
              :"privy-v2",
              Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountSolanaEmbeddedWallet::RecoveryMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountSolanaEmbeddedWallet::RecoveryMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class LinkedAccountBitcoinSegwitEmbeddedWallet < Privy::Models::LinkedAccountBitcoinSegwitEmbeddedWallet
        OrHash =
          T.type_alias do
            T.any(
              Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinSegwitEmbeddedWallet,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinSegwitEmbeddedWallet::RecoveryMethod::OrSymbol
          )
        end
        attr_accessor :recovery_method

        # A Bitcoin SegWit embedded wallet account linked to the user.
        sig do
          params(
            id: String,
            recovery_method:
              Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinSegwitEmbeddedWallet::RecoveryMethod::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(id:, recovery_method:)
        end

        sig do
          override.returns(
            {
              id: String,
              recovery_method:
                Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinSegwitEmbeddedWallet::RecoveryMethod::OrSymbol
            }
          )
        end
        def to_hash
        end

        module RecoveryMethod
          extend Privy::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinSegwitEmbeddedWallet::RecoveryMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRIVY_V2 =
            T.let(
              :"privy-v2",
              Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinSegwitEmbeddedWallet::RecoveryMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinSegwitEmbeddedWallet::RecoveryMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class LinkedAccountBitcoinTaprootEmbeddedWallet < Privy::Models::LinkedAccountBitcoinTaprootEmbeddedWallet
        OrHash =
          T.type_alias do
            T.any(
              Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinTaprootEmbeddedWallet,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinTaprootEmbeddedWallet::RecoveryMethod::OrSymbol
          )
        end
        attr_accessor :recovery_method

        # A Bitcoin Taproot embedded wallet account linked to the user.
        sig do
          params(
            id: String,
            recovery_method:
              Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinTaprootEmbeddedWallet::RecoveryMethod::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(id:, recovery_method:)
        end

        sig do
          override.returns(
            {
              id: String,
              recovery_method:
                Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinTaprootEmbeddedWallet::RecoveryMethod::OrSymbol
            }
          )
        end
        def to_hash
        end

        module RecoveryMethod
          extend Privy::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinTaprootEmbeddedWallet::RecoveryMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRIVY_V2 =
            T.let(
              :"privy-v2",
              Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinTaprootEmbeddedWallet::RecoveryMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountBitcoinTaprootEmbeddedWallet::RecoveryMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class LinkedAccountCurveSigningEmbeddedWallet < Privy::Models::LinkedAccountCurveSigningEmbeddedWallet
        OrHash =
          T.type_alias do
            T.any(
              Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountCurveSigningEmbeddedWallet,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(
            Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountCurveSigningEmbeddedWallet::RecoveryMethod::OrSymbol
          )
        end
        attr_accessor :recovery_method

        # A curve signing embedded wallet account linked to the user.
        sig do
          params(
            id: String,
            recovery_method:
              Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountCurveSigningEmbeddedWallet::RecoveryMethod::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(id:, recovery_method:)
        end

        sig do
          override.returns(
            {
              id: String,
              recovery_method:
                Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountCurveSigningEmbeddedWallet::RecoveryMethod::OrSymbol
            }
          )
        end
        def to_hash
        end

        module RecoveryMethod
          extend Privy::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountCurveSigningEmbeddedWallet::RecoveryMethod
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PRIVY_V2 =
            T.let(
              :"privy-v2",
              Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountCurveSigningEmbeddedWallet::RecoveryMethod::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Privy::LinkedAccountEmbeddedWalletWithID::LinkedAccountCurveSigningEmbeddedWallet::RecoveryMethod::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      sig do
        override.returns(
          T::Array[Privy::LinkedAccountEmbeddedWalletWithID::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
