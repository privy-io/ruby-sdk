# frozen_string_literal: true

require "openssl"
require "jwt"

module Privy
  module Test
    module Integration
      module JwtHelpers
        def jwt_auth_subject
          ENV.fetch("JWT_AUTH_SUBJECT", "java-sdk-sub-id")
        end

        def generate_test_jwt
          raw = ENV.fetch("JWT_AUTH_SK")
          pem = raw.gsub('\n', "\n").gsub("\r", "").strip
          private_key = OpenSSL::PKey::RSA.new(pem)
          payload = {sub: jwt_auth_subject, exp: Time.now.to_i + 3600}
          JWT.encode(payload, private_key, "RS256", {typ: "JWT"})
        end

        def create_user_owned_wallet
          user = client.users.get_by_custom_auth_id(custom_user_id: jwt_auth_subject)
          client.wallets.create(wallet_create_params: {chain_type: :ethereum, owner: {user_id: user.id}})
        end
      end
    end
  end
end
