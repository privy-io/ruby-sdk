# typed: strong

module Privy
  module Models
    module Apps
      AllowlistListResponse =
        T.let(
          Privy::Internal::Type::ArrayOf[Privy::AllowlistEntry],
          Privy::Internal::Type::Converter
        )
    end
  end
end
