# typed: strong

module Privy
  module Models
    class OptionalRefreshTokenInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::OptionalRefreshTokenInput, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_reader :refresh_token

      sig { params(refresh_token: String).void }
      attr_writer :refresh_token

      # The input for refreshing a session or logging out.
      sig { params(refresh_token: String).returns(T.attached_class) }
      def self.new(refresh_token: nil)
      end

      sig { override.returns({ refresh_token: String }) }
      def to_hash
      end
    end
  end
end
