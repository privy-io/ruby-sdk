# typed: strong

module Privy
  module Models
    class LinkedAccountGoogleInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountGoogleInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :email

      sig { returns(String) }
      attr_accessor :name

      sig { returns(String) }
      attr_accessor :subject

      sig { returns(Symbol) }
      attr_accessor :type

      # The payload for importing a Google account.
      sig do
        params(
          email: String,
          name: String,
          subject: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(email:, name:, subject:, type: :google_oauth)
      end

      sig do
        override.returns(
          { email: String, name: String, subject: String, type: Symbol }
        )
      end
      def to_hash
      end
    end
  end
end
