# frozen_string_literal: true

module Privy
  module Models
    class ExternalFiatAccountPixData < Privy::Internal::Type::BaseModel
      # @!attribute type
      #
      #   @return [Symbol, Privy::Models::ExternalFiatAccountPixData::Type]
      required :type, enum: -> { Privy::ExternalFiatAccountPixData::Type }

      # @!attribute br_code
      #   The Pix "copia e cola" (copy and paste) BR Code.
      #
      #   @return [String, nil]
      optional :br_code, String

      # @!attribute document_number
      #   Optional CPF/CNPJ associated with the account, digits only.
      #
      #   @return [String, nil]
      optional :document_number, String

      # @!attribute pix_key
      #   The Pix key: an EVP (UUID), CPF, CNPJ, Brazilian phone number (+55…), or email
      #   address.
      #
      #   @return [String, nil]
      optional :pix_key, String

      # @!method initialize(type:, br_code: nil, document_number: nil, pix_key: nil)
      #   Some parameter documentations has been truncated, see
      #   {Privy::Models::ExternalFiatAccountPixData} for more details.
      #
      #   Brazilian Pix account data for an external fiat account. Provide exactly one of
      #   `pix_key` or `br_code`.
      #
      #   @param type [Symbol, Privy::Models::ExternalFiatAccountPixData::Type]
      #
      #   @param br_code [String] The Pix "copia e cola" (copy and paste) BR Code.
      #
      #   @param document_number [String] Optional CPF/CNPJ associated with the account, digits only.
      #
      #   @param pix_key [String] The Pix key: an EVP (UUID), CPF, CNPJ, Brazilian phone number (+55…), or email a

      # @see Privy::Models::ExternalFiatAccountPixData#type
      module Type
        extend Privy::Internal::Type::Enum

        PIX = :pix

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
