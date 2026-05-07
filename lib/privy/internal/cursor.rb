# frozen_string_literal: true

module Privy
  module Internal
    # @generic Elem
    #
    # @example
    #   if cursor.has_next?
    #     cursor = cursor.next_page
    #   end
    #
    # @example
    #   cursor.auto_paging_each do |wallet|
    #     puts(wallet)
    #   end
    class Cursor
      include Privy::Internal::Type::BasePage

      # @return [Array<generic<Elem>>, nil]
      attr_accessor :data

      # @return [String]
      attr_accessor :next_cursor

      # @return [Boolean]
      def next_page?
        !data.to_a.empty? && !next_cursor.to_s.empty?
      end

      # @raise [Privy::HTTP::Error]
      # @return [self]
      def next_page
        unless next_page?
          message = "No more pages available. Please check #next_page? before calling ##{__method__}"
          raise RuntimeError.new(message)
        end

        req = Privy::Internal::Util.deep_merge(@req, {query: {cursor: next_cursor}})
        @client.request(req)
      end

      # @param blk [Proc]
      #
      # @yieldparam [generic<Elem>]
      def auto_paging_each(&blk)
        unless block_given?
          raise ArgumentError.new("A block must be given to ##{__method__}")
        end

        page = self
        loop do
          page.data&.each(&blk)

          break unless page.next_page?
          page = page.next_page
        end
      end

      # @api private
      #
      # @param client [Privy::Internal::Transport::BaseClient]
      # @param req [Hash{Symbol=>Object}]
      # @param headers [Hash{String=>String}]
      # @param page_data [Hash{Symbol=>Object}]
      def initialize(client:, req:, headers:, page_data:)
        super

        case page_data
        in {data: Array => data}
          @data = data.map { Privy::Internal::Type::Converter.coerce(@model, _1) }
        else
        end
        @next_cursor = page_data[:next_cursor]
      end

      # @api private
      #
      # @return [String]
      def inspect
        model = Privy::Internal::Type::Converter.inspect(@model, depth: 1)

        "#<#{self.class}[#{model}]:0x#{object_id.to_s(16)} next_cursor=#{next_cursor.inspect}>"
      end
    end
  end
end
