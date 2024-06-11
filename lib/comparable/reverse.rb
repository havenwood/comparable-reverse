# frozen_string_literal: true

module Comparable
  Reverse = Data.define :value do
    def <=>(other) = other.value <=> value
  end
end
