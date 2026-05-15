# typed: strong

module Privy
  module Models
    # Details of a wallet transaction, varying by transaction type.
    module TransactionDetail
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            Privy::TransferSentTransactionDetail,
            Privy::TransferReceivedTransactionDetail
          )
        end

      sig { override.returns(T::Array[Privy::TransactionDetail::Variants]) }
      def self.variants
      end
    end
  end
end
