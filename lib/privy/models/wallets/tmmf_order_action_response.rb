# frozen_string_literal: true

module Privy
  module Models
    module Wallets
      # A tMMF purchase or redemption wallet action, discriminated on type.
      module TmmfOrderActionResponse
        extend Privy::Internal::Type::Union

        discriminator :type

        # A tokenized money market fund (tMMF) deposit.
        variant :tmmf_deposit, -> { Privy::Wallets::TmmfDepositActionResponse }

        # A tokenized money market fund (tMMF) withdrawal.
        variant :tmmf_withdraw, -> { Privy::Wallets::TmmfWithdrawActionResponse }

        # @!method self.variants
        #   @return [Array(Privy::Models::Wallets::TmmfDepositActionResponse, Privy::Models::Wallets::TmmfWithdrawActionResponse)]
      end
    end
  end
end
