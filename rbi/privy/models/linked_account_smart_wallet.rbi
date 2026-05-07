# typed: strong

module Privy
  module Models
    class LinkedAccountSmartWallet < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountSmartWallet, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :address

      sig { returns(T.nilable(Float)) }
      attr_accessor :first_verified_at

      sig { returns(T.nilable(Float)) }
      attr_accessor :latest_verified_at

      # The supported smart wallet providers.
      sig { returns(Privy::SmartWalletType::TaggedSymbol) }
      attr_accessor :smart_wallet_type

      sig { returns(Privy::LinkedAccountSmartWallet::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Float) }
      attr_accessor :verified_at

      sig { returns(T.nilable(String)) }
      attr_reader :smart_wallet_version

      sig { params(smart_wallet_version: String).void }
      attr_writer :smart_wallet_version

      # A smart wallet account linked to the user.
      sig do
        params(
          address: String,
          first_verified_at: T.nilable(Float),
          latest_verified_at: T.nilable(Float),
          smart_wallet_type: Privy::SmartWalletType::OrSymbol,
          type: Privy::LinkedAccountSmartWallet::Type::OrSymbol,
          verified_at: Float,
          smart_wallet_version: String
        ).returns(T.attached_class)
      end
      def self.new(
        address:,
        first_verified_at:,
        latest_verified_at:,
        # The supported smart wallet providers.
        smart_wallet_type:,
        type:,
        verified_at:,
        smart_wallet_version: nil
      )
      end

      sig do
        override.returns(
          {
            address: String,
            first_verified_at: T.nilable(Float),
            latest_verified_at: T.nilable(Float),
            smart_wallet_type: Privy::SmartWalletType::TaggedSymbol,
            type: Privy::LinkedAccountSmartWallet::Type::TaggedSymbol,
            verified_at: Float,
            smart_wallet_version: String
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::LinkedAccountSmartWallet::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SMART_WALLET =
          T.let(
            :smart_wallet,
            Privy::LinkedAccountSmartWallet::Type::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::LinkedAccountSmartWallet::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
