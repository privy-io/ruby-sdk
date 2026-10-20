# frozen_string_literal: true

module Privy
  module Models
    # The original key quorum request. Method is PATCH (update) or DELETE (delete).
    module KeyQuorumIntentRequestDetailsUnion
      extend Privy::Internal::Type::Union

      discriminator :method

      # Request details for a key quorum intent.
      variant :PATCH, -> { Privy::KeyQuorumIntentRequestDetails }

      # Request details for deleting a key quorum via intent.
      variant :DELETE, -> { Privy::KeyQuorumIntentDeleteRequestDetails }

      # @!method self.variants
      #   @return [Array(Privy::Models::KeyQuorumIntentRequestDetails, Privy::Models::KeyQuorumIntentDeleteRequestDetails)]
    end
  end
end
