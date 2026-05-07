# typed: strong

module Privy
  module Models
    class MfaTotpInput < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::MfaTotpInput, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :code

      # The input for verifying a TOTP MFA code.
      sig { params(code: String).returns(T.attached_class) }
      def self.new(code:)
      end

      sig { override.returns({ code: String }) }
      def to_hash
      end
    end
  end
end
