# typed: strong

module Privy
  module Models
    class AnalyticsEventInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AnalyticsEventInput, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :event_name

      sig { returns(T.nilable(String)) }
      attr_reader :client_id

      sig { params(client_id: String).void }
      attr_writer :client_id

      sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
      attr_reader :payload

      sig { params(payload: T::Hash[Symbol, T.anything]).void }
      attr_writer :payload

      # The input for capturing an analytics event.
      sig do
        params(
          event_name: String,
          client_id: String,
          payload: T::Hash[Symbol, T.anything]
        ).returns(T.attached_class)
      end
      def self.new(event_name:, client_id: nil, payload: nil)
      end

      sig do
        override.returns(
          {
            event_name: String,
            client_id: String,
            payload: T::Hash[Symbol, T.anything]
          }
        )
      end
      def to_hash
      end
    end
  end
end
