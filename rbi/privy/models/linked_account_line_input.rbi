# typed: strong

module Privy
  module Models
    class LinkedAccountLineInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountLineInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :subject

      sig { returns(Symbol) }
      attr_accessor :type

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

      # The payload for importing a LINE account.
      sig do
        params(
          subject: String,
          email: String,
          name: String,
          profile_picture_url: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        subject:,
        email: nil,
        name: nil,
        profile_picture_url: nil,
        type: :line_oauth
      )
      end

      sig do
        override.returns(
          {
            subject: String,
            type: Symbol,
            email: String,
            name: String,
            profile_picture_url: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
