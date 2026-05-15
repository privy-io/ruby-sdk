# typed: strong

module Privy
  module Models
    class SuccessResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::SuccessResponse, Privy::Internal::AnyHash) }

      sig { returns(T::Boolean) }
      attr_accessor :success

      # A simple success response.
      sig { params(success: T::Boolean).returns(T.attached_class) }
      def self.new(success:)
      end

      sig { override.returns({ success: T::Boolean }) }
      def to_hash
      end
    end
  end
end
