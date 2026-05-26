# typed: strong

module Privy
  module Resources
    class Onramps
      # @api private
      sig { params(client: Privy::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
