# frozen_string_literal: true

module Privy
  module Models
    class KYBIndividualDocument < Privy::Internal::Type::BaseModel
      # @!attribute file
      #   Base64-encoded data URI of the document.
      #
      #   @return [String]
      required :file, String

      # @!attribute purposes
      #   What this document evidences. Supports multiple purposes per file.
      #
      #   @return [Array<String>]
      required :purposes, Privy::Internal::Type::ArrayOf[String]

      # @!attribute description
      #   Document description. Required when "other" is one of the purposes.
      #
      #   @return [String, nil]
      optional :description, String

      # @!method initialize(file:, purposes:, description: nil)
      #   A supporting document for an associated person.
      #
      #   @param file [String] Base64-encoded data URI of the document.
      #
      #   @param purposes [Array<String>] What this document evidences. Supports multiple purposes per file.
      #
      #   @param description [String] Document description. Required when "other" is one of the purposes.
    end
  end
end
