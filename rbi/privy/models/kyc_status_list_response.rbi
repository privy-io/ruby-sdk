# typed: strong

module Privy
  module Models
    class KYCStatusListResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KYCStatusListResponse, Privy::Internal::AnyHash)
        end

      sig { returns(T::Array[Privy::KYCStatusResponse]) }
      attr_accessor :kyc_statuses

      sig { returns(T.nilable(String)) }
      attr_accessor :next_cursor

      # List of KYC status snapshots, one per configured provider/environment.
      sig do
        params(
          kyc_statuses: T::Array[Privy::KYCStatusResponse::OrHash],
          next_cursor: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(kyc_statuses:, next_cursor:)
      end

      sig do
        override.returns(
          {
            kyc_statuses: T::Array[Privy::KYCStatusResponse],
            next_cursor: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
