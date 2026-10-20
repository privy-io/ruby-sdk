# frozen_string_literal: true

module Privy
  module Models
    # The original policy request. Method is PATCH (update) or DELETE (delete).
    module PolicyIntentRequestDetailsUnion
      extend Privy::Internal::Type::Union

      discriminator :method

      # Request details for a policy intent.
      variant :PATCH, -> { Privy::PolicyIntentRequestDetails }

      # Request details for deleting a policy via intent.
      variant :DELETE, -> { Privy::PolicyIntentDeleteRequestDetails }

      # @!method self.variants
      #   @return [Array(Privy::Models::PolicyIntentRequestDetails, Privy::Models::PolicyIntentDeleteRequestDetails)]
    end
  end
end
