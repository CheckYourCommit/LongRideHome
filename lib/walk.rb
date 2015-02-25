module Walking
	puts "You start your walk!"
	spaceEcho = (74.0 / $nextCity)
	puts "#{spaceEcho}"
		while $nextCity > 0

			if $nextCity % 2 == 0
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

			$nextCity = $nextCity.pred
			$length = $length.pred
			sleep(1.0 / 3.0)

			$spaceController = $spaceController + (" " * spaceEcho)
			inTown = false
		end
	$spaceController = " "
end