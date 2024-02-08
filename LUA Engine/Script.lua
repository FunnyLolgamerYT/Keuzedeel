--[[
The following functions have been exposed to lua:
setBackground(string aPath) sets the background to the texture in the folder textures.
createButton(string area name which the player enters, string context); adds a button to the current screen
createTextfield(string context); adds a textfield to the top of the screen.
CLS(); clears the screen.
exitGame(); exits the game.
playSound(string path to sound)
]]--
movesleft = 15;
currentlocation = start;
hasKeyCard = false;
gotSpecialFood = false;
entered = false;
hasSpell = false;
castSpellLib = false;

function story(aName)
	if(aName == "start") then
		CLS();
		playMusic("background.wav")
		setBackground("wakeup.JPG")
		createTextfield("You wake up on some kind of straw bed, as you look around you find yourself in a dimly lit room, with stone walls and ceiling, as you look around you see a door, leading to another room.")
		createButton("entrance", "Go through the door.")
	end
	if(aName == "entrance") then
		playSound("footstep.wav")
		CLS();
		setBackground("big-room.JPG");
		createTextfield("You find yourself in a bigger room, you see a stone door in the wall, a group of of other people in the corner, and a shadowy figure in the corne.r")
		createButton("door", "Go check out the door.");
		createButton("group", "Try to talk to the others.")
		createButton("weirdo", "Try to talk to the weirdo.")
	end
	if(aName == "door") then
		playSound("footstep.wav")
		setBackground("doorClosed.JPG")
		CLS();
		createTextfield("It's a door, it appears to be locker")
		createButton("entrance", "Go back to the corridor.");
		if(hasKeyCard == true) then
			createButton("doorOpened", "Unlock the door.")
		end
	end

	if(aName == "doorOpened") then
		CLS();
		setBackground("doorOpened.JPG");
		playSound("door.wav");
		createTextfield("The door opened!");
		createButton("3-0", "enter room");

	end
	



