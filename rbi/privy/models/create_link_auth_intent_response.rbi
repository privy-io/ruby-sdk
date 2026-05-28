# typed: strong

module Privy
  module Models
    class CreateLinkAuthIntentResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CreateLinkAuthIntentResponse, Privy::Internal::AnyHash)
        end

      # Auth intent created. Pass id to authenticate().
      sig do
        returns(
          T.any(Privy::LinkAuthIntentCreated, Privy::LinkAuthIntentNoAccount)
        )
      end
      attr_accessor :data

      # The created Link auth intent.
      sig do
        params(
          data:
            T.any(
              Privy::LinkAuthIntentCreated::OrHash,
              Privy::LinkAuthIntentNoAccount::OrHash
            )
        ).returns(T.attached_class)
      end
      def self.new(
        # Auth intent created. Pass id to authenticate().
        data:
      )
      end

      sig do
        override.returns(
          {
            data:
              T.any(
                Privy::LinkAuthIntentCreated,
                Privy::LinkAuthIntentNoAccount
              )
          }
        )
      end
      def to_hash
      end

      # Auth intent created. Pass id to authenticate().
      module Data
        extend Privy::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(Privy::LinkAuthIntentCreated, Privy::LinkAuthIntentNoAccount)
          end

        sig do
          override.returns(
            T::Array[Privy::CreateLinkAuthIntentResponse::Data::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
