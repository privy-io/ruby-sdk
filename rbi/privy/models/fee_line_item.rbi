# typed: strong

module Privy
  module Models
    # An individual fee assessed on a transfer.
    module FeeLineItem
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(Privy::RelayerFee, Privy::PrivyFee, Privy::DeveloperFee)
        end

      sig { override.returns(T::Array[Privy::FeeLineItem::Variants]) }
      def self.variants
      end
    end
  end
end
