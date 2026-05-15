# typed: strong

module Privy
  module Models
    class KrakenEmbedCurrentDayPnl < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KrakenEmbedCurrentDayPnl, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :pnl

      sig { returns(Time) }
      attr_accessor :since

      # Current day profit and loss for a portfolio, calculated from the most recent
      # available balance.
      sig { params(pnl: String, since: Time).returns(T.attached_class) }
      def self.new(pnl:, since:)
      end

      sig { override.returns({ pnl: String, since: Time }) }
      def to_hash
      end
    end
  end
end
