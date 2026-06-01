# typed: strong

module Privy
  module Models
    class FiatOnrampURLSessionResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::FiatOnrampURLSessionResponse, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :session_id

      sig { returns(Privy::FiatOnrampURLSessionResponse::Type::OrSymbol) }
      attr_accessor :type

      sig { returns(String) }
      attr_accessor :url

      # Provider session initialization for popup-based providers.
      sig do
        params(
          session_id: String,
          type: Privy::FiatOnrampURLSessionResponse::Type::OrSymbol,
          url: String
        ).returns(T.attached_class)
      end
      def self.new(session_id:, type:, url:)
      end

      sig do
        override.returns(
          {
            session_id: String,
            type: Privy::FiatOnrampURLSessionResponse::Type::OrSymbol,
            url: String
          }
        )
      end
      def to_hash
      end

      module Type
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::FiatOnrampURLSessionResponse::Type)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        URL =
          T.let(:url, Privy::FiatOnrampURLSessionResponse::Type::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::FiatOnrampURLSessionResponse::Type::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
