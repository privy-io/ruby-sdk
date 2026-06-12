# typed: strong

module Privy
  module Models
    class KrakenEmbedStartIdentityInfo < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KrakenEmbedStartIdentityInfo, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(Date)) }
      attr_accessor :date_of_birth

      # User's full name including first, optional middle, and last name.
      sig { returns(T.nilable(Privy::KrakenEmbedFullName)) }
      attr_reader :full_name

      sig do
        params(full_name: T.nilable(Privy::KrakenEmbedFullName::OrHash)).void
      end
      attr_writer :full_name

      # Identity information hints including full name and date of birth for proof of
      # identity verification.
      sig do
        params(
          date_of_birth: T.nilable(Date),
          full_name: T.nilable(Privy::KrakenEmbedFullName::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(
        date_of_birth: nil,
        # User's full name including first, optional middle, and last name.
        full_name: nil
      )
      end

      sig do
        override.returns(
          {
            date_of_birth: T.nilable(Date),
            full_name: T.nilable(Privy::KrakenEmbedFullName)
          }
        )
      end
      def to_hash
      end
    end
  end
end
