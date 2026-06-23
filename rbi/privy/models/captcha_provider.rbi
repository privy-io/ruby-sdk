# typed: strong

module Privy
  module Models
    # The captcha provider enabled for an app.
    module CaptchaProvider
      extend Privy::Internal::Type::Enum

      TaggedSymbol = T.type_alias { T.all(Symbol, Privy::CaptchaProvider) }
      OrSymbol = T.type_alias { T.any(Symbol, String) }

      TURNSTILE = T.let(:turnstile, Privy::CaptchaProvider::TaggedSymbol)
      HCAPTCHA = T.let(:hcaptcha, Privy::CaptchaProvider::TaggedSymbol)

      sig { override.returns(T::Array[Privy::CaptchaProvider::TaggedSymbol]) }
      def self.values
      end
    end
  end
end
