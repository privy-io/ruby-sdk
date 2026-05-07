# typed: strong

module Privy
  module Models
    # The ID of an OAuth provider.
    module OAuthProviderID
      extend Privy::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(Privy::ExternalOAuthProviderID::TaggedSymbol, String)
        end

      sig { override.returns(T::Array[Privy::OAuthProviderID::Variants]) }
      def self.variants
      end
    end
  end
end
