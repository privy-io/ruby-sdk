# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Transactions#get
    class TransactionGetParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute transaction_id
      #   ID of the transaction.
      #
      #   @return [String]
      required :transaction_id, String

      # @!method initialize(transaction_id:, request_options: {})
      #   @param transaction_id [String] ID of the transaction.
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
