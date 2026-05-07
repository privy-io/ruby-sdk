# typed: strong

module Privy
  module Models
    class WalletInitImportParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::WalletInitImportParams, Privy::Internal::AnyHash)
        end

      # The input for HD wallets.
      sig { returns(T.any(Privy::HDInitInput, Privy::PrivateKeyInitInput)) }
      attr_accessor :body

      sig do
        params(
          body:
            T.any(
              Privy::HDInitInput::OrHash,
              Privy::PrivateKeyInitInput::OrHash
            ),
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The input for HD wallets.
        body:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            body: T.any(Privy::HDInitInput, Privy::PrivateKeyInitInput),
            request_options: Privy::RequestOptions
          }
        )
      end
      def to_hash
      end

      # The input for HD wallets.
      module Body
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias { T.any(Privy::HDInitInput, Privy::PrivateKeyInitInput) }

        sig do
          override.returns(
            T::Array[Privy::WalletInitImportParams::Body::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
