# typed: strong

module Privy
  module Models
    class KyxScreen < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::KyxScreen, Privy::Internal::AnyHash) }

      # Outcome of a screen performed under KYC/KYB reliance.
      sig { returns(Privy::KyxScreenResult::OrSymbol) }
      attr_accessor :result

      # When the screen was performed (ISO 8601 date or date-time).
      sig { returns(Privy::KyxScreen::ScreenedAt::Variants) }
      attr_accessor :screened_at

      # Result of a KYC/AML or OFAC screen you performed and are relying on the provider
      # to accept, honoured only for developers enrolled in reliance.
      sig do
        params(
          result: Privy::KyxScreenResult::OrSymbol,
          screened_at: Privy::KyxScreen::ScreenedAt::Variants
        ).returns(T.attached_class)
      end
      def self.new(
        # Outcome of a screen performed under KYC/KYB reliance.
        result:,
        # When the screen was performed (ISO 8601 date or date-time).
        screened_at:
      )
      end

      sig do
        override.returns(
          {
            result: Privy::KyxScreenResult::OrSymbol,
            screened_at: Privy::KyxScreen::ScreenedAt::Variants
          }
        )
      end
      def to_hash
      end

      # When the screen was performed (ISO 8601 date or date-time).
      module ScreenedAt
        extend Privy::Internal::Type::Union

        Variants = T.type_alias { T.any(Time, Date) }

        sig do
          override.returns(T::Array[Privy::KyxScreen::ScreenedAt::Variants])
        end
        def self.variants
        end
      end
    end
  end
end
