# frozen_string_literal: true

module Privy
  module Models
    # The captcha provider enabled for an app.
    module CaptchaProvider
      extend Privy::Internal::Type::Enum

      TURNSTILE = :turnstile
      HCAPTCHA = :hcaptcha

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
