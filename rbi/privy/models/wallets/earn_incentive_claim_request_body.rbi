# typed: strong

module Privy
  module Models
    module Wallets
      class EarnIncentiveClaimRequestBody < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Wallets::EarnIncentiveClaimRequestBody,
              Privy::Internal::AnyHash
            )
          end

        # The blockchain network on which to perform the incentive claim. Supported chains
        # include: 'tempo', 'ethereum', 'base', 'arbitrum', 'polygon', 'solana', and more,
        # along with their respective testnets.
        sig { returns(String) }
        attr_accessor :chain

        # Unique caller-generated nonce used to prevent replaying a signed wallet action
        # request. Must be at least 24 characters (e.g. a cuid2 or UUID).
        sig { returns(T.nilable(String)) }
        attr_reader :nonce

        sig { params(nonce: String).void }
        attr_writer :nonce

        # Input for claiming incentive rewards.
        sig { params(chain: String, nonce: String).returns(T.attached_class) }
        def self.new(
          # The blockchain network on which to perform the incentive claim. Supported chains
          # include: 'tempo', 'ethereum', 'base', 'arbitrum', 'polygon', 'solana', and more,
          # along with their respective testnets.
          chain:,
          # Unique caller-generated nonce used to prevent replaying a signed wallet action
          # request. Must be at least 24 characters (e.g. a cuid2 or UUID).
          nonce: nil
        )
        end

        sig { override.returns({ chain: String, nonce: String }) }
        def to_hash
        end
      end
    end
  end
end
