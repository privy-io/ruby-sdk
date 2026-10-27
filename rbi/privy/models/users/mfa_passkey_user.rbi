# typed: strong

module Privy
  module Models
    MfaPasskeyUser = Users::MfaPasskeyUser

    module Users
      class MfaPasskeyUser < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Privy::Users::MfaPasskeyUser, Privy::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :display_name

        sig { returns(String) }
        attr_accessor :name

        # User entity for a WebAuthn registration ceremony.
        sig do
          params(id: String, display_name: String, name: String).returns(
            T.attached_class
          )
        end
        def self.new(id:, display_name:, name:)
        end

        sig do
          override.returns({ id: String, display_name: String, name: String })
        end
        def to_hash
        end
      end
    end
  end
end
