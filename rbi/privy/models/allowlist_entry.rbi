# typed: strong

module Privy
  module Models
    class AllowlistEntry < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::AllowlistEntry, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(Float)) }
      attr_accessor :accepted_at

      sig { returns(String) }
      attr_accessor :app_id

      sig { returns(String) }
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :value

      # An allowlist entry for an app.
      sig do
        params(
          id: String,
          accepted_at: T.nilable(Float),
          app_id: String,
          type: String,
          value: String
        ).returns(T.attached_class)
      end
      def self.new(id:, accepted_at:, app_id:, type:, value:)
      end

      sig do
        override.returns(
          {
            id: String,
            accepted_at: T.nilable(Float),
            app_id: String,
            type: String,
            value: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
