# typed: strong

module Privy
  module Models
    class ExternalFiatAccountAddress < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ExternalFiatAccountAddress, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :city

      sig { returns(String) }
      attr_accessor :country

      sig { returns(String) }
      attr_accessor :street_line_1

      sig { returns(T.nilable(String)) }
      attr_reader :postal_code

      sig { params(postal_code: String).void }
      attr_writer :postal_code

      sig { returns(T.nilable(String)) }
      attr_reader :state

      sig { params(state: String).void }
      attr_writer :state

      sig { returns(T.nilable(String)) }
      attr_reader :street_line_2

      sig { params(street_line_2: String).void }
      attr_writer :street_line_2

      # Physical address associated with an external fiat account.
      sig do
        params(
          city: String,
          country: String,
          street_line_1: String,
          postal_code: String,
          state: String,
          street_line_2: String
        ).returns(T.attached_class)
      end
      def self.new(
        city:,
        country:,
        street_line_1:,
        postal_code: nil,
        state: nil,
        street_line_2: nil
      )
      end

      sig do
        override.returns(
          {
            city: String,
            country: String,
            street_line_1: String,
            postal_code: String,
            state: String,
            street_line_2: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
