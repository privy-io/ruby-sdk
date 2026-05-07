# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Intents#list
    class IntentListParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute created_by_id
      #
      #   @return [String, nil]
      optional :created_by_id, String

      # @!attribute current_user_has_signed
      #
      #   @return [Symbol, Privy::Models::IntentListParams::CurrentUserHasSigned, nil]
      optional :current_user_has_signed, enum: -> { Privy::IntentListParams::CurrentUserHasSigned }

      # @!attribute cursor
      #
      #   @return [String, nil]
      optional :cursor, String

      # @!attribute intent_type
      #   Type of intent.
      #
      #   @return [Symbol, Privy::Models::IntentType, nil]
      optional :intent_type, enum: -> { Privy::IntentType }

      # @!attribute limit
      #
      #   @return [Float, nil]
      optional :limit, Float, nil?: true

      # @!attribute pending_member_id
      #
      #   @return [String, nil]
      optional :pending_member_id, String

      # @!attribute resource_id
      #
      #   @return [String, nil]
      optional :resource_id, String

      # @!attribute sort_by
      #
      #   @return [Symbol, Privy::Models::IntentListParams::SortBy, nil]
      optional :sort_by, enum: -> { Privy::IntentListParams::SortBy }

      # @!attribute status
      #   Current status of an intent.
      #
      #   @return [Symbol, Privy::Models::IntentStatus, nil]
      optional :status, enum: -> { Privy::IntentStatus }

      # @!method initialize(created_by_id: nil, current_user_has_signed: nil, cursor: nil, intent_type: nil, limit: nil, pending_member_id: nil, resource_id: nil, sort_by: nil, status: nil, request_options: {})
      #   @param created_by_id [String]
      #
      #   @param current_user_has_signed [Symbol, Privy::Models::IntentListParams::CurrentUserHasSigned]
      #
      #   @param cursor [String]
      #
      #   @param intent_type [Symbol, Privy::Models::IntentType] Type of intent.
      #
      #   @param limit [Float, nil]
      #
      #   @param pending_member_id [String]
      #
      #   @param resource_id [String]
      #
      #   @param sort_by [Symbol, Privy::Models::IntentListParams::SortBy]
      #
      #   @param status [Symbol, Privy::Models::IntentStatus] Current status of an intent.
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]

      module CurrentUserHasSigned
        extend Privy::Internal::Type::Enum

        TRUE = :true
        FALSE = :false

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      module SortBy
        extend Privy::Internal::Type::Enum

        CREATED_AT_DESC = :created_at_desc
        EXPIRES_AT_ASC = :expires_at_asc
        UPDATED_AT_DESC = :updated_at_desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
