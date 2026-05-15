# typed: strong

module Privy
  module Models
    class UserGetByFarcasterIDParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Privy::UserGetByFarcasterIDParams, Privy::Internal::AnyHash)
        end

      sig { returns(Float) }
      attr_accessor :fid

      sig do
        params(
          fid: Float,
          request_options: Privy::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(fid:, request_options: {})
      end

      sig do
        override.returns({ fid: Float, request_options: Privy::RequestOptions })
      end
      def to_hash
      end
    end
  end
end
