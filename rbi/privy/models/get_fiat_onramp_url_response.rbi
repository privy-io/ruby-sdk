# typed: strong

module Privy
  module Models
    class GetFiatOnrampURLResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Privy::GetFiatOnrampURLResponse, Privy::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :session_id

      sig { returns(String) }
      attr_accessor :url

      # The response containing a fiat onramp provider session URL.
      sig { params(session_id: String, url: String).returns(T.attached_class) }
      def self.new(session_id:, url:)
      end

      sig { override.returns({ session_id: String, url: String }) }
      def to_hash
      end
    end
  end
end
