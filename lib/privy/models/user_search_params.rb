# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Users#search
    class UserSearchParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute body
      #
      #   @return [Privy::Models::UserSearchParams::Body::SearchTerm, Privy::Models::UserSearchParams::Body::UnionMember1]
      required :body, union: -> { Privy::UserSearchParams::Body }

      # @!method initialize(body:, request_options: {})
      #   @param body [Privy::Models::UserSearchParams::Body::SearchTerm, Privy::Models::UserSearchParams::Body::UnionMember1]
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]

      module Body
        extend Privy::Internal::Type::Union

        variant -> { Privy::UserSearchParams::Body::SearchTerm }

        variant -> { Privy::UserSearchParams::Body::UnionMember1 }

        class SearchTerm < Privy::Internal::Type::BaseModel
          # @!attribute search_term
          #
          #   @return [String]
          required :search_term, String, api_name: :searchTerm

          # @!method initialize(search_term:)
          #   @param search_term [String]
        end

        class UnionMember1 < Privy::Internal::Type::BaseModel
          # @!attribute emails
          #
          #   @return [Array<String>]
          required :emails, Privy::Internal::Type::ArrayOf[String]

          # @!attribute phone_numbers
          #
          #   @return [Array<String>]
          required :phone_numbers, Privy::Internal::Type::ArrayOf[String], api_name: :phoneNumbers

          # @!attribute wallet_addresses
          #
          #   @return [Array<String>]
          required :wallet_addresses, Privy::Internal::Type::ArrayOf[String], api_name: :walletAddresses

          # @!method initialize(emails:, phone_numbers:, wallet_addresses:)
          #   @param emails [Array<String>]
          #   @param phone_numbers [Array<String>]
          #   @param wallet_addresses [Array<String>]
        end

        # @!method self.variants
        #   @return [Array(Privy::Models::UserSearchParams::Body::SearchTerm, Privy::Models::UserSearchParams::Body::UnionMember1)]
      end
    end
  end
end
