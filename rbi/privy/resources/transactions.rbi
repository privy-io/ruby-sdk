# typed: strong

module Privy
  module Resources
    # Operations related to transactions
    class Transactions
      # Get a transaction by transaction ID.
      sig do
        params(
          transaction_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(Privy::Transaction)
      end
      def get(
        # ID of the transaction.
        transaction_id,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: Privy::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
