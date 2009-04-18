module Collapse
	def collapse!(key)
	  other = self.delete(key)
	  return unless other
	  
		for k in other.keys
			if other[k].is_a?(Array) and self[k] and self[k].is_a?(Array)
				self[k] |= other.delete(k)
			else
				self[k] = other[k]
			end
		end		
	end
end

Hash.send :include, Collapse