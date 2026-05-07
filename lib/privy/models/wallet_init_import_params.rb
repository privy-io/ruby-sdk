# frozen_string_literal: true

module Privy
  module Models
    # @see Privy::Resources::Wallets#_init_import
    class WalletInitImportParams < Privy::Internal::Type::BaseModel
      extend Privy::Internal::Type::RequestParameters::Converter
      include Privy::Internal::Type::RequestParameters

      # @!attribute body
      #   The input for HD wallets.
      #
      #   @return [Privy::Models::HDInitInput, Privy::Models::PrivateKeyInitInput]
      required :body, union: -> { Privy::WalletInitImportParams::Body }

      # @!method initialize(body:, request_options: {})
      #   @param body [Privy::Models::HDInitInput, Privy::Models::PrivateKeyInitInput] The input for HD wallets.
      #
      #   @param request_options [Privy::RequestOptions, Hash{Symbol=>Object}]

      # The input for HD wallets.
      module Body
        extend Privy::Internal::Type::Union

        discriminator :entropy_type

        # The input for HD wallets.
        variant :hd, -> { Privy::HDInitInput }

        # The input for private key wallets.
        variant :"private-key", -> { Privy::PrivateKeyInitInput }

        # @!method self.variants
        #   @return [Array(Privy::Models::HDInitInput, Privy::Models::PrivateKeyInitInput)]
      end
    end
  end
end
