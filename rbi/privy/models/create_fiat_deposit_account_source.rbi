# typed: strong

module Privy
  module Models
    class CreateFiatDepositAccountSource < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::CreateFiatDepositAccountSource, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :currency

      # The source fiat currency for a fiat deposit account.
      sig { params(currency: String).returns(T.attached_class) }
      def self.new(currency:)
      end

      sig { override.returns({ currency: String }) }
      def to_hash
      end
    end
  end
end
