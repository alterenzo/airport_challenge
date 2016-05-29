class Airport

	def initialize
		@hangar = []
    end

	def allow_landing(plane)
		plane.land
		@hangar << plane
	end

	def allow_take_off
		fail ("The hangar is empty!!") if @hangar.empty?
		plane = @hangar.pop
		plane.take_off
		plane
	end


end