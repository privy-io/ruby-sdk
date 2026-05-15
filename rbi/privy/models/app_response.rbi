# typed: strong

module Privy
  module Models
    class AppResponse < Privy::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Privy::AppResponse, Privy::Internal::AnyHash) }

      sig { returns(String) }
      attr_accessor :id

      sig { returns(T.nilable(String)) }
      attr_accessor :accent_color

      sig { returns(T::Array[String]) }
      attr_accessor :allowed_domains

      sig { returns(T::Array[String]) }
      attr_accessor :allowed_native_app_ids

      sig { returns(T::Array[String]) }
      attr_accessor :allowed_native_app_url_schemes

      sig { returns(Privy::AppResponse::AllowlistConfig) }
      attr_reader :allowlist_config

      sig do
        params(
          allowlist_config: Privy::AppResponse::AllowlistConfig::OrHash
        ).void
      end
      attr_writer :allowlist_config

      sig { returns(T::Boolean) }
      attr_accessor :allowlist_enabled

      sig { returns(T::Boolean) }
      attr_accessor :apple_oauth

      sig { returns(T::Boolean) }
      attr_accessor :captcha_enabled

      sig { returns(T.nilable(String)) }
      attr_accessor :custom_api_url

      sig { returns(T::Boolean) }
      attr_accessor :custom_jwt_auth

      sig { returns(T::Array[Privy::AppResponse::CustomOAuthProvider]) }
      attr_accessor :custom_oauth_providers

      # Indicates that this response contains only publicly accessible data, not a
      # privileged resource
      sig { returns(Privy::AppResponse::DataClassification::TaggedSymbol) }
      attr_accessor :data_classification

      sig { returns(T::Boolean) }
      attr_accessor :disable_plus_emails

      sig { returns(T::Boolean) }
      attr_accessor :discord_oauth

      sig { returns(T::Boolean) }
      attr_accessor :email_auth

      # Configuration for embedded wallets including the mode.
      sig { returns(Privy::EmbeddedWalletConfigSchema) }
      attr_reader :embedded_wallet_config

      sig do
        params(
          embedded_wallet_config: Privy::EmbeddedWalletConfigSchema::OrHash
        ).void
      end
      attr_writer :embedded_wallet_config

      sig do
        returns(
          T.nilable(Privy::AppResponse::EnabledCaptchaProvider::TaggedSymbol)
        )
      end
      attr_accessor :enabled_captcha_provider

      sig { returns(T::Boolean) }
      attr_accessor :enforce_wallet_uis

      sig { returns(T::Boolean) }
      attr_accessor :farcaster_auth

      sig { returns(T::Boolean) }
      attr_accessor :farcaster_link_wallets_enabled

      sig { returns(T::Boolean) }
      attr_accessor :fiat_on_ramp_enabled

      sig { returns(T::Boolean) }
      attr_accessor :github_oauth

      sig { returns(T::Boolean) }
      attr_accessor :google_oauth

      sig { returns(T::Boolean) }
      attr_accessor :guest_auth

      sig { returns(T.nilable(String)) }
      attr_accessor :icon_url

      sig { returns(T::Boolean) }
      attr_accessor :instagram_oauth

      sig { returns(T::Boolean) }
      attr_accessor :legacy_wallet_ui_config

      sig { returns(T::Boolean) }
      attr_accessor :line_oauth

      sig { returns(T::Boolean) }
      attr_accessor :linkedin_oauth

      sig { returns(T.nilable(String)) }
      attr_accessor :logo_url

      sig { returns(T.nilable(Float)) }
      attr_accessor :max_linked_wallets_per_user

      sig { returns(T::Array[Privy::AppResponse::MfaMethod::TaggedSymbol]) }
      attr_accessor :mfa_methods

      sig { returns(String) }
      attr_accessor :name

      sig { returns(T::Boolean) }
      attr_accessor :passkey_auth

      sig { returns(T::Boolean) }
      attr_accessor :passkeys_for_signup_enabled

      sig { returns(T.nilable(String)) }
      attr_accessor :privacy_policy_url

      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :require_users_accept_terms

      sig { returns(T::Boolean) }
      attr_accessor :show_wallet_login_first

      # The configuration object for smart wallets.
      sig { returns(Privy::SmartWalletConfiguration::Variants) }
      attr_accessor :smart_wallet_config

      sig { returns(T::Boolean) }
      attr_accessor :sms_auth

      sig { returns(T::Boolean) }
      attr_accessor :solana_wallet_auth

      sig { returns(T::Boolean) }
      attr_accessor :spotify_oauth

      sig { returns(T::Boolean) }
      attr_accessor :telegram_auth

      sig { returns(T::Boolean) }
      attr_accessor :telegram_oauth

      sig { returns(T.nilable(String)) }
      attr_accessor :terms_and_conditions_url

      sig { returns(String) }
      attr_accessor :theme

      sig { returns(T::Boolean) }
      attr_accessor :tiktok_oauth

      sig { returns(T::Boolean) }
      attr_accessor :twitch_oauth

      sig { returns(T::Boolean) }
      attr_accessor :twitter_oauth

      sig { returns(T::Boolean) }
      attr_accessor :twitter_oauth_on_mobile_enabled

      sig { returns(String) }
      attr_accessor :verification_key

      sig { returns(T::Boolean) }
      attr_accessor :wallet_auth

      sig { returns(T.nilable(String)) }
      attr_accessor :wallet_connect_cloud_project_id

      sig { returns(T::Boolean) }
      attr_accessor :whatsapp_enabled

      sig { returns(T.nilable(String)) }
      attr_reader :captcha_site_key

      sig { params(captcha_site_key: String).void }
      attr_writer :captcha_site_key

      # Configuration for funding and on-ramp options.
      sig { returns(T.nilable(Privy::FundingConfigResponseSchema)) }
      attr_reader :funding_config

      sig do
        params(funding_config: Privy::FundingConfigResponseSchema::OrHash).void
      end
      attr_writer :funding_config

      # Configuration for Telegram authentication.
      sig { returns(T.nilable(Privy::TelegramAuthConfigSchema)) }
      attr_reader :telegram_auth_config

      sig do
        params(
          telegram_auth_config: Privy::TelegramAuthConfigSchema::OrHash
        ).void
      end
      attr_writer :telegram_auth_config

      # The response for getting an app.
      sig do
        params(
          id: String,
          accent_color: T.nilable(String),
          allowed_domains: T::Array[String],
          allowed_native_app_ids: T::Array[String],
          allowed_native_app_url_schemes: T::Array[String],
          allowlist_config: Privy::AppResponse::AllowlistConfig::OrHash,
          allowlist_enabled: T::Boolean,
          apple_oauth: T::Boolean,
          captcha_enabled: T::Boolean,
          custom_api_url: T.nilable(String),
          custom_jwt_auth: T::Boolean,
          custom_oauth_providers:
            T::Array[Privy::AppResponse::CustomOAuthProvider::OrHash],
          data_classification: Privy::AppResponse::DataClassification::OrSymbol,
          disable_plus_emails: T::Boolean,
          discord_oauth: T::Boolean,
          email_auth: T::Boolean,
          embedded_wallet_config: Privy::EmbeddedWalletConfigSchema::OrHash,
          enabled_captcha_provider:
            T.nilable(Privy::AppResponse::EnabledCaptchaProvider::OrSymbol),
          enforce_wallet_uis: T::Boolean,
          farcaster_auth: T::Boolean,
          farcaster_link_wallets_enabled: T::Boolean,
          fiat_on_ramp_enabled: T::Boolean,
          github_oauth: T::Boolean,
          google_oauth: T::Boolean,
          guest_auth: T::Boolean,
          icon_url: T.nilable(String),
          instagram_oauth: T::Boolean,
          legacy_wallet_ui_config: T::Boolean,
          line_oauth: T::Boolean,
          linkedin_oauth: T::Boolean,
          logo_url: T.nilable(String),
          max_linked_wallets_per_user: T.nilable(Float),
          mfa_methods: T::Array[Privy::AppResponse::MfaMethod::OrSymbol],
          name: String,
          passkey_auth: T::Boolean,
          passkeys_for_signup_enabled: T::Boolean,
          privacy_policy_url: T.nilable(String),
          require_users_accept_terms: T.nilable(T::Boolean),
          show_wallet_login_first: T::Boolean,
          smart_wallet_config:
            T.any(
              Privy::SmartWalletConfigurationDisabled::OrHash,
              Privy::SmartWalletConfigurationEnabled::OrHash
            ),
          sms_auth: T::Boolean,
          solana_wallet_auth: T::Boolean,
          spotify_oauth: T::Boolean,
          telegram_auth: T::Boolean,
          telegram_oauth: T::Boolean,
          terms_and_conditions_url: T.nilable(String),
          theme: String,
          tiktok_oauth: T::Boolean,
          twitch_oauth: T::Boolean,
          twitter_oauth: T::Boolean,
          twitter_oauth_on_mobile_enabled: T::Boolean,
          verification_key: String,
          wallet_auth: T::Boolean,
          wallet_connect_cloud_project_id: T.nilable(String),
          whatsapp_enabled: T::Boolean,
          captcha_site_key: String,
          funding_config: Privy::FundingConfigResponseSchema::OrHash,
          telegram_auth_config: Privy::TelegramAuthConfigSchema::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        id:,
        accent_color:,
        allowed_domains:,
        allowed_native_app_ids:,
        allowed_native_app_url_schemes:,
        allowlist_config:,
        allowlist_enabled:,
        apple_oauth:,
        captcha_enabled:,
        custom_api_url:,
        custom_jwt_auth:,
        custom_oauth_providers:,
        # Indicates that this response contains only publicly accessible data, not a
        # privileged resource
        data_classification:,
        disable_plus_emails:,
        discord_oauth:,
        email_auth:,
        # Configuration for embedded wallets including the mode.
        embedded_wallet_config:,
        enabled_captcha_provider:,
        enforce_wallet_uis:,
        farcaster_auth:,
        farcaster_link_wallets_enabled:,
        fiat_on_ramp_enabled:,
        github_oauth:,
        google_oauth:,
        guest_auth:,
        icon_url:,
        instagram_oauth:,
        legacy_wallet_ui_config:,
        line_oauth:,
        linkedin_oauth:,
        logo_url:,
        max_linked_wallets_per_user:,
        mfa_methods:,
        name:,
        passkey_auth:,
        passkeys_for_signup_enabled:,
        privacy_policy_url:,
        require_users_accept_terms:,
        show_wallet_login_first:,
        # The configuration object for smart wallets.
        smart_wallet_config:,
        sms_auth:,
        solana_wallet_auth:,
        spotify_oauth:,
        telegram_auth:,
        telegram_oauth:,
        terms_and_conditions_url:,
        theme:,
        tiktok_oauth:,
        twitch_oauth:,
        twitter_oauth:,
        twitter_oauth_on_mobile_enabled:,
        verification_key:,
        wallet_auth:,
        wallet_connect_cloud_project_id:,
        whatsapp_enabled:,
        captcha_site_key: nil,
        # Configuration for funding and on-ramp options.
        funding_config: nil,
        # Configuration for Telegram authentication.
        telegram_auth_config: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            accent_color: T.nilable(String),
            allowed_domains: T::Array[String],
            allowed_native_app_ids: T::Array[String],
            allowed_native_app_url_schemes: T::Array[String],
            allowlist_config: Privy::AppResponse::AllowlistConfig,
            allowlist_enabled: T::Boolean,
            apple_oauth: T::Boolean,
            captcha_enabled: T::Boolean,
            custom_api_url: T.nilable(String),
            custom_jwt_auth: T::Boolean,
            custom_oauth_providers:
              T::Array[Privy::AppResponse::CustomOAuthProvider],
            data_classification:
              Privy::AppResponse::DataClassification::TaggedSymbol,
            disable_plus_emails: T::Boolean,
            discord_oauth: T::Boolean,
            email_auth: T::Boolean,
            embedded_wallet_config: Privy::EmbeddedWalletConfigSchema,
            enabled_captcha_provider:
              T.nilable(
                Privy::AppResponse::EnabledCaptchaProvider::TaggedSymbol
              ),
            enforce_wallet_uis: T::Boolean,
            farcaster_auth: T::Boolean,
            farcaster_link_wallets_enabled: T::Boolean,
            fiat_on_ramp_enabled: T::Boolean,
            github_oauth: T::Boolean,
            google_oauth: T::Boolean,
            guest_auth: T::Boolean,
            icon_url: T.nilable(String),
            instagram_oauth: T::Boolean,
            legacy_wallet_ui_config: T::Boolean,
            line_oauth: T::Boolean,
            linkedin_oauth: T::Boolean,
            logo_url: T.nilable(String),
            max_linked_wallets_per_user: T.nilable(Float),
            mfa_methods: T::Array[Privy::AppResponse::MfaMethod::TaggedSymbol],
            name: String,
            passkey_auth: T::Boolean,
            passkeys_for_signup_enabled: T::Boolean,
            privacy_policy_url: T.nilable(String),
            require_users_accept_terms: T.nilable(T::Boolean),
            show_wallet_login_first: T::Boolean,
            smart_wallet_config: Privy::SmartWalletConfiguration::Variants,
            sms_auth: T::Boolean,
            solana_wallet_auth: T::Boolean,
            spotify_oauth: T::Boolean,
            telegram_auth: T::Boolean,
            telegram_oauth: T::Boolean,
            terms_and_conditions_url: T.nilable(String),
            theme: String,
            tiktok_oauth: T::Boolean,
            twitch_oauth: T::Boolean,
            twitter_oauth: T::Boolean,
            twitter_oauth_on_mobile_enabled: T::Boolean,
            verification_key: String,
            wallet_auth: T::Boolean,
            wallet_connect_cloud_project_id: T.nilable(String),
            whatsapp_enabled: T::Boolean,
            captcha_site_key: String,
            funding_config: Privy::FundingConfigResponseSchema,
            telegram_auth_config: Privy::TelegramAuthConfigSchema
          }
        )
      end
      def to_hash
      end

      class AllowlistConfig < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Privy::AppResponse::AllowlistConfig, Privy::Internal::AnyHash)
          end

        sig { returns(T.nilable(String)) }
        attr_accessor :cta_link

        sig { returns(T.nilable(String)) }
        attr_accessor :cta_text

        sig { returns(T.nilable(String)) }
        attr_accessor :error_detail

        sig { returns(T.nilable(String)) }
        attr_accessor :error_title

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

      class CustomOAuthProvider < Privy::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Privy::AppResponse::CustomOAuthProvider,
              Privy::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :enabled

        # The ID of a custom OAuth provider, set up for this app. Must start with
        # "custom:".
        sig { returns(String) }
        attr_accessor :provider

        sig { returns(String) }
        attr_accessor :provider_display_name

        sig { returns(String) }
        attr_accessor :provider_icon_url

        sig do
          params(
            enabled: T::Boolean,
            provider: String,
            provider_display_name: String,
            provider_icon_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          enabled:,
          # The ID of a custom OAuth provider, set up for this app. Must start with
          # "custom:".
          provider:,
          provider_display_name:,
          provider_icon_url:
        )
        end

        sig do
          override.returns(
            {
              enabled: T::Boolean,
              provider: String,
              provider_display_name: String,
              provider_icon_url: String
            }
          )
        end
        def to_hash
        end
      end

      # Indicates that this response contains only publicly accessible data, not a
      # privileged resource
      module DataClassification
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::AppResponse::DataClassification) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PUBLIC =
          T.let(:public, Privy::AppResponse::DataClassification::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::AppResponse::DataClassification::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module EnabledCaptchaProvider
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, Privy::AppResponse::EnabledCaptchaProvider)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        TURNSTILE =
          T.let(
            :turnstile,
            Privy::AppResponse::EnabledCaptchaProvider::TaggedSymbol
          )
        HCAPTCHA =
          T.let(
            :hcaptcha,
            Privy::AppResponse::EnabledCaptchaProvider::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[Privy::AppResponse::EnabledCaptchaProvider::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module MfaMethod
        extend Privy::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Privy::AppResponse::MfaMethod) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        SMS = T.let(:sms, Privy::AppResponse::MfaMethod::TaggedSymbol)
        TOTP = T.let(:totp, Privy::AppResponse::MfaMethod::TaggedSymbol)
        PASSKEY = T.let(:passkey, Privy::AppResponse::MfaMethod::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Privy::AppResponse::MfaMethod::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
