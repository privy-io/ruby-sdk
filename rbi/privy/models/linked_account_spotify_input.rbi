# typed: strong

module Privy
  module Models
    class LinkedAccountSpotifyInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkedAccountSpotifyInput, Privy::Internal::AnyHash)
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

      # The payload for importing a Spotify account.
      sig do
        params(
          subject: String,
          email: String,
          name: String,
          type: Symbol
        ).returns(T.attached_class)
      end
      def self.new(subject:, email: nil, name: nil, type: :spotify_oauth)
      end

      sig do
        override.returns(
          { subject: String, type: Symbol, email: String, name: String }
        )
      end
      def to_hash
      end
    end
  end
end
