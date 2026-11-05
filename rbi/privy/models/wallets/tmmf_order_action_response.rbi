# typed: strong

module Privy
  module Models
    module Wallets
      # A tMMF purchase or redemption wallet action, discriminated on type.
      module TmmfOrderActionResponse
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              Privy::Wallets::TmmfDepositActionResponse,
              Privy::Wallets::TmmfWithdrawActionResponse
            )
          end

        sig do
          override.returns(
            T::Array[Privy::Wallets::TmmfOrderActionResponse::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
