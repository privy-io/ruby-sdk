# frozen_string_literal: true

module Privy
  module Models
    class CrossAppConnectionsResponse < Privy::Internal::Type::BaseModel
      # @!attribute connections
      #
      #   @return [Array<Privy::Models::CrossAppConnection>]
      required :connections, -> { Privy::Internal::Type::ArrayOf[Privy::CrossAppConnection] }

      # @!attribute data_classification
      #   Indicates that this response contains only publicly accessible data, not a
      #   privileged resource
      #
      #   @return [Symbol, Privy::Models::CrossAppConnectionsResponse::DataClassification]
      required :data_classification, enum: -> { Privy::CrossAppConnectionsResponse::DataClassification }

      # @!method initialize(connections:, data_classification:)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::CrossAppConnectionsResponse} for more details.
      #
      #   The response for getting the list of cross-app connections.
      #
      #   @param connections [Array<Privy::Models::CrossAppConnection>]
      #
      #   @param data_classification [Symbol, Privy::Models::CrossAppConnectionsResponse::DataClassification] Indicates that this response contains only publicly accessible data, not a privi

      # Indicates that this response contains only publicly accessible data, not a
      # privileged resource
      #
      # @see Privy::Models::CrossAppConnectionsResponse#data_classification
      module DataClassification
        extend Privy::Internal::Type::Enum

        PUBLIC = :public

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
