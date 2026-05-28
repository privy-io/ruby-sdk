# typed: strong

module Privy
  module Models
    class LinkAuthIntentCreated < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::LinkAuthIntentCreated, Privy::Internal::AnyHash)
        end

      # The Link auth intent ID.
      sig { returns(String) }
      attr_accessor :id

      sig { returns(Privy::LinkAuthIntentCreated::Status::OrSymbol) }
      attr_accessor :status

      # Auth intent created. Pass id to authenticate().
      sig do
        params(
          id: String,
          status: Privy::LinkAuthIntentCreated::Status::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(
        # The Link auth intent ID.
        id:,
        status:
      )
      end

      sig do
        override.returns(
          { id: String, status: Privy::LinkAuthIntentCreated::Status::OrSymbol }
        )
      end
      def to_hash
      end

      module Status
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::LinkAuthIntentCreated::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        CREATED =
          T.let(:created, Privy::LinkAuthIntentCreated::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::LinkAuthIntentCreated::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
