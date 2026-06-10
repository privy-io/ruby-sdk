# frozen_string_literal: true

module Privy
  module Models
    class AppAllowlistConfig < Privy::Internal::Type::BaseModel
      # @!attribute cta_link
      #
      #   @return [String, nil]
      required :cta_link, String, nil?: true

      # @!attribute cta_text
      #
      #   @return [String, nil]
      required :cta_text, String, nil?: true

      # @!attribute error_detail
      #
      #   @return [String, nil]
      required :error_detail, String, nil?: true

      # @!attribute error_title
      #
      #   @return [String, nil]
      required :error_title, String, nil?: true

      # @!method initialize(cta_link:, cta_text:, error_detail:, error_title:)
      #   Configuration for the allowlist error page shown to users not on the allowlist.
      #
      #   @param cta_link [String, nil]
      #   @param cta_text [String, nil]
      #   @param error_detail [String, nil]
      #   @param error_title [String, nil]
    end
  end
end
