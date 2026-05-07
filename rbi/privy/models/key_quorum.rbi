# typed: strong

module Privy
  module Models
    class KeyQuorum < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::KeyQuorum, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T::Array[Privy::KeyQuorum::AuthorizationKey]) }
      attr_accessor :authorization_keys

      sig { returns(T.nilable(Float)) }
      attr_accessor :authorization_threshold

      sig { returns(T.nilable(String)) }
      attr_accessor :display_name

      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :user_ids

      # List of nested key quorum IDs that are members of this key quorum.
      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :key_quorum_ids

      sig { params(key_quorum_ids: T::Array[String]).void }
      attr_writer :key_quorum_ids

      # A key quorum for authorizing wallet operations.
      sig do
        params(
          id: String,
          authorization_keys:
            T::Array[Privy::KeyQuorum::AuthorizationKey::OrHash],
          authorization_threshold: T.nilable(Float),
          display_name: T.nilable(String),
          user_ids: T.nilable(T::Array[String]),
          key_quorum_ids: T::Array[String]
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        authorization_keys:,
        authorization_threshold:,
        display_name:,
        user_ids:,
        # List of nested key quorum IDs that are members of this key quorum.
        key_quorum_ids: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            authorization_keys: T::Array[Privy::KeyQuorum::AuthorizationKey],
            authorization_threshold: T.nilable(Float),
            display_name: T.nilable(String),
            user_ids: T.nilable(T::Array[String]),
            key_quorum_ids: T::Array[String]
          }
        )
      end
      def to_hash
      end

      class AuthorizationKey < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Privy::KeyQuorum::AuthorizationKey, Privy::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :display_name

        sig { returns(String) }
        attr_accessor :public_key

        sig do
          params(display_name: T.nilable(String), public_key: String).returns(
            T.attached_class
          )
        end
        def self.new(display_name:, public_key:)
        end

        sig do
          override.returns(
            { display_name: T.nilable(String), public_key: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
