# frozen_string_literal: true

module Privy
  module Models
    class WalletAutomationAttachmentListResponse < Privy::Internal::Type::BaseModel
      # @!attribute data
      #
      #   @return [Array<Privy::Models::WalletAutomationAttachmentResponse>]
      required :data, -> { Privy::Internal::Type::ArrayOf[Privy::WalletAutomationAttachmentResponse] }

      # @!method initialize(data:)
      #   List of wallet automation attachments.
      #
      #   @param data [Array<Privy::Models::WalletAutomationAttachmentResponse>]
    end
  end
end
