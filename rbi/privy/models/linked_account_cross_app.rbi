# typed: strong

module Privy
  module Models
    class LinkedAccountCrossApp < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountCrossApp, Privy::Internal::AnyHash)
        end

      sig { returns(T::Array[Privy::CrossAppEmbeddedWallet]) }
      attr_accessor :embedded_wallets

      sig { returns(T.nilable(Float)) }
      attr_accessor :first_verified_at

      sig { returns(T.nilable(Float)) }
      attr_accessor :latest_verified_at

      sig { returns(String) }
      attr_accessor :provider_app_id

      sig { returns(T::Array[Privy::CrossAppSmartWallet]) }
      attr_accessor :smart_wallets

      sig { returns(String) }
      attr_accessor :subject

      sig { returns(Privy::LinkedAccountCrossApp::Type::TaggedSymbol) }
      attr_accessor :type

      sig { returns(Float) }
      attr_accessor :verified_at

      # A cross-app account linked to the user.
      sig do
        params(
          embedded_wallets: T::Array[Privy::CrossAppEmbeddedWallet::OrHash],
          first_verified_at: T.nilable(Float),
          latest_verified_at: T.nilable(Float),
          provider_app_id: String,
          smart_wallets: T::Array[Privy::CrossAppSmartWallet::OrHash],
          subject: String,
          type: Privy::LinkedAccountCrossApp::Type::OrSymbol,
          verified_at: Float
        ).returns(T.attached_class)
      end
      def self.new(
        embedded_wallets:,
        first_verified_at:,
        latest_verified_at:,
        provider_app_id:,
        smart_wallets:,
        subject:,
        type:,
        verified_at:
      )
      end

      sig do
        override.returns(
          {
            embedded_wallets: T::Array[Privy::CrossAppEmbeddedWallet],
            first_verified_at: T.nilable(Float),
            latest_verified_at: T.nilable(Float),
            provider_app_id: String,
            smart_wallets: T::Array[Privy::CrossAppSmartWallet],
            subject: String,
            type: Privy::LinkedAccountCrossApp::Type::TaggedSymbol,
            verified_at: Float
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::LinkedAccountCrossApp::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CROSS_APP =
          T.let(:cross_app, Privy::LinkedAccountCrossApp::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::LinkedAccountCrossApp::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
