# typed: strong

module Privy
  module Models
    class KyxTosResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::KyxTosResponse, Privy::Internal::AnyHash) }

      # Provider environment (production or sandbox).
      sig { returns(Privy::KyxEnvironment::TaggedSymbol) }
      attr_accessor :environment

      # URL for the Terms of Service acceptance page.
      sig { returns(String) }
      attr_accessor :link

      # KYC/KYB provider identifier.
      sig { returns(Privy::KyxProvider::TaggedSymbol) }
      attr_accessor :provider

      # Status of Terms of Service acceptance. Passthrough from the provider.
      sig { returns(String) }
      attr_accessor :status

      # Response containing a Terms of Service link.
      sig do
        params(
          environment: Privy::KyxEnvironment::OrSymbol,
          link: String,
          provider: Privy::KyxProvider::OrSymbol,
          status: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Provider environment (production or sandbox).
        environment:,
        # URL for the Terms of Service acceptance page.
        link:,
        # KYC/KYB provider identifier.
        provider:,
        # Status of Terms of Service acceptance. Passthrough from the provider.
        status:
      )
      end

      sig do
        override.returns(
          {
            environment: Privy::KyxEnvironment::TaggedSymbol,
            link: String,
            provider: Privy::KyxProvider::TaggedSymbol,
            status: String
          }
        )
      end
      def to_hash
      end
    end
  end
end
