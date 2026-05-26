# typed: strong

module Privy
  module Models
    class CreateLinkAuthIntentResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CreateLinkAuthIntentResponse, Privy::Internal::AnyHash)
        end

      # The Link auth intent ID used to initiate authentication.
      sig { returns(String) }
      attr_accessor :id

      # The created Link auth intent.
      sig { params(id: String).returns(T.attached_class) }
      def self.new(
        # The Link auth intent ID used to initiate authentication.
        id:
      )
      end

      sig { override.returns({ id: String }) }
      def to_hash
      end
    end
  end
end
