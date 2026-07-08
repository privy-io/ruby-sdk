# frozen_string_literal: true

require "json"

module Privy
  module Authorization
    module Canonicalization
      module_function

      def canonicalize(value)
        serialize(coerce_keys(value))
      end

      def coerce_keys(value)
        case value
        when Hash
          value.each_with_object({}) { |(k, v), h| h[k.to_s] = coerce_keys(v) }
        when Array
          value.map { |v| coerce_keys(v) }
        when Symbol
          value.to_s
        else
          value
        end
      end

      def serialize(value)
        case value
        when Hash
          body = value.keys.sort_by { |k| k.encode("UTF-16BE").bytes }
                      .map { |k| "#{JSON.generate(k)}:#{serialize(value[k])}" }
                      .join(",")
          "{#{body}}"
        when Array
          "[#{value.map { |v| serialize(v) }.join(',')}]"
        when Float
          raise ArgumentError, "NaN/Infinity not permitted" unless value.finite?

          format_number(value)
        when Integer
          value.to_s
        when String, TrueClass, FalseClass, NilClass
          JSON.generate(value)
        else
          raise ArgumentError, "Cannot canonicalize #{value.class}"
        end
      end

      # TODO: port the ES6 ToString algorithm (ecma-262) for full RFC 8785 compliance on arbitrary
      # floats. MVP payloads only contain integer and simple-decimal values, so the simplified form
      # below is sufficient for now.
      def format_number(value)
        int = value.to_i
        value == int ? int.to_s : value.to_s
      end
    end
  end
end
