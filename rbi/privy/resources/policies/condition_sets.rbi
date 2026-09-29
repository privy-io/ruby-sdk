# typed: strong

module Privy
  module Resources
    class Policies
      # Operations related to policies
      class ConditionSets
        # List condition sets in an app.
        sig do
          params(
            cursor: String,
            limit: T.nilable(Float),
            request_options: Privy::RequestOptions::OrHash
          ).returns(Privy::Internal::Cursor[Privy::ConditionSet])
        end
        def list(
          # Cursor returned by the previous page.
          cursor: nil,
          limit: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Privy::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
