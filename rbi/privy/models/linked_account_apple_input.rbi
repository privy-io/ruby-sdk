# typed: strong

module Privy
  module Models
    class LinkedAccountAppleInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountAppleInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :subject

      sig { returns(Symbol) }
      attr_accessor :type

      sig { returns(T.nilable(String)) }
      attr_reader :email

      sig { params(email: String).void }
      attr_writer :email

      # The payload for importing an Apple account.
      sig do
        params(subject: String, email: String, type: Symbol).returns(
          T.attached_class
        )
      end
      def self.new(subject:, email: nil, type: :apple_oauth)
      end

      sig { override.returns({ subject: String, type: Symbol, email: String }) }
      def to_hash
      end
    end
  end
end
