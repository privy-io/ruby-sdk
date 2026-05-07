# typed: strong

module Privy
  module Models
    class LinkedAccountTwitchInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountTwitchInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :subject

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(T.nilable(String)) }
      attr_reader :username

      sig { params(username: String).void }
      attr_writer :username

      # The payload for importing a Twitch account.
      sig do
        params(subject: String, username: String, type: Symbol).returns(
          T.attached_class
        )
      end
      def self.new(subject:, username: nil, type: :twitch_oauth)
      end

      sig do
        override.returns({ subject: String, type: Symbol, username: String })
      end
      def to_hash
      end
    end
  end
end
