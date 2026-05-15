# typed: strong

module Privy
  module Models
    class LinkedAccountTiktokInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountTiktokInput, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :subject

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :username

      # The payload for importing a Tiktok account.
      sig do
        params(
          name: T.nilable(String),
          subject: String,
          username: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(name:, subject:, username:, type: :tiktok_oauth)
      end

      sig do
        override.returns(
          {
            name: T.nilable(String),
            subject: String,
            type: Symbol,
            username: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