--MAZE START (MIGHT ORGANIZE IF I FEEL LIKE IT)

	


	if(aName == "3-0") then
		
		setBackground("hallway3-0.jpg")
		CLS();
		currentlocation = "3-0";
		createTextfield("You have found a map!")
		createButton("3-1", "Go forward")
		createButton("map", "Look at the map")


	end

	if(aName == "3-1") then
		
		currentlocation = "3-1"
		setBackground("library.jpg")
		setBackground('hallway.JPG')
		CLS();
		if(movesleft == 15) then
		createTextfield("The breeder has awoken, you have 14 moves until he catches you!")
		else 

		end
		movesleft = movesleft - 1;


		createButton("4-1", "Go east");
		createButton("2-1", "Go west.");
		createButton("3-0", "Go south");
		createButton("map", "Open the map");
	end

	if(aName == "4-1") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft - 1;
		createTextfield(movesleft)
		currentlocation = "4-1";
		createButton("5-1", "Go east.")
		createButton("3-1", "Go west");
	end

	if(aName == "5-1") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft - 1;
		createTextfield(movesleft)
		currentlocation = "5-1";
		createButton("5-0", "Go go south");
		createButton("4-1", "Go go west");
		createButton("map", "Open the map");


	end

	if(aName == "5-0") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft - 1;
		createTextfield(movesleft);
		currentlocation = "5-0";
		createButton("6-0", "go east");
		createButton("5-1", "Go north");
		createButton("map", "Open the map");
	end

	if(aName == "6-0") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft -1;
		createTextfield(movesleft);
		currentlocation = "6-0";
		createButton("6-1", "Go north");
		createButton("5-0", "Go west");
		createButton("map", "Open the map")

	end

	if(aName == "6-1") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft - 1
		createTextfield(movesleft);
		currentlocation = "6-1";
		createButton("6-2", "Go north");
		createButton("6-0", "Go south");
		createButton("map", "Open the map");

	end
	if(aName == "6-2") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft - 1;
		createTextfield(movesleft);
		currentlocation = "6-2";
		createButton("6-3", "Go north");
		createButton("6-1", "Go south");
		createButton("map", "Open the map");

	end

	if(aName == "6-3") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft - 1;
		createTextfield(movesleft);
		currentlocation = "6-3";
		createButton("5-3", "Go east")
		createButton("6-4", "Go north")
		createButton("6-2", "Go south");
		createButton("map", "Open the map");

	end
	
	if(aName == "6-4") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft - 1;
		createTextfield(movesleft);
		currentlocation = "6-4"
		createButton("6-5", "Go north")
		createButton("6-3", "Go south");
		createButton("map", "Open the map");

	end

	if(aName == "6-5") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft - 1;
		createTextfield(movesleft);
		currentlocation = "6-5";
		createButton("Exit", "Go through the exit!");
		createButton("6-4", "Go south")
		createButton("map", "Open the map")

	end

	if(aName == "2-1") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft - 1;
		createTextfield(movesleft);
		currentlocation = "2-1";
		createButton("1-1", "Go west");
		createButton("3-1", "Go east")
		createButton("map", "Open the map")

	end

	if(aName == "1-1") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft - 1;
		createTextfield(movesleft);
		currentlocation = "1-1";
		createButton("1-2", "Go north");
		createButton("2-1", "Go east")
		createButton("map", "Open the map")

	end

	if(aName == "1-2") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft - 1;
		createTextfield(movesleft);
		currentlocation = "1-2";
		createButton("1-3", "Go north");
		createButton("1-1", "Go south")
		createButton("map", "Open the map")

	end

	if(aName == "1-3") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft - 1;
		createTextfield(movesleft);
		currentlocation = "1-3";
		createButton("1-4", "Go north");
		createButton("1-2", "Go south")
		createButton("map", "Open the map")

	end

	if(aName == "1-4") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft - 1;
		createTextfield(movesleft);
		currentlocation = "1-4";
		createButton("0-4", "Go west");
		createButton("1-3", "Go south");
		createButton("2-4", "go east");
		createButton("map", "Open the map")

	end

	if(aName == "0-4") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft - 1;
		createTextfield(movesleft);
		currentlocation = "0-4";
		createButton("shhh", "shhh");
		createButton("1-4", "Go east")
		createButton("map", "Open the map")

	end
	if(aName == "2-4") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft - 1;
		createTextfield(movesleft);
		currentlocation = "2-4";
		createButton("1-4", "Go west");
		createButton("3-4", "Go east");
		createButton("map", "Open the map")

	end

	if(aName == "3-4") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft - 1;
		createTextfield(movesleft);
		currentlocation = "3-4";
		createButton("2-4", "Go west");
		createButton("4-4", "Go east");
		createButton("3-3", "Go south");
		createButton("map", "Open the map")

	end

	if(aName == "3-3") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft - 1;
		createTextfield(movesleft);
		currentlocation = "3-3";
		createButton("2-3", "Go west");
		createButton("4-3", "Go east");
		createButton("3-4", "Go north");
		createButton("map", "Open the map")

	end

	if(aName == "2-3") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft - 1;
		createTextfield(movesleft);
		currentlocation = "2-3";
		createButton("3-3", "Go east");
		createButton("map", "Open the map")

	end

	if(aName == "4-3") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft - 1;
		createTextfield(movesleft);
		currentlocation = "4-3";
		createButton("3-3", "Go west");
		createButton("5-3", "Go east");
		createButton("map", "Open the map")

	end

	if(aName == "5-3") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft - 1;
		createTextfield(movesleft);
		currentlocation = "5-3";
		createButton("4-3", "Go west");
		createButton("map", "Open the map")

	end

	if(aName == "4-4") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft - 1;
		createTextfield(movesleft);
		currentlocation = "2-4";
		createButton("3-4", "Go west");
		createButton("5-4", "Go east");
		createButton("map", "Open the map")

	end

	if(aName == "5-4") then
		setBackground('hallway.JPG')
		CLS();
		movesleft = movesleft - 1;
		createTextfield(movesleft);
		currentlocation = "2-4";
		createButton("4-4", "Go west");
		createButton("6-4", "Go east");
		createButton("map", "Open the map")

	end




	if(aName == "map") then
		
		
		CLS();
		setBackground("map.jpg")
		createButton(currentlocation, "Go back")

	end
	if(movesleft <= 0) then
		CLS();
		createTextfield("The breeder has caught you! You are dead.")
		createButton("exit", "die");
	end

	if(aName == "exit") then
		CLS();
		setBackground("escaped.JPG");
		createTextfield("You have escaped, congratultions!")

		createButton("exit", "Goodbye");
	end

	--MAZE END
	
	if(aName == "group") then
		CLS();
		playSound("footstep.wav")
		setBackground("group.JPG")
		createTextfield("The group just looks at you funny")
		createButton("entrance", "Go back.")
		if(hasTalked == true) then
			createButton("groupInteraction2", "Tell me what you know")
		else
		createButton("groupInteraction1", "Talk to them")
		end
	end

	if(aName == "groupInteraction1") then
		CLS();	
		createTextfield("What do you want, fresh meat?")
		createButton("groupInteraction2", "Who are you?");
		createButton("entrance", "Leave.");

		end

	if(aName == "groupInteraction2") then
		CLS();
		hasTalked = true;
		createTextfield("Why should we tell you anything?");
		if(gotSpecialFood == true) then
			createButton("groupFoodInteraction", "I've got something that you might want")
		end
		createButton("groupInteraction3", "I want to know how to leave")
	end

	if(aName == "groupInteraction3") then
		CLS();
		createTextfield("you think we'll just tell you anything for free? Didn't think so");
		createButton("groupInteraction4", "What do you want?");
		createButton('entrance', "Fine I'll leave.")
		end

	if(aName == "groupInteraction4") then
		CLS();
		createTextfield("Wouldn't you like to know?")
		createButton("entrance", "I'll be back")
	end

	if(aName == "groupFoodInteraction")  then
	CLS();
		createTextfield("Oooh! that looks good. GIMME")
		createButton("giveFood", "Only if you tell me everything you know")
	end
	
	if(aName == "giveFood") then 
		CLS();
		createTextfield("All right fine, we found a keycard a while back, have it. It opens the door, but the breeder is behind it, He'll kill you instantly")
		hasKeyCard = true;
		createButton("entrance", "Thanks");
	end


	if(aName == "weirdo" and gotSpecialFood == false) then
		CLS();
		setBackground("weirdo.JPG")
		playSound("footstep.wav")
		createTextfield("Hey kiddo, come here!");
		createButton("weirdo1", "approach the weirdo");
		createButton("entrance", "Get out of there");

	end 
	if (aName == "weirdo" and gotSpecialFood == true) then
		CLS();
		setBackground("weirdo.JPG")
		playSound("footstep.wav")
		createTextfield("What are you still doing here? Do you want OTHER meat?")

		createButton("entrance", "Yeah hell no!");
	end

	if(aName == "weirdo1") then
		CLS();
		createTextfield("Answer me these riddles 3 and I'll give you some SPECIAL meat");
		createButton("weirdo2", "Alright lets go!");
		createButton("entrance", "Aw HELL no!");

	end

	if(aName == "weirdo2") then
		CLS();
		createTextfield("Who is the breeder?")

		createButton("weirdoDeath", "The breeder is out master");
		createButton("weirdo3", "The breeder is our god!");
		createButton("weirdoDeath", "The breeder is a weirdo");
				

	end

	if(aName == "weirdo3") then
		CLS();
		createTextfield("Well done, now; What is your purpose") 
		createButton("weirdoDeath", "To work until the end of time")
		createButton("weirdo4", "To die")
		createButton("weirdoDeath", "To make friends")

	end

	if(aName == "weirdo4") then
		CLS();
		createTextfield("Well done, last question; What are we?")
		createButton("weirdo5", "Pals")
		createButton("weirdoDeath", "humans")
		createButton("weirdoDeath", "slaves")
	end

	if(aName == "weirdo5") then
		CLS();
		gotSpecialFood = true;
		createTextfield("Well done, you may have this special meat                                           +1 meat")

		createButton("entrance", "(Eww, What is this stuff? Smells good though.)")
	end


	if(aName == "weirdoDeath") then
		CLS();
		createTextfield("Wrong anwser, now die")
		createButton("exit", "die")

	end







	if(aName == "exit") then
		exitGame();
	end
end

