# typed: strong

module Privy
  module Models
    class KrakenEmbedFullName < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KrakenEmbedFullName, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :first_name

      sig { returns(String) }
      attr_accessor :last_name

      sig { returns(T.nilable(String)) }
      attr_accessor :middle_name

      # User's full name including first, optional middle, and last name.
      sig do
        params(
          first_name: String,
          last_name: String,
          middle_name: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(first_name:, last_name:, middle_name: nil)
      end

      sig do
        override.returns(
          {
            first_name: String,
            last_name: String,
            middle_name: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
