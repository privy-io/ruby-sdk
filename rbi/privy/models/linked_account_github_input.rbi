# typed: strong

module Privy
  module Models
    class LinkedAccountGitHubInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountGitHubInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :subject

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :username

      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # The payload for importing a Github account.
      sig do
        params(
          subject: String,
          username: String,
          email: String,
          name: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(
        subject:,
        username:,
        email: nil,
        name: nil,
        type: :github_oauth
      )
      end

      sig do
        override.returns(
          {
            subject: String,
            type: Symbol,
            username: String,
            email: String,
            name: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
