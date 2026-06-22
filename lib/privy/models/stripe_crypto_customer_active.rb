# frozen_string_literal: true

module Privy
  module Models
    class StripeCryptoCustomerActive < Privy::Internal::Type::BaseModel
      # @!attribute crypto_customer_id
      #
      #   @return [String]
      required :crypto_customer_id, String

      # @!attribute kyc_region
      #   Region derived from a Stripe user's country of residence.
      #
      #   @return [Symbol, Privy::Models::StripeKYCRegion, nil]
      required :kyc_region, enum: -> { Privy::StripeKYCRegion }, nil?: true

      # @!attribute kyc_tiers
      #
      #   @return [Array<Privy::Models::StripeKYCTier>]
      required :kyc_tiers, -> { Privy::Internal::Type::ArrayOf[Privy::StripeKYCTier] }

      # @!attribute provided_fields
      #
      #   @return [Array<String>]
      required :provided_fields, Privy::Internal::Type::ArrayOf[String]

      # @!attribute status
      #
      #   @return [Symbol, Privy::Models::StripeCryptoCustomerActive::Status]
      required :status, enum: -> { Privy::StripeCryptoCustomerActive::Status }

      # @!attribute verifications
      #
      #   @return [Array<Privy::Models::StripeVerification>]
      required :verifications, -> { Privy::Internal::Type::ArrayOf[Privy::StripeVerification] }

      # @!method initialize(crypto_customer_id:, kyc_region:, kyc_tiers:, provided_fields:, status:, verifications:)
      #   Active onramp session with customer verifications.
      #
      #   @param crypto_customer_id [String]
      #
      #   @param kyc_region [Symbol, Privy::Models::StripeKYCRegion, nil] Region derived from a Stripe user's country of residence.
      #
      #   @param kyc_tiers [Array<Privy::Models::StripeKYCTier>]
      #
      #   @param provided_fields [Array<String>]
      #
      #   @param status [Symbol, Privy::Models::StripeCryptoCustomerActive::Status]
      #
      #   @param verifications [Array<Privy::Models::StripeVerification>]

      # @see Privy::Models::StripeCryptoCustomerActive#status
      module Status
        extend Privy::Internal::Type::Enum

        ACTIVE = :active

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
