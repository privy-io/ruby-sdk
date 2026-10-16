# frozen_string_literal: true

module Privy
  module Models
    # The original condition set item request. Method is POST (add items), PUT
    # (replace items), or DELETE (delete an item)
    module ConditionSetItemIntentRequestDetails
      extend Privy::Internal::Type::Union

      discriminator :method

      # Request details for adding items to a condition set via intent.
      variant :POST, -> { Privy::ConditionSetItemIntentCreateRequestDetails }

      # Request details for replacing the items of a condition set via intent.
      variant :PUT, -> { Privy::ConditionSetItemIntentUpdateRequestDetails }

      # Request details for deleting a condition set item via intent.
      variant :DELETE, -> { Privy::ConditionSetItemIntentDeleteRequestDetails }

      # @!method self.variants
      #   @return [Array(Privy::Models::ConditionSetItemIntentCreateRequestDetails, Privy::Models::ConditionSetItemIntentUpdateRequestDetails, Privy::Models::ConditionSetItemIntentDeleteRequestDetails)]
    end
  end
end
