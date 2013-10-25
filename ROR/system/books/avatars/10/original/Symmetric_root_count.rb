def bit_rev name
	name.to_s(2).reverse.to_i(2)
	
end

def symmetric_binary_root_count n 
     0.upto(n-1) do | i |
         return i if i * bit_rev(i) == n
     end
     return -1
end

puts symmetric_binary_root_count 5
