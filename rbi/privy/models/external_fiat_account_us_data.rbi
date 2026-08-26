# typed: strong

module Privy
  module Models
    class ExternalFiatAccountUsData < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::ExternalFiatAccountUsData, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :account_number

      sig { returns(String) }
      attr_accessor :routing_number

      sig { returns(Privy::ExternalFiatAccountUsData::Type::OrSymbol) }
      attr_accessor :type

      sig { returns(T.nilable(String)) }
      attr_reader :checking_or_savings

      sig { params(checking_or_savings: String).void }
      attr_writer :checking_or_savings

      # US bank account data for an external fiat account.
      sig do
        params(
          account_number: String,
          routing_number: String,
          type: Privy::ExternalFiatAccountUsData::Type::OrSymbol,
          checking_or_savings: String
        ).returns(T.attached_class)
      end
      def self.new(
        account_number:,
        routing_number:,
        type:,
        checking_or_savings: nil
      )
      end

      sig do
        override.returns(
          {
            account_number: String,
            routing_number: String,
            type: Privy::ExternalFiatAccountUsData::Type::OrSymbol,
            checking_or_savings: String
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::ExternalFiatAccountUsData::Type) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        US = T.let(:us, Privy::ExternalFiatAccountUsData::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::ExternalFiatAccountUsData::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
