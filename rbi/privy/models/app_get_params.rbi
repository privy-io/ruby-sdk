# typed: strong

module Privy
  module Models
    class AppGetParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias { T.any(Privy::AppGetParams, Privy::Internal::AnyHash) }

      # The ID of the app.
      sig { returns(String) }
      attr_accessor :app_id

      sig do
        params(
          app_id: String,
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The ID of the app.
        app_id:,
        request_options: {}
      )
      end

      sig do
        override.returns(
          { app_id: String, request_options: Privy::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
