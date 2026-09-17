# typed: strong

module Privy
  module Models
    class VerificationAddress < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::VerificationAddress, Privy::Internal::AnyHash)
        end

      # City.
      sig { returns(String) }
      attr_accessor :city

      # ISO 3166-1 alpha-3 country code.
      sig { returns(String) }
      attr_accessor :country

      # Street address line 1.
      sig { returns(String) }
      attr_accessor :street_line_1

      # Postal code. Required for countries that use them.
      sig { returns(T.nilable(String)) }
      attr_reader :postal_code

      sig { params(postal_code: String).void }
      attr_writer :postal_code

      # Street address line 2.
      sig { returns(T.nilable(String)) }
      attr_reader :street_line_2

      sig { params(street_line_2: String).void }
      attr_writer :street_line_2

      # ISO 3166-2 state or province code. Required for US addresses.
      sig { returns(T.nilable(String)) }
      attr_reader :subdivision

      sig { params(subdivision: String).void }
      attr_writer :subdivision

      # A postal address used in KYC and KYB data submission.
      sig do
        params(
          city: String,
          country: String,
          street_line_1: String,
          postal_code: String,
          street_line_2: String,
          subdivision: String
        ).returns(T.attached_class)
      end
      def self.new(
        # City.
        city:,
        # ISO 3166-1 alpha-3 country code.
        country:,
        # Street address line 1.
        street_line_1:,
        # Postal code. Required for countries that use them.
        postal_code: nil,
        # Street address line 2.
        street_line_2: nil,
        # ISO 3166-2 state or province code. Required for US addresses.
        subdivision: nil
      )
      end

      sig do
        override.returns(
          {
            city: String,
            country: String,
            street_line_1: String,
            postal_code: String,
            street_line_2: String,
            subdivision: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
