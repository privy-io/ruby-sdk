# frozen_string_literal: true

require_relative "../test_helper"

class Privy::PrivyRequestExpiryOptionsTest < Minitest::Test
  def test_build_defaults_default_ms_nil_disabled_false
    opts = Privy::PrivyRequestExpiryOptions.build
    assert_nil(opts.default_ms)
    assert_equal(false, opts.disabled)
  end

  def test_build_accepts_kwargs
    opts = Privy::PrivyRequestExpiryOptions.build(default_ms: 60_000, disabled: true)
    assert_equal(60_000, opts.default_ms)
    assert_equal(true, opts.disabled)
  end

  def test_is_a_data_value_object
    opts = Privy::PrivyRequestExpiryOptions.build(default_ms: 1)
    other = Privy::PrivyRequestExpiryOptions.build(default_ms: 1)
    assert_equal(opts, other) # Data equality is structural
  end
end
