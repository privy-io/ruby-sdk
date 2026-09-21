# typed: strong

module Privy
  module Models
    # Whether the payment was made remotely or in person. Use `remote` for payments
    # initiated from a distance (mobile app, online banking, or e-commerce checkout);
    # `non_remote` for payments made in person (physical card, payment terminal, or
    # contactless tap).
    module TransferInitiationSubchannel
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(Privy::TransferInitiationSubchannel::TaggedSymbol, String)
        end

      sig do
        override.returns(
          T::Array[Privy::TransferInitiationSubchannel::Variants]
        )
      end
      def self.variants
      end

      TaggedSymbol =
        T.type_alias { T.all(Symbol, Privy::TransferInitiationSubchannel) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      REMOTE = T.let(:remote, Privy::TransferInitiationSubchannel::TaggedSymbol)
      NON_REMOTE =
        T.let(:non_remote, Privy::TransferInitiationSubchannel::TaggedSymbol)
    end
  end
end
