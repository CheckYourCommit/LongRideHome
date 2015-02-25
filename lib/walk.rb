module Walking
	puts "You start your walk!"
	nc = $nextCity
	spaceEcho = (74.0 / nc)
	puts "#{spaceEcho}"
		while nc > 0

			if nc % 2 == 0
				actionTop = $spaceController +     " o"
				actionMiddle = $spaceController +  "-|-"
				actionBottom = $spaceController +  " ^"
			else
				actionTop = $spaceController +     " o"
				actionMiddle = $spaceController +  " |-"
				actionBottom = $spaceController +  " ^"
			end

			puts ""
			puts ""
			puts ""
			puts ""
			puts ""
			puts ""
			puts ""
			puts ""
			puts ""
			puts ""
			puts ""
			puts ""
			puts ""
			puts ""
			puts ""
			puts ""
			puts ""
			puts ""
			puts ""
			puts ""
			puts "#{actionTop}"
			puts "#{actionMiddle}"
			puts "#{actionBottom}"

			nc = nc.pred
			$length = $length.pred
			sleep(1.0 / 3.0)

			$spaceController = $spaceController + (" " * spaceEcho)
			inTown = false
		end
	$spaceController = " "
end