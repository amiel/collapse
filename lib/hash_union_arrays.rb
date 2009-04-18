module HashIntersectArrays
	module Version
		STRING = '0.2'
	end

	
	# acts just like Hash#merge, except that any arrays
	def self.ordered_union(a, b)
		for k in b.keys
			if b[k].is_a?(Array) and a[k] and a[k].is_a?(Array)
				a[k] |= b[k]
			else
				a[k] = b[k]
			end
		end
		
		return a
	end
end

class Hash
	def |(other)
		HashIntersectArrays::ordered_union(self, other)
	end
end
