# typed: strong

module Privy
  module Models
    class KYBStatusListResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KYBStatusListResponse, Privy::Internal::AnyHash)
        end

      sig { returns(T::Array[Privy::KYBStatusResponse]) }
      attr_accessor :kyb_statuses

      sig { returns(T.nilable(String)) }
      attr_accessor :next_cursor

      # List of KYB status snapshots, one per configured provider/environment.
      sig do
        params(
          kyb_statuses: T::Array[Privy::KYBStatusResponse::OrHash],
          next_cursor: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(kyb_statuses:, next_cursor:)
      end

      sig do
        override.returns(
          {
            kyb_statuses: T::Array[Privy::KYBStatusResponse],
            next_cursor: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
