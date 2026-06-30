# typed: strong

module Privy
  module Models
    class AppAllowlistConfig < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::AppAllowlistConfig, Privy::Internal::AnyHash)
        end

      sig { returns(T.nilable(String)) }
      attr_accessor :cta_link

      sig { returns(T.nilable(String)) }
      attr_accessor :cta_text

      sig { returns(T.nilable(String)) }
      attr_accessor :error_detail

      sig { returns(T.nilable(String)) }
      attr_accessor :error_title

      # Configuration for the allowlist error page shown to users not on the allowlist.
      sig do
        params(
          cta_link: T.nilable(String),
          cta_text: T.nilable(String),
          error_detail: T.nilable(String),
          error_title: T.nilable(String)
        ).returns(T.attached_class)
      end
      def self.new(cta_link:, cta_text:, error_detail:, error_title:)
      end

      sig do
        override.returns(
          {
            cta_link: T.nilable(String),
            cta_text: T.nilable(String),
            error_detail: T.nilable(String),
            error_title: T.nilable(String)
          }
        )
      end
      def to_hash
      end
    end
  end
end
