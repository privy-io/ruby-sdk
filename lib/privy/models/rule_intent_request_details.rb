# frozen_string_literal: true

module Privy
  module Models
    # The original rule request. Method is POST (create), PATCH (update), or DELETE
    # (delete)
    module RuleIntentRequestDetails
      extend Privy::Internal::Type::Union

      discriminator :method

      # Request details for creating a rule via intent.
      variant :POST, -> { Privy::RuleIntentCreateRequestDetails }

      # Request details for updating a rule via intent.
      variant :PATCH, -> { Privy::RuleIntentUpdateRequestDetails }

      # Request details for deleting a rule via intent.
      variant :DELETE, -> { Privy::RuleIntentDeleteRequestDetails }

      # @!method self.variants
      #   @return [Array(Privy::Models::RuleIntentCreateRequestDetails, Privy::Models::RuleIntentUpdateRequestDetails, Privy::Models::RuleIntentDeleteRequestDetails)]
    end
  end
end
