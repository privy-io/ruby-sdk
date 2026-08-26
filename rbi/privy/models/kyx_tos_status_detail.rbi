# typed: strong

module Privy
  module Models
    class KyxTosStatusDetail < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::KyxTosStatusDetail, Privy::Internal::AnyHash)
        end

      # Status of Terms of Service acceptance. Passthrough from the provider.
      sig { returns(String) }
      attr_accessor :status

      # ToS acceptance link, if pending.
      sig { returns(T.nilable(String)) }
      attr_reader :link

      sig { params(link: String).void }
      attr_writer :link

      # Terms of Service acceptance status for a KYC or KYB flow.
      sig { params(status: String, link: String).returns(T.attached_class) }
      def self.new(
        # Status of Terms of Service acceptance. Passthrough from the provider.
        status:,
        # ToS acceptance link, if pending.
        link: nil
      )
      end

      sig { override.returns({ status: String, link: String }) }
      def to_hash
      end
    end
  end
end
