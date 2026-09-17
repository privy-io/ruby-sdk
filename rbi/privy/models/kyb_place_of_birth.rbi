# typed: strong

module Privy
  module Models
    class KYBPlaceOfBirth < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::KYBPlaceOfBirth, Privy::Internal::AnyHash) }

      # ISO 3166-1 alpha-3 country code.
      sig { returns(String) }
      attr_accessor :country

      # City of birth.
      sig { returns(T.nilable(String)) }
      attr_reader :city

      sig { params(city: String).void }
      attr_writer :city

      # Place of birth for an associated person.
      sig { params(country: String, city: String).returns(T.attached_class) }
      def self.new(
        # ISO 3166-1 alpha-3 country code.
        country:,
        # City of birth.
        city: nil
      )
      end

      sig { override.returns({ country: String, city: String }) }
      def to_hash
      end
    end
  end
end
