# typed: strong

module Privy
  module Models
    module Users
      class PasskeyMfaInitRequestBody < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Users::PasskeyMfaInitRequestBody,
              Privy::Internal::AnyHash
            )
          end

        # Origin where the authenticator runs, such as https://app.example.com.
        sig { returns(String) }
        attr_accessor :relying_party

        # Starts a passkey MFA ceremony for the specified relying party origin.
        sig { params(relying_party: String).returns(T.attached_class) }
        def self.new(
          # Origin where the authenticator runs, such as https://app.example.com.
          relying_party:
        )
        end

        sig { override.returns({ relying_party: String }) }
        def to_hash
        end
      end
    end
  end
end
