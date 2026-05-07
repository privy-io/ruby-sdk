# typed: strong

module Privy
  module Models
    class IntentListParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::IntentListParams, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :created_by_id

      sig { params(created_by_id: String).void }
      attr_writer :created_by_id

      sig do
        returns(
          T.nilable(Privy::IntentListParams::CurrentUserHasSigned::OrSymbol)
        )
      end
      attr_reader :current_user_has_signed

      sig do
        params(
          current_user_has_signed:
            Privy::IntentListParams::CurrentUserHasSigned::OrSymbol
        ).void
      end
      attr_writer :current_user_has_signed

      sig { returns(T.nilable(String)) }
      attr_reader :cursor

      sig { params(cursor: String).void }
      attr_writer :cursor

      # Type of intent.
      sig { returns(T.nilable(Privy::IntentType::OrSymbol)) }
      attr_reader :intent_type

      sig { params(intent_type: Privy::IntentType::OrSymbol).void }
      attr_writer :intent_type

      sig { returns(T.nilable(Float)) }
      attr_accessor :limit

      sig { returns(T.nilable(String)) }
      attr_reader :pending_member_id

      sig { params(pending_member_id: String).void }
      attr_writer :pending_member_id

      sig { returns(T.nilable(String)) }
      attr_reader :resource_id

      sig { params(resource_id: String).void }
      attr_writer :resource_id

      sig { returns(T.nilable(Privy::IntentListParams::SortBy::OrSymbol)) }
      attr_reader :sort_by

      sig { params(sort_by: Privy::IntentListParams::SortBy::OrSymbol).void }
      attr_writer :sort_by

      # Current status of an intent.
      sig { returns(T.nilable(Privy::IntentStatus::OrSymbol)) }
      attr_reader :status

      sig { params(status: Privy::IntentStatus::OrSymbol).void }
      attr_writer :status

      sig do
        params(
          created_by_id: String,
          current_user_has_signed:
            Privy::IntentListParams::CurrentUserHasSigned::OrSymbol,
          cursor: String,
          intent_type: Privy::IntentType::OrSymbol,
          limit: T.nilable(Float),
          pending_member_id: String,
          resource_id: String,
          sort_by: Privy::IntentListParams::SortBy::OrSymbol,
          status: Privy::IntentStatus::OrSymbol,
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        created_by_id: nil,
        current_user_has_signed: nil,
        cursor: nil,
        # Type of intent.
        intent_type: nil,
        limit: nil,
        pending_member_id: nil,
        resource_id: nil,
        sort_by: nil,
        # Current status of an intent.
        status: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            created_by_id: String,
            current_user_has_signed:
              Privy::IntentListParams::CurrentUserHasSigned::OrSymbol,
            cursor: String,
            intent_type: Privy::IntentType::OrSymbol,
            limit: T.nilable(Float),
            pending_member_id: String,
            resource_id: String,
            sort_by: Privy::IntentListParams::SortBy::OrSymbol,
            status: Privy::IntentStatus::OrSymbol,
            request_options: Privy::RequestOptions
          }
        )
      end
      def to_hash
      end

      module CurrentUserHasSigned
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::IntentListParams::CurrentUserHasSigned)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TRUE =
          T.let(
            :true,
            Privy::IntentListParams::CurrentUserHasSigned::TaggedSymbol
          )
        FALSE =
          T.let(
            :false,
            Privy::IntentListParams::CurrentUserHasSigned::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              Privy::IntentListParams::CurrentUserHasSigned::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end

      module SortBy
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::IntentListParams::SortBy) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED_AT_DESC =
          T.let(:created_at_desc, Privy::IntentListParams::SortBy::TaggedSymbol)
        EXPIRES_AT_ASC =
          T.let(:expires_at_asc, Privy::IntentListParams::SortBy::TaggedSymbol)
        UPDATED_AT_DESC =
          T.let(:updated_at_desc, Privy::IntentListParams::SortBy::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::IntentListParams::SortBy::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
