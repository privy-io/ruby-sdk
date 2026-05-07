# typed: strong

module Privy
  module Models
    class LinkedAccountInstagramInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountInstagramInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :subject

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :username

      # The payload for importing an Instagram account.
      sig do
        params(subject: String, username: String, type: Symbol).returns(
          T.attached_class
        )
      end
      def self.new(subject:, username:, type: :instagram_oauth)
      end

      sig do
        override.returns({ subject: String, type: Symbol, username: String })
      end
      def to_hash
      end
    end
  end
end
