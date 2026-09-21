# typed: strong

module Privy
  module Models
    class TransferCustodyOptions < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::TransferCustodyOptions, Privy::Internal::AnyHash)
        end

      # Payment initiation context for transfers sourced from wallets that require
      # initiation data. Captures how the payment was initiated (channel and subchannel)
      # and whether Strong Customer Authentication was applied or which SCA exemption
      # was used.
      sig { returns(Privy::TransferInitiation) }
      attr_reader :initiation

      sig { params(initiation: Privy::TransferInitiation::OrHash).void }
      attr_writer :initiation

      # Options for a transfer from a custodial wallet.
      sig do
        params(initiation: Privy::TransferInitiation::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(
        # Payment initiation context for transfers sourced from wallets that require
        # initiation data. Captures how the payment was initiated (channel and subchannel)
        # and whether Strong Customer Authentication was applied or which SCA exemption
        # was used.
        initiation:
      )
      end

      sig { override.returns({ initiation: Privy::TransferInitiation }) }
      def to_hash
      end
    end
  end
end
