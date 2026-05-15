# typed: strong

module Privy
  module Models
    class LinkedAccountCustomOAuth < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountCustomOAuth, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(Float)) }
      attr_accessor :first_verified_at

      sig { returns(T.nilable(Float)) }
      attr_accessor :latest_verified_at

      sig { returns(String) }
      attr_accessor :subject

      # The ID of a custom OAuth provider, set up for this app. Must start with
      # "custom:".
      sig { returns(String) }
      attr_accessor :type

      sig { returns(Float) }
      attr_accessor :verified_at

      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      sig { returns(T.nilable(String)) }
      attr_reader :profile_picture_url

      sig { params(profile_picture_url: String).void }
      attr_writer :profile_picture_url

      sig { returns(T.nilable(String)) }
      attr_reader :username

      sig { params(username: String).void }
      attr_writer :username

      # A custom OAuth account linked to the user.
      sig do
        params(
          first_verified_at: T.nilable(Float),
          latest_verified_at: T.nilable(Float),
          subject: String,
          type: String,
          verified_at: Float,
          email: String,
          name: String,
          profile_picture_url: String,
          username: String
        ).returns(T.attached_class)
      end
      def self.new(
        first_verified_at:,
        latest_verified_at:,
        subject:,
        # The ID of a custom OAuth provider, set up for this app. Must start with
        # "custom:".
        type:,
        verified_at:,
        email: nil,
        name: nil,
        profile_picture_url: nil,
        username: nil
      )
      end

      sig do
        override.returns(
          {
            first_verified_at: T.nilable(Float),
            latest_verified_at: T.nilable(Float),
            subject: String,
            type: String,
            verified_at: Float,
            email: String,
            name: String,
            profile_picture_url: String,
            username: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
