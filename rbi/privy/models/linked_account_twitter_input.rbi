# typed: strong

module Privy
  module Models
    class LinkedAccountTwitterInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountTwitterInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :subject

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :username

      sig { returns(T.nilable(String)) }
      attr_reader :profile_picture_url

      sig { params(profile_picture_url: String).void }
      attr_writer :profile_picture_url

      # The payload for importing a Twitter account.
      sig do
        params(
          name: String,
          subject: String,
          username: String,
          profile_picture_url: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        name:,
        subject:,
        username:,
        profile_picture_url: nil,
        type: :twitter_oauth
      )
      end

      sig do
        override.returns(
          {
            name: String,
            subject: String,
            type: Symbol,
            username: String,
            profile_picture_url: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
