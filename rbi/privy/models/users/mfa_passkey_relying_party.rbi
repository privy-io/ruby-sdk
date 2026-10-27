# typed: strong

module Privy
  module Models
    module Users
      class MfaPasskeyRelyingParty < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::Users::MfaPasskeyRelyingParty,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Relying party information for a WebAuthn ceremony.
        sig { params(name: String, id: String).returns(T.attached_class) }
        def self.new(name:, id: nil)
        end

        sig { override.returns({ name: String, id: String }) }
        def to_hash
        end
      end
    end
  end
end
