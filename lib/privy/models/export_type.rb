# frozen_string_literal: true

module Privy
  module Models
    # The export type. 'display' is for showing the key to the user in the UI,
    # 'client' is for exporting to the client application.
    module ExportType
      extend Privy::Internal::Type::Enum

      DISPLAY = :display
      CLIENT = :client

      # @!method self.values
      #   @return [Array<Symbol>]
    end
  end
end
