# TODO after https://github.com/stainless-api/stainless/pull/2675 merges, wrap this in a customer name module
class Util
  # recursively merge one hash with another.
  # If the values at a given key are not both hashes, just take the new value.
  def self.deep_merge(left, right)
    left.merge(right) {|_k, old_val, new_val|
      if old_val.is_a?(Hash) && new_val.is_a?(Hash)
        old_val.deep_merge(new_val)
      else
        new_val
      end
    }
  end
end
