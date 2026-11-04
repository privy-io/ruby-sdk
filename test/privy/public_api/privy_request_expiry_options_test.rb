# frozen_string_literal: true

require_relative "../test_helper"

class Privy::PrivyRequestExpiryOptionsTest < Minitest::Test
  def test_build_defaults_default_ms_nil_disabled_false
    opts = Privy::PrivyRequestExpiryOptions.build
    assert_nil(opts.default_ms)
    assert_nil(opts.default_intent_ms)
    assert_equal(false, opts.disabled)
  end

  def test_build_accepts_kwargs
    opts = Privy::PrivyRequestExpiryOptions.build(
      default_ms: 60_000,
      default_intent_ms: 120_000,
      disabled: true
    )
    assert_equal(60_000, opts.default_ms)
    assert_equal(120_000, opts.default_intent_ms)
    assert_equal(true, opts.disabled)
  end

  def test_new_with_partial_kwargs_uses_defaults
    opts = Privy::PrivyRequestExpiryOptions.new(default_intent_ms: 1)
    assert_nil(opts.default_ms)
    assert_equal(1, opts.default_intent_ms)
    assert_equal(false, opts.disabled)
  end

  def test_rejects_non_integer_default_ms
    assert_raises(ArgumentError) { Privy::PrivyRequestExpiryOptions.build(default_ms: "60000") }
    assert_raises(ArgumentError) { Privy::PrivyRequestExpiryOptions.build(default_ms: 1.5) }
  end

  def test_rejects_negative_default_ms
    assert_raises(ArgumentError) { Privy::PrivyRequestExpiryOptions.build(default_ms: -1) }
  end

  def test_rejects_non_integer_default_intent_ms
    assert_raises(ArgumentError) { Privy::PrivyRequestExpiryOptions.build(default_intent_ms: "1") }
    assert_raises(ArgumentError) { Privy::PrivyRequestExpiryOptions.build(default_intent_ms: -1) }
  end

  def test_rejects_non_boolean_disabled
    assert_raises(ArgumentError) { Privy::PrivyRequestExpiryOptions.build(disabled: nil) }
    assert_raises(ArgumentError) { Privy::PrivyRequestExpiryOptions.build(disabled: "true") }
  end

  def test_is_a_data_value_object
    opts = Privy::PrivyRequestExpiryOptions.build(default_ms: 1)
    other = Privy::PrivyRequestExpiryOptions.build(default_ms: 1)
    assert_equal(opts, other) # Data equality is structural
  end
end
