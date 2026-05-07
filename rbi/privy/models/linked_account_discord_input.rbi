# typed: strong

module Privy
  module Models
    class LinkedAccountDiscordInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountDiscordInput, Privy::Internal::AnyHash)
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

      # The payload for importing a Discord account.
      sig do
        params(
          subject: String,
          username: String,
          email: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(subject:, username:, email: nil, type: :discord_oauth)
      end

      sig do
        override.returns(
          { subject: String, type: Symbol, username: String, email: String }
        )
      end
      def to_hash
      end
    end
  end
end
