# typed: strong

module Privy
  module Models
    class GasSponsorshipConfiguration < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::GasSponsorshipConfiguration, Privy::Internal::AnyHash)
        end

      sig { returns(T::Array[String]) }
      attr_accessor :configured_networks

      sig { returns(T::Boolean) }
      attr_accessor :require_app_secret

      sig { returns(T::Boolean) }
      attr_accessor :sponsorship_enabled

      # Gas sponsorship configuration for an app.
      sig do
        params(
          configured_networks: T::Array[String],
          require_app_secret: T::Boolean,
          sponsorship_enabled: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        configured_networks:,
        require_app_secret:,
        sponsorship_enabled:
      )
      end

      sig do
        override.returns(
          {
            configured_networks: T::Array[String],
            require_app_secret: T::Boolean,
            sponsorship_enabled: T::Boolean
          }
        )
      end
      def to_hash
      end
    end
  end
end
