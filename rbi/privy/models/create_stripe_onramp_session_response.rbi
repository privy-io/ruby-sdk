# typed: strong

module Privy
  module Models
    class CreateStripeOnrampSessionResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            Privy::CreateStripeOnrampSessionResponse,
            Privy::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :session_id

      # The created onramp session.
      sig { params(id: String, session_id: String).returns(T.attached_class) }
      def self.new(id:, session_id:)
      end

      sig { override.returns({ id: String, session_id: String }) }
      def to_hash
      end
    end
  end
end
