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

      sig { returns(T.nilable(Privy::KrakenEmbedStartIdentityInfo::FullName)) }
      attr_reader :full_name

      sig do
        params(
          full_name:
            T.nilable(Privy::KrakenEmbedStartIdentityInfo::FullName::OrHash)
        ).void
      end
      attr_writer :full_name

      # Identity information hints including full name and date of birth for proof of
      # identity verification.
      sig do
        params(
          date_of_birth: T.nilable(Date),
          full_name:
            T.nilable(Privy::KrakenEmbedStartIdentityInfo::FullName::OrHash)
        ).returns(T.attached_class)
      end
      def self.new(date_of_birth: nil, full_name: nil)
      end

      sig do
        override.returns(
          {
            date_of_birth: T.nilable(Date),
            full_name: T.nilable(Privy::KrakenEmbedStartIdentityInfo::FullName)
          }
        )
      end
      def to_hash
      end

      class FullName < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::KrakenEmbedStartIdentityInfo::FullName,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :first_name

        sig { returns(String) }
        attr_accessor :last_name

        sig { returns(T.nilable(String)) }
        attr_accessor :middle_name

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
end
