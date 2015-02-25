$length = 3000
$wallet = 4000

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
puts ""

puts "                         Welcome to Long Ride Home!"
puts ""
puts ""
puts "         You woke up in a strange town on the other side of the country"
puts "           and need to get home. You check your wallet. You have $#{$wallet}"
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
puts ""
sleep(5)


$nextCity = rand(5..25).to_i
$cityAfter = $nextCity * 2
inTown = true
$spaceController = " "

while $length > 0

	$nextCity = rand(5..25).to_i
	cityAfter = $nextCity * 2
	inTown = true


	while inTown 

		trainTicket = ($nextCity*2) * 3
	    busTicket = $nextCity * 2


	    puts ""
	    puts ""
	    puts ""
	    puts ""
	    puts ""
	    puts "                                                         wallet: $#{$wallet}"
	    puts ""
	    puts ""
	    puts "    _________              _________               _________           "
		puts "   /        /________     /        /_________     /        /_________  "
		puts "  /________/        /|   /________/         /|   /________/         /| "
		puts "  |        |_______/ |   |        |________/ |   |        |________/ | "
		puts "  |        |       | /___|        |        | /___|        |        | | "
		puts "  |        |       ||   ||        |        ||   ||        |        | | "
		puts "  |        |       ||   ||        |        ||   ||        |        | | "
		puts "  |        |       ||   ||        |        ||   ||        |        |   "
		puts "  -----------------------Welcome to Town------------------------------ "
		puts ""
		puts "You are #{$length} miles from home"
		puts ""
		puts "What would you like to do?"
		puts "        Walk                             (walk)"
		puts "        Check a Train Station             (train)"
		puts "        Check the Bus Station            (bus)"

		action = gets.chomp

		if action.casecmp("walk") == 0
			time = $nextCity / 2
			puts "                                                                   "
			puts "                                                                   "
			puts "                                                                   "
			puts "                           __                                      " 
			puts "                           ||___________                           "
			puts "                           |  ________  \\                         "
			puts "                           |____________/                          "
			puts "                 __________||                                      "
			puts "                /   _____  ||                                      "
			puts "                \\__________||___________                          "
			puts "                           |    _______ \\                         "
			puts "                           |____________/                          "
			puts "                           ||                                      "
			puts "                           ||                                      "
			puts "                           ||                                      "
			puts "                           ||                                      "
			puts "                           ||                                      "
			puts "                                                                   "
			puts "                                                                   "
			puts "You can get to the next city (#{$nextCity} miles) in #{time} seconds"
			puts "Walk (walk)          Go back to town (town)"
			action = gets.chomp

			if action.casecmp("walk") == 0

				load 'E:/RubyStuffs/LongRideHome/lib/walk.rb'

				Walking.new($nextCity, $length)

				puts "does stuff"

			elsif action.casecmp("town") == 0
				puts "You have gone back to town"
				sleep(1.0)
			end
		elsif action.casecmp("train") == 0

			puts "                                                                   "
			puts "                                                                   "
			puts "                                                                   "
			puts "                                                                   "
			puts "                                                                   "
			puts "                         _________________                         "
			puts "                         | Train Station |                         "
			puts "               |=========|===============|=====+==|                "
			puts "               |   =-=-=-=-=-=-=-=-=-=-=-=-=-=-=  |                "
			puts "            ___|__________________________________|____            "
			puts "       _____|_________________________________________|____        "
			puts "       |==================================================|        "
			puts "       |                                                  |        "
			puts "       |  []  []  []  []  []  []  []  []   []   []   []   |        "
			puts "       |                                                  |        "
			puts "       |                     ______                       |        "
			puts "       |                     |    |                       |        " 
			puts "        +++++++++++++++++++++|    |++++++++++++++++++++++++        "
			puts "                                                                   "
			puts "You can get two cities over (#{cityAfter} miles) for $#{trainTicket}"
			puts "Buy Ticket (Buy)          Leave the station (Leave)"
			action = gets.chomp

			if action.casecmp("buy") == 0
				if $wallet > trainTicket
					puts "You have bought a ticket! All Aboard!"
					$wallet = $wallet - trainTicket
					spaceEcho = (66.0 / cityAfter)
					while cityAfter > 0
						actionTop = spaceController +     " |DD|____T_"
						actionMiddle = spaceController +  " |_ |_____|<"
						actionBottom = spaceController +  "    @-@-@-oo\\"



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

						cityAfter = cityAfter.pred
						$length = $length.pred
						sleep(1.0 / 10.0)

						spaceController = spaceController + (" " * spaceEcho)
						inTown = false
					end
					spaceController = " "
				else 
					puts "You don't have money for a ticket. :("
				end
			elsif action.casecmp("leave") == 0
				puts "You have left the train station!"
			end
		elsif action.casecmp("bus") == 0
			puts "                                                                   "
			puts "                                                                   "
			puts "                                                                   "
			puts "                                                                   "
			puts "                                                                   "
			puts "                                                                   "   
			puts "                                                                   "
			puts "                                                                   "
			puts "                                                                   "
			puts "                         _____________                             "
			puts "                         |   Buses   |                             "
			puts "       __________________|___________|_____________________        "
			puts "       |                                                  |        "
			puts "       |  o o o o         o o o o        o o o o     o o  |        "
			puts "       |                                                  |        "
			puts "       | o o         o o     ______   o o        o o      |        "
			puts "       |                     |    |                       |        " 
			puts "                                                                   "			
			puts ""
			puts "You can get to the next city (#{cityAfter} miles) for $#{busTicket}"
			puts "Buy Ticket (Buy)          Leave the terminal (Leave)"
			action = gets.chomp

			if action.casecmp("buy") == 0
				if $wallet > busTicket
					puts "You have bought a ticket! Go on in!"
					$wallet = $wallet - busTicket
					spaceEcho = (74.0 / $nextCity)
					while $nextCity > 0
						
						actionTop = spaceController +     "[o>][o]\\"
						actionMiddle = spaceController +  "L_______&"
						actionBottom = spaceController +  " ()   ()"



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
						sleep(1.0 / 5.0)

						spaceController = spaceController + (" " * spaceEcho)
						inTown = false
					end
					spaceController = " "
				else 
					puts "You don't have money for a ticket. :("
				end
			elsif action.casecmp("leave") == 0
				puts "You have left the Bus Te
				rminal!"
			end
		end
	end
end