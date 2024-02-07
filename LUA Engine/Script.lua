--[[
The following functions have been exposed to lua:
setBackground(string aPath) sets the background to the texture in the folder textures.
createButton(string area name which the player enters, string context); adds a button to the current screen
createTextfield(string context); adds a textfield to the top of the screen.
CLS(); clears the screen.
exitGame(); exits the game.
playSound(string path to sound)
]]--

hasKeyCard = false;
gotSpecialFood = false;
entered = false;
hasSpell = false;
castSpellLib = false;

function story(aName)
	if(aName == "start") then
		CLS();
		playMusic("background.wav")
		setBackground("evilMansion.JPG")
		createTextfield("You wake up on some kind of straw bed, as you look around you find yourself in a dimly lit room, with stone walls and ceiling, as you look around you see a door, leading to another room.")
		createButton("entrance", "Go through the door.")
	end
	if(aName == "entrance") then
		playSound("footstep.wav")
		CLS();
		setBackground("corridor.JPG");
		createTextfield("You find yourself in a bigger room, you see a stone door in the wall, a group of of other people in the corner, and a shadowy figure in the corne.r")
		createButton("door", "Go check out the door.");
		createButton("group", "Try to talk to the others.")
		createButton("weirdo", "Try to talk to the weirdo.")
	end
	if(aName == "door") then
		playSound("footstep.wav")
		CLS();
		setBackground("library.jpg")
		createTextfield("It's a door, it appears to be locker")
		createButton("entrance", "Go back to the corridor.");
		if(hasKeyCard == true) then
			createButton("openDoor", "Unlock the door.")
		end
	end
	if(aName == "group") then
		CLS();
		playSound("pageFlip.wav")
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

	if(aName == "groupFoodInteraction") 
	CLS();
		createTextfield("Oooh! that looks good. GIMME")
		createButton("giveFood", "Only if you tell me everything you know")
	end
	
	if(aName == "giveFood") then 
		CLS();
		createTextfield("All right fine, we found a keycard a while back, have it. It opens the door, but the breeder is behind it, He'll kill you instantly")
		createButton("entrance", "Thanks");
	end


	if(aName == "weirdo" and gotSpecialFood == false) then
		CLS();
		createTextfield("Hey kiddo, come here!");
		createButton("weirdo1", "approach the weirdo");
		createButton("entrance", "Get out of there");

	end 
	if (aName == "weirdo" and gotSpecialFood == true) then
		CLS();
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
		

		createButton("entrance", "yes");

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

		createButton("entrance", "test")
	end


	if(aName == "weirdoDeath") then
		CLS();
		createTextfield("Work in progress, you died")
		createButton("entrance", "go back")

	end







	if(aName == "exit") then
		exitGame();
	end
end

