# frozen_string_literal: true

module Privy
  module Models
    # "accepted" if the network has acknowledged the transaction, "rejected" if the
    # network refused it, "skipped" if dry_run was set. Not an onchain confirmation.
    module SwapSubmissionStatus
      extend Privy::Internal::Type::Enum

      ACCEPTED = :accepted
      REJECTED = :rejected
      SKIPPED = :skipped

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
