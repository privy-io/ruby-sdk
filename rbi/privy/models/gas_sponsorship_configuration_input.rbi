# typed: strong

module Privy
  module Models
    class GasSponsorshipConfigurationInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::GasSponsorshipConfigurationInput,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(T.nilable(T::Array[String])) }
      attr_reader :configured_networks

      sig { params(configured_networks: T::Array[String]).void }
      attr_writer :configured_networks

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :require_app_secret

      sig { params(require_app_secret: T::Boolean).void }
      attr_writer :require_app_secret

      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :sponsorship_enabled

      sig { params(sponsorship_enabled: T::Boolean).void }
      attr_writer :sponsorship_enabled

      # Input for configuring gas sponsorship settings for an app.
      sig do
        params(
          configured_networks: T::Array[String],
          require_app_secret: T::Boolean,
          sponsorship_enabled: T::Boolean
        ).returns(T.attached_class)
      end
      def self.new(
        configured_networks: nil,
        require_app_secret: nil,
        sponsorship_enabled: nil
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
