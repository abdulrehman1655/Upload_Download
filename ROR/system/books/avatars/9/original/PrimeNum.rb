class Fixnum                            #class starts  
	def prime? 		                # check a prime number                     
		2.upto ( Math.sqrt(self.to_i) ) do | i |     #monkey patching 
			if self.to_i % i == 0
				return false
			end
		end
		true
	end
end                                     #class end

#main starts here 
puts 15.prime?