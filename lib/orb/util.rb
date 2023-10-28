# typed: true
module Orb
  class Util
    # recursively merge one hash with another.
    # If the values at a given key are not both hashes, just take the new value.
    def self.deep_merge(left, right)
      left.merge(right) do |_k, old_val, new_val|
        if old_val.is_a?(Hash) && new_val.is_a?(Hash)
          deep_merge(old_val, new_val)
        else
          new_val
        end
      end
    end
  end
end
