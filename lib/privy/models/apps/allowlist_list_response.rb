# frozen_string_literal: true

module Privy
  module Models
    module Apps
      # @type [Privy::Internal::Type::Converter]
      AllowlistListResponse = Privy::Internal::Type::ArrayOf[-> { Privy::AllowlistEntry }]
    end
  end
end
