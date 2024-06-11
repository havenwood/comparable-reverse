# frozen_string_literal: true

require_relative '../test_helper'

describe Comparable::Reverse do
  it 'sorts numbers in reverse order' do
    sorted_values = [1, 3, 2].sort_by { Comparable::Reverse[_1] }

    assert_equal [3, 2, 1], sorted_values
  end

  it 'sorts strings in reverse alphabetical order' do
    sorted_values = %w[geode wombat cherry].sort_by { Comparable::Reverse[_1] }

    assert_equal %w[wombat geode cherry], sorted_values
  end
end
