# typed: strong

module Privy
  module Models
    module Wallets
      class TmmfUserResponse < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Privy::Wallets::TmmfUserResponse, Privy::Internal::AnyHash)
          end

        # ID of the Privy user, which can be an organization.
        sig { returns(String) }
        attr_accessor :user_id

        # The user's registrations with tMMF providers.
        sig { returns(T::Array[Privy::Wallets::TmmfUserRegistration]) }
        attr_accessor :user_registrations

        # A page of wallets registered for the user with tMMF providers.
        sig { returns(T::Array[Privy::Wallets::TmmfUserWalletResponse]) }
        attr_accessor :wallet_registrations

        # Cursor of the next page of wallet registrations, or null on the last page.
        sig { returns(T.nilable(String)) }
        attr_accessor :wallets_next_cursor

        # A user's registration with each tMMF provider, and the wallets registered for
        # each.
        sig do
          params(
            user_id: String,
            user_registrations:
              T::Array[Privy::Wallets::TmmfUserRegistration::OrHash],
            wallet_registrations:
              T::Array[Privy::Wallets::TmmfUserWalletResponse::OrHash],
            wallets_next_cursor: T.nilable(String)
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the Privy user, which can be an organization.
          user_id:,
          # The user's registrations with tMMF providers.
          user_registrations:,
          # A page of wallets registered for the user with tMMF providers.
          wallet_registrations:,
          # Cursor of the next page of wallet registrations, or null on the last page.
          wallets_next_cursor:
        )
        end

        sig do
          override.returns(
            {
              user_id: String,
              user_registrations:
                T::Array[Privy::Wallets::TmmfUserRegistration],
              wallet_registrations:
                T::Array[Privy::Wallets::TmmfUserWalletResponse],
              wallets_next_cursor: T.nilable(String)
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
