# frozen_string_literal: true

require "openssl"
require "jwt"
require "securerandom"

module Privy
  module Test
    module Integration
      module JwtHelpers
        # A unique custom-auth subject per test instance. Memoized so the JWT
        # `sub` claim and the user's custom_auth_id stay in lockstep within one
        # test, while Minitest's per-test instance gives us a fresh value across
        # tests and runs. This avoids accumulating wallets under a single shared
        # user (which trips the per-user wallet limit on staging).
        def jwt_auth_subject
          @jwt_auth_subject ||= "ruby-sdk-test-#{SecureRandom.uuid}"
        end

        def generate_test_jwt
          # Ensure the Privy user exists before handing out a JWT for them; the
          # API endpoints that accept these JWTs (e.g. /wallets/authenticate)
          # 404 when the subject has never been linked to a user.
          jwt_auth_user
          raw = ENV.fetch("JWT_AUTH_SK")
          pem = raw.gsub('\n', "\n").gsub("\r", "").strip
          private_key = OpenSSL::PKey::RSA.new(pem)
          payload = {sub: jwt_auth_subject, exp: Time.now.to_i + 3600}
          JWT.encode(payload, private_key, "RS256", {typ: "JWT"})
        end

        # Lazily creates a Privy user backed by a fresh custom-auth subject and
        # returns it. Subsequent calls within the same test return the same user.
        def jwt_auth_user
          @jwt_auth_user ||= client.users.create(
            user_create_params: {
              linked_accounts: [{type: :custom_auth, custom_user_id: jwt_auth_subject}]
            }
          )
        end

        def create_user_owned_wallet(chain_type: :ethereum)
          client.wallets.create(
            wallet_create_params: {chain_type: chain_type, owner: {user_id: jwt_auth_user.id}}
          )
        end
      end
    end
  end
end
