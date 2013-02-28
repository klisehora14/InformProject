"Project" by Kapri Lisehora

The story headline is "The Campfire". The story genre is "Adventure". The story description is "An unfortunately memorable weekend".

When play begins: 
    now left hand status line is "Exits: [exit list]"; 
    now right hand status line is "[location]".
To say exit list: 
	let place be location; 
	repeat with way running through directions: 
		let place be the room way from the location; 
		if place is a room, say " [way]".


When play begins: say "You've planned a wonderful camping trip with your girlfriend. She's depending on you to make the experience memorable, but everything keeps going wrong for you."

[Setting up conditions that can be used to test for completion of tasks and end of game.]
A person can be hungry or full.
A person can be thirsty or quenched.
The player is hungry.
The player is thirsty.

[Rideable Vehicles Graham Nelson]
[Version 3 of Rideable Vehicles by Graham Nelson begins here.]

["Vehicles which one sits on top of, rather than inside, such as elephants or
motorcycles."]

Include Plurality by Emily Short.

A rideable animal is a kind of animal.
A rideable animal is usually not portable.
Include (-
	has enterable supporter,
	with before [; Go: return 1; ],
-) when defining a rideable animal.

A rideable vehicle is a kind of supporter.
A rideable vehicle is always enterable.
A rideable vehicle is usually not portable.
Include (-
	with before [; Go: return 1; ],
-) when defining a rideable vehicle.

The stand up before going rule is not listed in any rulebook.

Definition: Something is vehicular if it is a vehicle or it is a
rideable animal or it is a rideable vehicle.

Rule for setting action variables for going (this is the allow rideables to be
	going vehicles rule):
	if the actor is carried by a rideable animal (called the steed),
		now the vehicle gone by is the steed;
	if the actor is on a rideable vehicle (called the conveyance),
		now the vehicle gone by is the conveyance.

Mounting is an action applying to one thing.

Before an actor entering a rideable animal (called the steed), try the actor
mounting the steed instead.

Before an actor entering a rideable vehicle (called the conveyance), try the
actor mounting the conveyance instead.

Before an actor getting off a rideable animal (called the steed), try the
actor dismounting instead.

Before an actor getting off a rideable vehicle (called the conveyance), try
the actor dismounting instead.

Before an actor exiting:
	if the actor is carried by a rideable animal, try the actor dismounting instead;
	if the actor is carried by a rideable vehicle, try the actor dismounting instead.

Check an actor mounting (this is the can't mount when mounted on an animal rule): 
	if the actor is carried by a rideable animal (called the steed):
		if the actor is the player, say "You are already riding [the steed].";
		stop the action.

Check an actor mounting (this is the can't mount when mounted on a vehicle rule):
	if the actor is on a rideable vehicle (called the conveyance):
		if the actor is the player, say "You are already riding [the conveyance].";
		stop the action.

Check an actor mounting (this is the can't mount something unrideable rule):
	if the noun is not a rideable animal and the noun is not a rideable vehicle:
		if the actor is the player, say "[The noun] cannot be ridden." instead;
		stop the action.

Check an actor mounting (this is the can't mount something carried rule):
	abide by the can't enter something carried rule.

Check an actor mounting (this is the can't mount something unreachable rule):
	abide by the implicitly pass through other barriers rule. 
	
Carry out an actor mounting (this is the standard mounting rule):
	surreptitiously move the actor to the noun.

Report an actor mounting (this is the standard report mounting rule):
	if the actor is the player:
		say "You mount [the noun].";
		describe locale for the noun;
	otherwise:
		say "[The actor] mount[s] [the noun]." instead. 

Unsuccessful attempt by someone trying mounting (this is the mounting excuses rule):
	if the reason the action failed is the can't mount when mounted on an animal rule,
		say "[The person asked] [is-are] already riding [the random rideable animal which carries the person asked].";
	if the reason the action failed is the can't mount when mounted on a vehicle rule,
		say "[The person asked] [is-are] already riding [the random rideable vehicle which supports the person asked].";
	if the reason the action failed is the can't mount something unrideable rule,
		say "[The noun] cannot be ridden.";

Understand "ride [something]" as mounting.
Understand "mount [something]" as mounting.

Dismounting is an action applying to nothing.

Check an actor dismounting (this is the can't dismount when not mounted rule):
	if the actor is not carried by a rideable animal and the actor is not on a rideable vehicle:
		if the actor is a player, say "You are not riding anything.";
		stop the action.

Carry out an actor dismounting (this is the standard dismounting rule):
	if the actor is carried by a rideable animal (called the steed),
		now the noun is the steed;
	if the actor is on a rideable vehicle (called the conveyance),
		now the noun is the conveyance;
	let the former exterior be the holder of the noun;
	surreptitiously move the actor to the former exterior.

Report an actor dismounting (this is the standard report dismounting rule):
	if the actor is the player:
		say "You dismount [the noun].[line break][run paragraph on]";
		produce a room description with going spacing conventions;
	otherwise:
		say "[The actor] dismount[s] [the noun]."
	
Unsuccessful attempt by someone trying dismounting (this is the dismounting excuses rule):
	if the reason the action failed is the can't dismount when not mounted rule,
		say "[The person asked] [is-are] not riding anything.";
	otherwise make no decision.

Understand "dismount" as dismounting.

Before asking a rideable animal (called the mount) to try going a
direction (called the way):
	if the player is carried by the mount, try going the way instead.

[Rideable Vehicles ends here.]


[Food]
Food is a kind of thing. 
Food can be cooked or uncooked.
Food is edible. Food is usually uncooked.
Food can be eaten or drunk.

[Eating Cooking]
Understand "cook [something]" as cooking. Cooking is an action applying to one thing.
Check cooking:
	if the player is in the campfire:
		if branches are switched on:
			if the noun is food:
				say "The [noun] is now cooked.";
				now noun is cooked;
			otherwise:
				say "You can't cook that.";
		otherwise:
			say "You need to light a fire to cook something.";
	otherwise:
		say "There's no fire here."
	
A thing can be broken or unbroken.

[Starting the game]
The Campfire is a room. "It's night, but the fire just burned out and you both are getting cold. Your tent is in a grassy clearing. To the north are the woods, to the east a stream, and the west a rocky cliff. A mysterious cabin is to your south. In your tent there's a cooler, a backpack, and two sleeping bags."
The cooler is a container in the Campfire. It is closed and openable. It is fixed in place. The description is "The cooler contains [list of things in cooler]."
Bottles are a thing. Bottles are inside the cooler.
The backpack is a container in the Campfire. It is closed and openable. It is portable. The description is "A simple bag that's seen better days. Nevertheless, you managed to stuff it with necessities and bring it on the trip."
Grassy Clearing is scenery in Campfire. The description is "A worn down patch of grass. There's nothing that special about it."
Fire is scenery in Campfire.
Instead of examining Fire:
	if branches are switched on:
		say "A blazing orange fire licks the cracked wood that you gathered from the forest.";
		continue the action;
	otherwise:
		say "What fire? Your fire burned out."

[Regions]
[Scene One is a region. Campfire, Woods, Rocky Cliff, Stream, Cabin, Cabin Interior, Outhouse, and Hole are in Scene One.]
Scene Two is a region. Marketplace, Italian Bistro, Forest, Park, Flower Vendor, Garden, Appliance Store, Tack Shop, Bank, School and General Store are in Scene Two.

[Giving rose][givingitem][giving item]		
Blackbox is a container. 
Understand "give [something] to [something]" as givingitem it to. Givingitem it to is an action applying to two things.
Check Givingitem it to:
	if the player is in Campfire:
		if noun is rose and second noun is girlfriend:
			say  "You bow slightly with your hand outstretched, offering the rose to your girlfriend. She smiles and accepts it.";
			now rose is in Blackbox;
		if noun is not rose and second noun is not girlfriend:
			say "Why would you give a rose to that?";
	otherwise:
		say "Your girlfriend isn't here."

[Fun rules and fancy verbs]
Instead of buying:
	if player is in Scene Two:
		say "Why don't you try to take that instead.";
	otherwise:
		continue the action.
Understand "yell at [someone]" as yelling at. Yelling at is an action applying to one visible thing.
Check yelling at:
	instead of yelling at Mr Florence:
		say "Mr. Florence is actually an incredibly nice man, and I wouldn't yell at him, if I were you.";
	instead of yelling at Ms Baker:
		say "Ms. Baker treats you like a grandson, and you would even consider yelling at her? You're terrible!"

Understand "talk to [someone]" or "converse with [someone]" as talking to. Talking to is an action applying to one visible thing. 

Instead of talking to Mr Florence for the first time:
	say "'Hey, Mr. Florence,' you say with a smile. 'How are the flowers doing?'[paragraph break] 'Oh hello there, young sport!' Mr. Florence exclaims. 'The flowers are as wonderful as ever,' he beams, bouncing on the balls of his feet. 'It's been cooler lately, so they're staying fresh longer.'[paragraph break]You smile and nod, examining the vibrant colors.[paragraph break]'Are you looking for something in particular?'";
	if player consents:
		say "'Actually, yes. I would like to pick something up for my girlfriend.' Mr. Florence gives you a knowing smile.[paragraph break]'Do you have a particular flower in mind?'";
		if player consents:
			say "'Ah, I'm sure you do! Take them, then, dear fellow, and brighten your lady's day!'";
		otherwise:
			say "'No, I don't, actually,' you say. 'I was hoping you could point me in the right direction.'[paragraph break]Mr. Florence turns and looks at his flowers, then back at you. He picks up the daffodils and the daisies.[paragraph break]'Either of these should be fine; something not too intense. They say 'I was thinking of you. You're beautiful and sweet.' They're a nice summertime flower, too.'";
	otherwise:
		say "'No, I'm just browsing.'[paragraph break]Mr. Florence nods. 'Let me know if you need anything!'";
Instead of talking to Mr Florence for the second time:
	say "'Hey again, Mr. Florence.' [paragraph break]'Oh hello, there. Do you know what you would like yet?'";
	if player consents:
		say "'Ah, I'm sure you do! Take them, then, dear fellow, and brighten your lady's day!";
	otherwise:
		say "'Would you like some help? I personally would recomend the daffodils or daisies. They're not too intense, but still say, 'I was thinking of you and I love you, you're beautiful.' They're a nice summertime flower, too.'".


Flattering is an action applying to one thing. Understand "flatter [someone]" and "praise [someone]" as flattering.
Check flattering:
	say "[The noun] blushes modestly."; 
	Instead of flattering Mr Florence:
		say "Mr. Florence becomes visually uncomfortable."
Understand "kiss [something]" as kissing.
Instead of kissing something that is not a person:
	if thing is girlfriend:
		say "You lean forward to kiss your girlfriend, but think better of it. She's not in the best mood; you've ruined her weekend.";
	otherwise:
		say "You lean forward to kiss [The noun], but think better of it. [The noun] do[if the noun is not plural-named]es[end if]n't look very sanitary."
Grammar is backdrop. Grammar is everywhere.
Instead of examining grammar:
	say "Yeah, like you totally got an 'A' on every grammar test that you took.[if examining for the first time]Wow. I can't believe you actually caught that. (You're the first person to notice!)[otherwise]Don't you have something better to do?"
Understand "light [something] on fire" as lighting on fire. Lighting on fire is an action applying to one thing.
Check lighting on fire:
	if the player is in Campfire:
		if the noun is tent:
			say "You pick up two rocks and try to spark a flame on the tent. Your girlfriend rolls her eyes and reminds you that it isn't your tent. Tent: 1 You: 0.";
		otherwise:
			say "You pick up two rocks and try to spark a flame on the [noun]. Your girlfriend rolls her eyes."
Understand "slap [something]" as slapping. Slapping is an action applying to one thing.
Check slapping:
	if the player is in the Campfire:
		if the noun is Girlfriend:
			say "What? Are you crazy? You would never hit her!";
	otherwise:
		say "You slap the [noun] as hard as you can, but the [noun] obviously won. Your hand hurts."
Blanket is scenery in Campfire. The description is "A fuzzy blue blanket that she's had as long as you've known her."
Instead of opening blanket:
	say "You reach for the blanket but she snatches it away from you. I can see that your date is going well. She's totally enjoying herself. Good job."
The description of the player is "You tried looking in a mirror once, but it broke. I'd advise you not try that again. But it's okay, really, because you do not have a mirror. You're wearing dark blue jeans, covered shoes and a relatively nice dark-green t-shirt. Your hair is black and you stand around six feet."
Instead of singing:
	say "You have a lovely voice, but this isn't the time or place for serenades."	
Instead of swearing obscenely:
	say "That's not how to impress a girl!"
Girlfriend is scenery. It is in the Campfire. The description is "A beautiful girl wrapped up in a blanket."
Instead of taking Girlfriend:
	say "You try to pick her up, but she pushes you off, telling you to grow up and to stop acting like a child."
Understand "talk to [something]" as talkingto. Talkingto is an action applying to one thing.
Check talkingto:
	if player is in the Campfire:
		if the noun is Girlfriend:
			say "You start to say something, but think better of it. She's upset with you because you promised her a wonderful weekend and nothing wonderful has happened.";
		otherwise:
			say "You babble gibberish at [noun] but it doesn't have the capability to respond."

[Regions help simplify code for actions you want to have happen only in certain rooms.]
Dark Places is a Region. Campfire, Woods, cabin, Outhouse, and Stream are in Dark Places.

Instead of going from Dark Places when flashlight is switched off:
	say "It's dark outside. Are you sure?";
	if player consents:
		say "A wild beast that you couldn't see in the darkness attacks you.";
		end the game in death.
		
Instead of going from Dark Places when candle is switched on:
	say "You venture into the blackness with the feeble glow of the candle dancing dangerously, but the flame is blown out within a few steps.";
	now the candle is switched off.

Instead of switching on branches when player is not in Campfire:
	say "If you light these here, you're going to have to carry an armful of fire all the way back to the campfire. Are you sure?";
	if player consents:
		say "The fire turns out to be too much to bear, and burns you severely.";
		end the game in death

[Campfire items]
sleeping bags are a thing. They are in Campfire. They are fixed in place. The description is "Two army-green sleeping bags. They're very warm and clean, but aren't in the best physical condition due to years of use."
The tent is scenery in Campfire. The description is "A rather nice two-person tent that you borrowed from your cousin for the weekend."
A lighter is a device. A lighter is inside the backpack. The description is "A half-full, blue, dollar-store plastic lighter."
After examining lighter for the first time: increase score by 1.
A candle is a device. A candle is inside the backpack. The description is "A scentless candle capable of a tiny and weak flame."
After examining candle for the first time: increase score by 1.
A flashlight is a device. A flashlight is inside the backpack. The description is "A small silver flashlight."
After examining flashlight for the first time: increase score by 1.

['Understand' commands that make it easier for the player to turn devices on]
Understand "use [flashlight]" as switching on.
Understand "spark [lighter]" as switching on.
Understand "extinguish [lighter]" as switching off.
Understand "turn on [flashlight]" as switching on.
Understand "turn off [flashlight]" as switching off.
Understand "light [candle]" as switching on.
Understand "extinguish [candle]" as switching off.
After switching on the candle:
	say "The scentless candle bursts to life with a tiny and weak flame."
After switching on the candle for the first time: increase score by 1.

The rocky cliff is a room. The rocky cliff is west of the Campfire.
After going to the rocky cliff:
		say "You cautiously make your way to the edge of the cliff and peer over. Unfortunately, you lose your footing and fall.";
		end the game in death.
		
[The Woods]
The woods are a room. The woods are north of the Campfire. "You venture outside towards the woods. You can hear the branches creaking and laughing at your misfortune. Somewhere, an owl hoots a solemn tune before being abruptly cut off. You shiver both from the cold and from the darkness. Tangled in the thorny holly trees are the dead branches of their taller brothers."
The holly tree is a supporter. It is fixed in place. It is in the woods. The description of holly tree is "You step closer and trip into the thorns, scratching your arms and snagging your shirt. It's dark, cold, and windy. Is this really the best time and place to leave your girl alone?"
After examining the holly tree for the first time: increase score by 1.
Owl is scenery in woods. The description is "You can't see the bird, but the echo of its last half-'hoot' rings in your ears."
Instead of taking owl:
	say "It's hard to take something that you can't even see."
Branches are a device. Branches are on the holly tree.
Understand "light [branches]" as switching on.
After switching on branches:
		say "You kindle a small fire, and your girlfriend is thankful for the warmth. However, you forgot to pack any food and the extinction of the first fire cost you the last of the daylight hours."
After switching on branches for the first time: increase score by 1.
		
[cabin]
The cabin is a room. It is south of the Campfire. The description is "It appears to be a small cabin with an outhouse to the east. The windows are boarded up and the oak door looks solid."
After going south from Campfire for the first time:
	say "Brandishing your faithful flashlight you cautiously make your way to the spooky old abandoned cabin you passed on your way to the camping location. Wind rushes through the top of the nearby woods and over your head, only to plummet down the rocky cliff. The cabin looms before you. There's an outhouse to the east."
The oak door is a door. It is south of cabin. The description of oak door is "The door is made of old, thick oak planks and has an iron cage over the peephole. A bullet is lodged to the right of the bars. [if master lock is unbroken] A simple Master lock keeps the door closed.[Otherwise] Pieces of a broken lock dangle uselessly." Oak door is closed and openable. It is locked and lockable.
Bullet is scenery. It is in cabin. It is undescribed. The description is "A spent .45".


The Master lock is a thing in cabin. Master lock is fixed in place. Master lock is unbroken. The description is "[if Master lock is unbroken] A simple lock with a key broken off inside. It looks like you'll have to look around for something to break it.[Otherwise]A broken lock. It's worth no more than the metal it's made of."; 

The windows are scenery in cabin. The description of windows is "Intact glass windows are jailed behind cris-crossing wooden planks. This doesn't seem like a plausible entryway."
After examining windows for the first time: increase score by 1.

[Dirt is a Region. Campfire, Woods, Outhouse, and Stream are in Dirt.

The grass is the floor in Dirt. The description is "The ground is composed of dirt and grass. Nothing special."

The Floor is the floor in the cabin. The description is "Your footfalls create a dull hollow sound on the frayed wooden planks that are tightly nailed together to create a level floor."]

[The Outhouse]
The outhouse is a room. The outhouse is east of the cabin. "You arrive at an old wooden outhouse. You notice an overturned wheelbarrow behind it. With a heavy push the door gives way to a small room full of stale air and forgotten spiderwebs. Up on a shelf is a toolbox. At your feet lies a trapdoor and the toilet function is nestled in the corner to your right."
The toolbox is scenery in outhouse. The description is "A standard old toolbox covered in dark stains that you can't make out in your flashlight's feeble beam."
After examining toolbox for the first time: increase score by 1.
The toilet is scenery in outhouse. The description is "A crude replication of the luxury you use at home."
The trapdoor is a door. It is closed and openable. It is below outhouse. The description is "A standard trapdoor; with a steel ring and everything."
After examining toilet for the first time: increase score by 1.
After examining trapdoor for the first time: increase score by 1.
The hole is a room. The hole is below trapdoor. "You drop down into a dark hole. The blackness is extreme, and you have no idea how large the room is. It looks like one giant shadow."
Shelf is scenery in outhouse. The description is "A simple, hand-made wooden shelf."
Instead of taking shelf:
	say "You grip the shelf firmly with two hands and give it a tug. It doesn't budge. Shelf: 1 You: 0."
Spiderwebs are scenery in outhouse. The description is "Have you ever played Minecraft? Those spiderwebs are a square meter. These spiderwebs put those to shame!"
Instead of taking spiderwebs:
	say "Something big enough to make those webs could eat you whole. I wouldn't even go near them."

[Shaddow Hidden Container]
Wall is scenery in hole. Understand "walls" as wall.
Box is a container. It is unlocked. It is fixed in place. The description is "You can't see it, but it appears to be a cast iron safe."
Instead of examining wall:
	say "You reach out, feeling up and down the crumbling walls of the hole. In some places the dirt is sticky and wet. Your hands come into contact with a box. It's made of metal and cold to the touch.";
	move Box to hole;
	increase score by 5.
Rose is a thing. The description is "The rose must be magic to have survived in the hole. It's soft to the touch and subtle to the nose."
Instead of opening box:
	say "The door to the safe takes a few tugs before it begrudgingly opens. You can't see what's inside, but you're sure there must be something.";
	move Rose to box.
After taking rose:
	increase score by 2.

Instead of opening the trapdoor when player is in outhouse:
	say "Are you sure? Remember, you are in an outhouse.";
	if player consents:
		say "Against your better judgement you lift the knarly trapdoor and make your way down the rickety ladder into a pit of darkness. The air is damp and reeks of mildew. Your flashlight cuts out and your foot lands on something crunchy.";
		now the trapdoor is open;
		move player to hole;
		now the flashlight is switched off;
	Otherwise:
		say "You catch yourself about to climb down an unstable ladder into a pit of darkness. You shudder, and try not to think about what's down there. You close the latch and are thankful for the life you didn't just lose."
After entering the hole for the first time: increase score by 1.
After switching on the candle in the hole:
	say "The feeble flame of the candle only makes the room more haunted as the shadows jump over the dirt walls and hide behind larger black masses. The silence echoes in your ears; bounching off the walls and forcing an almost unbreathable stench of rotten earth and death into your nose."; increase score by 1.

Darkness is a backdrop in Dark Places. Darkness is backdrop in Hole. Understand "shadow" or "shadows" as Darkness. The description is "The shadows won't hold still long enough for you to tell what they're of; but your subconcious has already decided they're ghosts and mutant monsters."
After going from the hole:
	say "You clamber desperately back up the rotting rope ladder. Your flashlight flickers back to life.";
	now the flashlight is switched on.
The wheelbarrow is scenery in outhouse. The description is "Small plants had made their homes between the cracks in the wood and cast eerie shadows across the ground. [If player is not carrying hammer]Here you find a hammer.[Otherwise]You see nothing else here."

Before examining wheelbarrow for the first time:
	say "Holding your flashlight with two hands, like a sword, you make your way to an old overturned wooden wheelbarrow."

A hammer is a thing. It is in outhouse. It is undescribed. The description is "A standard, boring hammer."
After examining hammer for the first time: increase score by 1.

[Hitting lock]
Understand "hit [something] with [something]" as hitting it with. Hitting it with is an action applying to two things.
Before going through the oak door:
	If the oak door is closed:
		if the Master lock is broken:
			Say "The door creaks heavily, sucking in wind and shadows. The room you enter consists of a fireplace, a sofa, and a kitchenette.";
			now the oak door is open.;
		Otherwise: 
			Say "The door is locked."
Check hitting it with:
	if the noun is a person, say "Well, the lock won that fight.";
	if the noun is lock and the second noun is not the hammer,
		say "This isn't the best use for that. The [second noun] is nothing compared to a hammer.";
	if the noun is lock and the second noun is the hammer,
		say "The head of the hammer thuds into the lock with a dull *clink* and breaks it."; 
		now the Master lock is broken;
		now the oak door is unlocked.

cabin interior is a room. It is south of oak door. The description is "The room consists of a solitary sofa infront of a fireplace, and a kitchenette."
After examining Cabin Interior for the first time: increase score by 1.
After going in cabin interior for the first time:
	say "The door creaks havily, sucking in wind and shadows. The room you enter consists of a fireplace, a sofa, and a kitchenette."
The sofa is scenery in cabin interior. The description is "A disgrace to the '70's, but nevertheless a sofa from that time. The ugly floral pattern is fadded and the cloth on the arm wrests is worn through."
Instead of looking under sofa:
	say "Just a family of dead dust mites."; increase score by 2.
After examining sofa for the first time: increase score by 1.

dust mites are scenery in cabin interior.
Instead of taking dust mites:
	say "As lovely a gift you think dust would be, I promise you're wrong. "

Ashes are scenery in cabin interior. The description is "A fluffy pile of soot."
Instead of taking ashes:
	say "You try desperately to scoop the ashes up, but they fall through your fingers. Don't feel too bad about it, though. I don't really think your girlfriend would think that's a nice present anyway."	
The fireplace is scenery. It is in the cabin interior. The description is "The last user had apparently forgotten to clean the fireplace. A thick pile of ashes lay under a thick layer of dust."
The kitchenette is a container in the cabin interior. It is fixed in place. The description is "Here you find several dollar-store white plates and a couple cans of soup whose expiration dates haven't yet been reached."
Plates are scenery in kitchenette. Plates are fixed in place. The description is "Ten milky-white, cheap plates. The skeletons of dead bugs are solidified to their surfaces."
After examining plates for the first time: increase score by 1.
Soup is food. Soup is uncooked. Soup is inside the kitchenette. The soup is undescribed. The description is "Just simple store-brand chicken noodle soup."
After examining soup for the first time: increase score by 1.
Bug Skeletons are scenery in cabin interior. The description is "Too dim to tell the exact details, but that's all for the better; bugs gross you out."
Instead of taking Bug Skeletons:
	say "If you're apprehensive about even looking at them, I can totally understand why you'd want to put them in your pocket. But you still try. However, the first one crumbles under the force of your fingers so you stop."

[Eating soup]
Instead of eating the soup when the player is not in Campfire: say "How rude! Remember, this is for you AND your girlfriend."; increase score by 1.
Instead of eating the soup when the branches are switched off:
	say "Apparently you have less class than your girlfriend. You need to cook this first."; increase score by 1.
Instead of eating the soup:
	if player is not carrying bottles:
		say "I hope you don't plan on eating that without something to drink!"
After eating soup: increase score by 1.

After entering the campfire when the player is carrying soup:
	say "You return to your tent and solemn girlfriend."
	
[The Stream]
Understand "fill [something]" as Filling. Filling is an action applying to one thing.
Instead of filling:
	if player is in stream:
		if noun is bottles:
			if player has bottles:
				say "You dip the mouth of each bottle into the stream until they are full of water.";
			if player does not have bottles:
				say "You can't use something that you don't have!"
The stream is a room. The stream is east of the campfire. The description of stream is "Just a simple, medium-speed crick."
After going to stream when Stream is unvisited:
	say "Within a few dozen paces you arrive at the stream."

	
Water is a thing in Stream. Water is undescribed. The description of water is "Cold and (hopefully) clean."
Bottled water is an edible thing. The description of bottled water is "A clear plastic bottle full of stream water."


Instead of taking Water when player is in stream:
	if player is not carrying bottles:
		say "You try desperately to cup the water in your hands, but they just aren't sufficient enough.";
	If player is carrying bottles:
		say "You dip the mouth of each bottle into the stream until they are full of water.";
		now bottles are off-stage;
		now player has Bottled Water.
After examining Bottled Water for the first time: increase score by 1.

Instead of going west from stream:
	if player is carrying bottles:
		if bottled water is in bottles:
			say "You make your way back to the campsite with an armful of bottled water.";
	continue the action.
	
Instead of eating or drinking the bottled water when the player is not in Campfire: say "Why would you hog all the water to yourself? Share!"; increase score by 1.


		
[End Scene 1 conditions.]
Instead of eating soup when the player is in Campfire:
	say "The soup singes your tongue, but you're grateful. You fear if it was cooler you'd be able to taste the cabin in it. (I hope you have something to wash this down!)";
	now the player is full;
	now the soup is off-stage; 
	increase score by 1.
	
Instead of eating or drinking bottled water when the player is in Campfire:
	say "The water tastes fine to you, so you give your girlfriend a reassuring smile. She takes a sip.";
	now the player is quenched;
	now the bottled water is off-stage; 
	increase score by 1.
	
[SCENE 2] [SCENE TWO]
Marketplace is a room. "You are in the center of the Marketplace. Look around to see where you want to go. If you get lost, head over to the General Store for a map."
Wallet is a container. It is closed and openable. The description is "A simple but nice brown leather wallet that has seen years of use."
After of opening wallet:
	if wallet has nothing:
		say "You open your wallet, only to see that it is empty.";
		continue the action;
	otherwise:
		continue the action.
An every turn rule:
	if the player is full:
		if the player is quenched:
			say "You survived the camping trip! However, your girlfriend isn't very happy with you. You promised her a wonderful weekend, but there was literally nothing wonderful about it. You fed her sketchy soup that you stole from a cabin that you broke into, for heaven's sake!";
			say "But that was last weekend. It's Saturday morning, and you're in the Marketplace. You want to make it up to your girl, but you're not quite sure how. I guess the first thing would be to stop calling her 'girl' or 'girlfriend'. She has a name. It's Elily. Now, look around. Maybe you'll see something to inspire you. (remember, NW, SW, NE and SE are directions)";
			now player is in Marketplace;
			now branches are off-stage;
			now lighter is off-stage;
			now flashlight is off-stage;
			now candle is off-stage;
			now bottles are off-stage;
			now bottled water is off-stage;
			now soup is off-stage;
			now rose is off-stage;
			now hammer is off-stage;
			now water is off-stage;
			now backpack is off-stage;
			now player has wallet;
			now the player is hungry;
			now the player is thirsty.
[Marketplace Rooms]
General Store is a room. It is northwest of Marketplace. "The General Store was here first. It has several little things on the front desk."

Italian Bistro is a room. It is north of Marketplace. "The Bistro is the coffee and social hub of the town. Everyone gathers here for a bite to eat, something to drink, or to just talk to the other townspeople. There are menus hanging over the counter, scattered round tables, and a brown sofa."
Park is a room. It is northeast of Marketplace. "A lovely little park. It has a few tall trees and a picnic bench. It looks like someone abandoned their picnic here."
Flower Vendor is a room. It is east of Marketplace. "Mr. Florence has run the vending cart for as long as you've lived here."
Garden is a room. It is southeast of Marketplace. "Ms. Baker is an elderly old woman who takes are of her garden as if it were a newborn baby. She's a frail lady, and often needs help with errands."
Appliance Store is a room. It is south of Marketplace. "The Appliance Store is small and rarely has anything in stock. You can look for an item, but it's probalby not in stock. As you enter the store, a cardboard cutout of Steve Jobs greets you."
Bank is a room. It is southwest of Marketplace. "The Bank is the safest place to keep your money."
Tack Shop is a room. It is south of Appliance Store. "The Tack Shop sells equestrian products; brushes, curry combs, halters, saddles, buckets, and more."
Forest is a room. It is northeast of Park. "The forest is criss-crossed with hiking and biking trails. It's a nice place to go for a walk."
School is a room. It is west of Marketplace. "The school is small, but you have good memories from it. You can see your computer science teacher, Mr. DK, leaning against the wall, playing on his iPad. He's known to be a fan of Steve Jobs."


[DirectionLooking]			
Understand "look [direction]" as DirectionLooking. DirectionLooking is an action applying to one visible thing and requiring light.
Instead of DirectionLooking west in the Marketplace:
	say "You look to the west and see the school."
Instead of DirectionLooking south in the Marketplace:
	say "A small Appliance Store."
Instead of DirectionLooking east in the Marketplace:
	say "You see an older man selling flowers."
Instead of DirectionLooking north in the Marketplace:
	say "You see a cozy Italian Bistro; it's where everyone goes to talk."
Instead of DirectionLooking northwest in the Marketplace:
	say "A simple General Store."
Instead of DirectionLooking southwest in the Marketplace:
	say "You see the town Bank."
Instead of DirectionLooking southeast in the Marketplace:
	say "You see Ms. Baker's Garden."
Instead of DirectionLooking northeast in the Marketplace:
	say "You spy the park; you and Elily used to have picnics there."
	

[General Store]
Front Desk is scenery in General Store. The description is "On the counter are many different boxes selling little things: matches, lighters, and town maps."
Matches are scenery in General Store. The description is "Several boxes of Stansport Waterproof Matches."
Instead of taking Matches:
	say "You reach for the matches, but you're tight on money and you know that you don't need them."
Lighters are scenery in General Store. The description is "A pastic jar full of green, yellow, orange, blue, red, and white BIC lighters."
Instead of taking Lighters:
	say "You have enough lighters back home, so you decide against buying these."
Town Map is a thing. It is undescribed. It is in General Store. Understand "town maps" or "maps" as town map. The description is "[if player has map]General Store: NW. Italian Bistro: N. Park: NE. Forest: NE of Park. Flower Vendor: E. Garden: SE. Appliance Store: S. Tack Shop: S of Appliance Store. Bank: SW. School: W.[otherwise]A handy piece of paper in the Marketplace. It tells you where everthing is."
Instead of taking Town Map:
	if player has Five Coin Piece:
		say "A map costs a Five Coin Piece. Purchase?";
		if player consents:
			say "You hand over the coin in exchange for a map.";
			now Five Coin Piece is off-stage;
			now player has Town Map;
		Otherwise:
			say "You decide to hold onto your money. How confusing can the town be?";
	Otherwise:
		say "You can't steal this! It costs a Five Coin Piece. Perhaps you have some money in the bank."
		
[Italian Bistro]
Rule for printing the name of Mr Mason: say "Mr. Mason".
Mr Mason is a man. He is in Italian Bistro. The description is "Mr. Mason is the manager of Italian Bistro."
Instead of giving Wooden Crate to Mr Mason:
	say "'Hey, Mr. Mason?' You say, approaching the manager.[paragraph break]'Yes? Ah,' he says, seeing the crate. 'Thank you,' he says as he takes the crate from you. 'Here, be sure to give this to Ms. Baker.' He hands you a check and takes the crate to he back of the store.";
	now Wooden Crate is off-stage;
	now player has Payment Check.
Instead of talking to Mr Mason:
	if player has Wooden Crate:
		say "'Hey, Mr. Mason?' You say, approaching the manager.[paragraph break]'Yes? Ah,' he says, seeing the crate. 'Thank you,' he says as he takes the crate from you. 'Here, be sure to give this to Ms. Baker.' He hands you a check and takes the crate to he back of the store.";
		now Wooden Crate is off-stage;
		now player has Payment Check;
	otherwise:
		say "Mr. Mason is a busy man. You shouldn't bother him unless it's important."
Round Table is an enterable scenery supporter in Italian Bistro. The description is "A solid wood table with carvings on the leg. There are chairs around each table."
Chair is an enterable scenery supporter in Italian Bistro. The description is "A simple wooden chair."
Instead of going when the player is on Round Table:
	say "(First getting off the table).";
	continue the action.
Instead of going when the player is on Chair:
	say "(First getting off the chair).";
	continue the action.
Brown Sofa is an enterable scenery supporter in Italian Bistro. The description is "A comfortable sofa."
Instead of going when the player is on Brown Sofa:
	say "(first getting off the sofa)";
	continue the action.

	
[Food]
Menus is scenery. It is in Italian Bistro. The description is "There are two menus hanging over the counter: a food menu and a beverage menu."
Food Menu is scenery. It is in Italian Bistro. The description is "Hummus Bagel(4 CP)[line break]Breakfast Pizza(9 CP)[line break]Belgian Waffle(6 CP)[line break]Curry Chicken Salad(7 CP)[line break]Turkey Cranberry Sandwich(8 CP)."
Beverage Menu is scenery. It is in Italian Bistro. The description is "Our Famous Joe(1 CP)[line break]Cold Brewed Coffee(2 CP)[line break]Espresso Machiato(2.5 CP)[line break]Americano(1.5 CP)[line break]Italian Cream Soda(3 CP)."
Yummy-Hummus Bagel is food. It is cooked. The description is "This looks very delicious!"
Yummy-Breakfast Pizza is food. It is cooked. The description is "Pizza for breakfast? YUM!"
Yummy-Belgian Waffle is food. It is cooked. The description is "Who doesn't love waffles??"
Yummy-Curry Chicken Salad is food. It is cooked. The description is "This smells amazing."
Yummy-Turkey Cranberry Sandwich is food. It is cooked. The description is "It's like Thanksgiving in June."
Yummy-Famous Joe is food. It is cooked. The description is "The best cup of coffee."
Delightful-Cold Brewed Coffee is food. It is cooked. The description is "All the yummy of coffee without the burning hot aspect."
Extra-Kick Machiato is food. It is cooked. The description is "Something delicious that will wake you right up!"
Steaming-Americano is food. It is cooked. The description is "One of the best cups of coffee."
Tasty Italian Soda is food. It is cooked. The description is "Creamy delicious soda."

Hummus Bagel is scenery. It is in Italian Bistro. The description is "Hummus, tomatoes and cucumbers spread over a plain bagel."
Breakfast Pizza is scenery. It is in Italian Bistro. The description is "Scrambled eggs, cheese, tomatoes, and bacon."
Belgian Waffle is scenery. It is in Italian Bistro.  The description is "With butter, maple syrup, and bacon."
Curry Chicken Salad is scenery. It is in Italian Bistro.  The description is "Curry chicken over a salad of tossed greens with tomatoes and cucumber."
Turkey Cranberry Sandwich is scenery. It is in Italian Bistro. The description is "Sliced veggies and cranberry sauce spread over turkey on nine grain bread."
Our Famous Joe is scenery. It is in Italian Bistro. The description is "Your favorite cup of coffee done perfect every time."
Cold Brewed Coffee is scenery. It is in Italian Bistro. The description is "Delicious coffee."
Espresso Machiato is scenery. It is in Italian Bistro.  The description is "Espresso with a small amount of milk."
Americano is scenery. It is in Italian Bistro.  The description is "Espresso with water."
Italian Cream Soda is scenery. It is in Italian Bistro. The description is "A non-caffeinated, deliciously creamy soda."
[Taking and buying menu items]
Instead of taking Hummus Bagel:
	if player has Four Coin Piece:
		say "Hummus Bagel costs a Four Coin Piece. Purchase?";
		if player consents:
			say "You hand over the coin in exchange for the bagel.";
			now Four Coin Piece is in Blackbox;
			now player has Yummy-Hummus Bagel;
		Otherwise:
			say "You decide that you're not that hungry and pass up the bagel.";
	Otherwise:
		say "You can't steal this! It costs a Four Coin Piece. Try later when you have the money."
Instead of taking Breakfast Pizza:
	if player has Nine Coin Piece:
		say "Breakfast Pizza costs a Nine Coin Piece. Purchase?";
		if player consents:
			say "You hand over the coin in exchange for the pizza.";
			now Nine Coin Piece is in Blackbox;
			now player has Yummy-Breakfast Pizza;
		Otherwise:
			say "You decide that you're not that hungry and pass up the pizza.";
	Otherwise:
		say "You can't steal this! It costs a Nine Coin Piece. Try later when you have the money."
Instead of taking Belgian Waffle:
	if player has Six Coin Piece:
		say "Belgian Waffle costs a Six Coin Piece. Purchase?";
		if player consents:
			say "You hand over the coin in exchange for the waffle.";
			now Six Coin Piece is in Blackbox;
			now player has Yummy-Belgian Waffle;
		Otherwise:
			say "You decide that you're not that hungry and pass up the waffle.";
	Otherwise:
		say "You can't steal this! It costs a Six Coin Piece. Try later when you have the money."
Instead of taking Curry Chicken Salad:
	if player has Seven Coin Piece:
		say "Curry Chicken Salad costs a Seven Coin Piece. Purchase?";
		if player consents:
			say "You hand over the coin in exchange for the salad.";
			now Seven Coin Piece is in Blackbox;
			now player has Yummy-Curry Chicken Salad;
		Otherwise:
			say "You decide that you're not that hungry and pass up the salad.";
	Otherwise:
		say "You can't steal this! It costs a Seven Coin Piece. Try later when you have the money."
Instead of taking Turkey Cranberry Sandwich:
	if player has Eight Coin Piece:
		say "Turkey Cranberry Sandwich costs an Eight Coin Piece. Purchase?";
		if player consents:
			say "You hand over the coin in exchange for the pizza.";
			now Eight Coin Piece is in Blackbox;
			now player has Yummy-Turkey Cranberry Sandwich;
		Otherwise:
			say "You decide that you're not that hungry and pass up the sandwich.";
	Otherwise:
		say "You can't steal this! It costs an Eight Coin Piece. Try later when you have the money."
Instead of taking Our Famous Joe:
	if player has One Coin Piece:
		say "Our Famous Joe costs a One Coin Piece. Purchase?";
		if player consents:
			say "You hand over the coin in exchange for the coffee.";
			now One Coin Piece is in Blackbox;
			now player has Yummy-Famous Joe;
		Otherwise:
			say "You decide that you're not that thirsty and pass up the coffee.";
	Otherwise:
		say "You can't steal this! It costs a One Coin Piece. Try later when you have the money."
Instead of taking Cold Brewed Coffee:
	if player has Two-Coin Piece:
		say "Cold Brewed Coffee costs a Two-Coin Piece. Purchase?";
		if player consents:
			say "You hand over the coin in exchange for the coffee.";
			now Two-Coin Piece is in Blackbox;
			now player has Delightful-Cold Brewed Coffee;
		Otherwise:
			say "You decide that you're not that thirsty and pass up the coffee.";
	Otherwise:
		say "You can't steal this! It costs a Two-Coin Piece. Try later when you have the money."
Instead of taking Espresso Machiato:
	if player has Two And A Half Coin Piece:
		say "Espresso Machiato costs a Two And A Half Coin Piece. Purchase?";
		if player consents:
			say "You hand over the coin in exchange for the espresso.";
			now Two And A Half Coin Piece is in Blackbox;
			now player has Extra-Kick Machiato;
		Otherwise:
			say "You decide that you're not that thirsty and pass up the espresso.";
	Otherwise:
		say "You can't steal this! It costs a Two And A Half Coin Piece Coin Piece. Try later when you have the money."
Instead of taking Americano:
	if player has One And A Half Coin Piece:
		say "Americano costs a One And A Half Coin Piece. Purchase?";
		if player consents:
			say "You hand over the coin in exchange for the coffee.";
			now One And A Half Coin Piece is in Blackbox;
			now player has Steaming-Americano;
		Otherwise:
			say "You decide that you're not that thirsty and pass up the coffee.";
	Otherwise:
		say "You can't steal this! It costs a One And A Half Coin Piece. Try later when you have the money."
Instead of taking Italian Cream Soda:
	if player has Three Coin Piece:
		say "Italian Cream Soda costs a Three Coin Piece. Purchase?";
		if player consents:
			say "You hand over the coin in exchange for the coffee.";
			now Three Coin Piece is in Blackbox;
			now player has Tasty Italian Soda;
		Otherwise:
			say "You decide that you're not that thirsty and pass up the coffee.";
	Otherwise:
		say "You can't steal this! It costs a Three Coin Piece. Try later when you have the money."
		
[Hayden]
Paper is a thing.
Hayden is a man. He is in Italian Bistro. The description is "Hayden is an interesting man. He wanders around in the forest and under the willow tree in the park. He's rarely seen in any establishments. Dressed always in a black trenchcoat, the man hides his obvious old age in the shadow of his clothes." Hayden is wearing a black trenchcoat. 
Instead of talking to Hayden for the first time:
	say "'Hello, Hayden.' You sit down on the sofa next to him. He continues to look into his coffee mug.[paragraph break]'Wade,' he acknowledges.[paragraph break]'How do you know my-' Hayden looks up at you. 'Never mind.' Hayden holds your gaze for another second, then drops it to his mug and takes a sip.[paragraph break]'Anyone can buy a girl flowers, Wade.' He says. You become uncomfortable. 'I think you should do something a little more special for her, Wade. She's worth more than flowers.' You shift in your seat.[paragraph break]'Well, I have other ideas, too-'[paragraph break]'Ah.'[paragraph break]'Do you have a better idea, sir?' Hayden chuckles.[paragraph break]'I'm no 'sir'. But yes. I do. A beautiful girl like Elily? Flowers are silly. Would you like to know of my idea?'";
	if player consents:
		say "'Ahh, yes. Have you ever been to the forest, Wade? It's just northeast of the park.'[paragraph break]'I've biked the trails a time or two, yes.'[paragraph break]'There is a wonderful creature, in those trees, Wade. She sparkles and glistens and flies like the wind,' his voice trails. 'You must find her, Wade. And you must tame her. And she will take you to wonderous places.'[paragraph break]'What, what do you mean?' Hayden has completely lost you. 'A flying creature that I can tame and ride? What are you talking about.' Hayden smiles.[paragraph break]'I'm rather hungry, Wade. Why don't you buy me a Curry Chicken Salad, and we can talk about it.'";
	otherwise:
		say "'No, actually. I think my gift will be perfect for her.'[paragraph break]'Mm, I thought you'd say that.'[paragraph break] You stand up, and walk over the the counter and examine the menus. But Hayden's words ring through your head, teasing your curiosity. 'I don't have to listen to his idea,' you reason with yourself. 'But I'd still like to know what he's thinking.' You return to the sofa.[paragraph break]'I changed my mind, Hayden. What is your idea?'";
		say "'Ahh, yes. Have you ever been to the forest, Wade? It's just northeast of the park.'[paragraph break]'I've biked the trails a time or two, yes.'[paragraph break]'There is a wonderful creature, in those trees, Wade. She sparkles and glistens and flies like the wind,' his voice trails. 'You must find her, Wade. And you must tame her. And she will take you to wonderous places.'[paragraph break]'What, what do you mean?' Hayden has completely lost you. 'A flying creature that I can tame and ride? What are you talking about.' Hayden smiles.[paragraph break]'I'm rather hungry, Wade. Why don't you buy me a Curry Chicken Salad, and we can talk about it.'";
	if player has Yummy-Curry Chicken Salad:
		say "You hand over the salad.[paragraph break]Hayden takes a bite. 'Delicious.'[paragraph break]'Hayden. This animal?'[paragraph break]'Ah. She is beautiful, Wade.'[paragraph break]'What is she? How would I even train her?'[paragraph break]'She is a unicorn, Wade. A beautiful, beautiful unicorn. She's very special to me.' You stare at the man, appalled. A unicorn? Those didn't exist! 'Oh Wade, so naive. They do exist. Go find her, Wade. She will take you to a wonderful place. There, you will be able to find something worthy for Elily.' You stare at the man speechlessly.  He takes another bite of salad.[paragraph break]'Okay, Hayden. Let's say I believe you. How would I even tame her?' Hayden becomes quiet. He turns and his eyes lock with yours. You're too scared to break the connection.[paragraph break]'She is very special to me, Wade. You cannot speak of her to a single soul. Or anything soulless, for that matter. Understood?' You nod hastily. The tension dissipates and Hayden picks his plate back up. 'Just make your way down to the Tack Shop, it's south of the Appliance Store. Talk to the sales associate there.' You nod, still trying to process what you just learned. You couldn't make yourself believe that there was actually a unicorn in the forest, but you couldn't resist looking. 'Oh- Wade. You'll need this.' Hayden hands you a 200CP, and returns to his meal.";
		now player has 200-Coin Piece;
		now Yummy-Curry Chicken Salad is in bistro box;
	otherwise:
		say "You continue to look at Hayden, but he ignores you and your abscence of Curry Chicken Salad.";
		now Paper is in Bistro Box.
Instead of talking to Hayden:
	if paper is in Bistro box:
		if player has Yummy-Curry Chicken Salad:
			say "You hand over the salad.[paragraph break]Hayden takes a bite. 'Delicious.'[paragraph break]'Hayden. This animal?'[paragraph break]'Ah. She is beautiful, Wade.'[paragraph break]'What is she? How would I even train her?'[paragraph break]'She is a unicorn, Wade. A beautiful, beautiful unicorn. She's very special to me.' You stare at the man, appalled. A unicorn? Those didn't exist! 'Oh Wade, so naive. They do exist. Go find her, Wade. She will take you to a wonderful place. There, you will be able to find something worthy for Elily.' You stare at the man speechlessly  He takes another bite of curry.[paragraph break]'Okay, Hayden. Let's say I believe you. How would I even tame her?' Hayden became quiet. He turns and his eyes lock with yours. You're too scared to break the connection.[paragraph break]'She is very special to me, Wade. You cannot speak of her to a single soul. Or anything soulless, for that matter. Understood?' You nod hastily. The tension dissipates and Hayden picks his plate back up. 'Just make your way down to the Tack Shop, it's south of the Appliance Store. Talk to the sales associate there.' You nod, still trying to process what you just learned. You couldn't make yourself believe that there was actually a unicorn in the forest, but you couldn't resist looking. 'Oh- Wade. You'll need this.' Hayden hands you a 200CP, and returns to his meal.";
			now player has 200-Coin Piece;
			now Yummy-Curry Chicken Salad is in Bistro Box;
		otherwise:
			say "You look at Hayden, but he ignores you and your abscence of Curry Chicken Salad."
Instead of talking to Hayden:
	if yummy-curry chicken salad is in Bistro Box:
		say "Hayden has absorbed himself in a leather-bound book, and you decide against bothering him."

[Park]
Tall Trees are scenery in Park. The description is "There are a couple black cherry trees and a willow tree."
Black Cherry Trees are scenery in Park. The description is "There are only three of them. Their leaves are smooth and shiny."
Willow Tree is scenery in Park. The description is "The willow tree is definately the oldest thing in the park. It's long leaves and branches brush the ground, and its trunk is scarred."
Leaves are scenery in Park. The description is "The light green leaves dust the ground like a natural broom."
Trunk is scenery in Park. The description is "The trunk of the willow has been carved in by decades of teenagers. There are hearts with initials as well as curse words."
Hearts are scenery. They are in Park. The description is "The most prominent heart contains a 'E+A'".
Curse Words is scenery in Park. The description is "You look closely, but you see no curse words that you don't already know. Not that it matters, because Elily doesn't like it when you 'say bad words'."
Scars are scenery in Park. The description is "The scars are from knives and other blunt objects that people used to carve into the wood."
Bench is an enterable scenery supporter in Park. The description is "A wooden picnic bench."
Instead of going when the player is on Bench:
	say "(First getting off the picnic bench)";
	continue the action.
The Picnic is scenery. It is in Park. The description is "It appears as if a family abandoned their picnic. There's a basket, some trash, and the tablecloth."
Picnic-Basket is a container.
Instead of taking Basket:
	say "You pick up the basket.";
	now player has Picnic-Basket;
	now Basket is off-stage.
Basket is scenery in Park. The description is "You open the lid of the picnic basket to reveal an untouched cheesecake."
Fancy-Cheesecake is food. It is cooked.
Cheesecake is scenery. It is in Park. The description is "It looks fancy! The sticker says 'Fruit Sampler (strawberry, cherry, pineapple, blueberry)'."
Instead of taking Cheesecake:
	say "You look over your shoulder to make sure no one is around, and take the cheesecake.";
	now player has Fancy-Cheesecake;
	now Cheesecake is off-stage.
Trash is scenery. It is in Park. The description is "There are several empty plastic sandwich bags and a couple forks."
Sandwich Bags are scenery. They are in Park. The description is "There are a few crumbs left in one of the bags.. possibly white bread."
Sandwich Bag is a thing.
Instead of taking Sandwich Bags:
	say "You pick up the bags and stuff them in your pockets. You don't condone littering.";
	now player has Sandwich Bag.
Forks are scenery. They are in Park. The description is "Three white-plastic forks. They've obviously been used; one even has the bite marks of a small child on the handle."
Used Forks are a thing.
Instead of taking Forks:
	say "For some reason you decide that used forks could be useful to you, and you pick them up.";
	now player has Used Forks.
Tablecloth is scenery. It is in Park. The description is "A standard red-and-white checkered picnic blanket."
Picnic Blanket is a thing.
Simple Key is a thing. The description is "Your lost key!"
Instead of taking Tablecloth:
	say "You fold up the blanket and throw it over your shoulder. As you do so, a key falls out from between the folds.";
	now player has Picnic Blanket;
	now player has Simple Key. 

[Flower Vendor]
Rule for printing the name of Mr Florence: say "Mr. Florence".
Mr Florence is a man. He is in Flower Vendor. "Mr. Florence is refilling the water for some of the flowers." The description is "Mr. Florence is an older gentleman in his early sixties. He's wearing grey slacks and a white shirt with skinny light green stripes." Mr Florence is wearing grey slacks. Mr Florence is wearing a White Shirt. 
[Flowers]
Instead of taking Wildflowers:
	if player has Two-Coin Piece:
		say "Wildflowers cost a Two-Coin Piece. Purchase?";
		if player consents:
			now Two-Coin Piece is off-stage;
			continue the action;
	otherwise:
		say "You can't steal that! It costs a Two-Coin Piece."
Instead of taking Azaleas:
	if player has Two-Coin Piece:
		say "Azaleas cost a Two-Coin Piece. Purchase?";
		if player consents:
			now Two-Coin Piece is off-stage;
			continue the action;
	otherwise:
		say "You can't steal that! It costs a Two-Coin Piece."
Instead of taking Pink Lilies:
	if player has Two-Coin Piece:
		say "Pink Lilies cost a Two-Coin Piece. Purchase?";
		if player consents:
			now Two-Coin Piece is off-stage;
			continue the action;
	otherwise:
		say "You can't steal that! It costs a Two-Coin Piece."
Instead of taking White Lilies:
	if player has Two-Coin Piece:
		say "White Lilies cost a Two-Coin Piece. Purchase?";
		if player consents:
			now Two-Coin Piece is off-stage;
			continue the action;
	otherwise:
		say "You can't steal that! It costs a Two-Coin Piece."
Instead of taking Daffodils:
	if player has Two-Coin Piece:
		say "Daffodils cost a Two-Coin Piece. Purchase?";
		if player consents:
			now Two-Coin Piece is off-stage;
			continue the action;
	otherwise:
		say "You can't steal that! It costs a Two-Coin Piece."
Instead of taking Irises:
	if player has Two-Coin Piece:
		say "Irises cost a Two-Coin Piece. Purchase?";
		if player consents:
			now Two-Coin Piece is off-stage;
			continue the action;
	otherwise:
		say "You can't steal that! It costs a Two-Coin Piece."
Instead of taking Jasmine Blossoms:
	if player has Two-Coin Piece:
		say "Jasmine Blossoms cost a Two-Coin Piece. Purchase?";
		if player consents:
			now Two-Coin Piece is off-stage;
			continue the action;
	otherwise:
		say "You can't steal that! It costs a Two-Coin Piece."
Instead of taking Marigolds:
	if player has Two-Coin Piece:
		say "Marigolds cost a Two-Coin Piece. Purchase?";
		if player consents:
			now Two-Coin Piece is off-stage;
			continue the action;
	otherwise:
		say "You can't steal that! It costs a Two-Coin Piece."
Instead of taking Daisies:
	if player has Two-Coin Piece:
		say "Daisies cost a Two-Coin Piece. Purchase?";
		if player consents:
			now Two-Coin Piece is off-stage;
			continue the action;
	otherwise:
		say "You can't steal that! It costs a Two-Coin Piece."
Vending Cart is scenery. It is in Flower Vendor. The description is "A rather nice wooden cart with metal supports. Bushels of flowers are gathered in dozens along the cart's shelves."
Bushels of Flowers are scenery. They are in Flower Vendor. The description is "There are: wildflowers, azaleas, pink and white lilies, daffodils, irises, jasmine blossoms, marigolds, and daisies. Each dozen costs a Two-Coin Piece."
Wildflowers are a thing. They are in Flower Vendor. The description is "A dozen different flowers bunched together."
Different Flowers are scenery. They are in Flower Vendor. The description is "You don't know what they're called, but they sure are pretty!"
Azaleas are a thing. They are in Flower Vendor. The description is "A white flower with five long petals that curl down."
Pink Lilies are a thing. They are in Flower Vendor. The description is "A six petaled flower that is dark pink down the center of each petal. The pink fades to white by the end of the petal."
White Lilies are a thing. They are in Flower Vendor. The description is "A six petaled flower. The base of each petal has a slight yellow-green hue."
Daffodils are a thing. They are in Flower Vendor. The description is "A six petaled yellow flower. The petals are oblong to a point at the tip. At the center of the flower it looks like there's another flower that's orange."
Irises are a thing. They are in Flower Vendor. The description is "These irises are a royal purple."
Jasmine Blossoms are a thing. They are in Flower Vendor. The description is "Small, four-petal white flowers."
Marigolds are a thing. They are in Flower Vendor. The description is "A ball of orange and red petals."
Daisies are a thing. They are in Flower Vendor. The description is "A beautiful and simple flower with a yellow center and many slender long white petals."


[Garden]
Bistro Box is a container.
Payment Check is a thing. It is in Bistro Box.
Baker Box is a container.
Wooden Crate is a thing. The description is "A simple wooden crate holding various vegetables."
Rule for printing the name of Ms Baker: say "Ms. Baker".
Ms Baker is a woman. She is in Garden. The description is "Ms. Baker is a lovely older woman who spends all of her time in her garden. She is wearing gardening gloves and a gardening apron, and she sells her flowers to Mr. Florence and her fruits and vegetables to the Italian Bistro. But she has a hard time getting around town, and rewards others for helping her out. You often help her with chores, and she treats you with fondness." Ms Baker is wearing Gardening Gloves. Ms Baker is wearing Gardening Apron.;
Instead of talking to Ms Baker:
	if player has Wooden Crate:
		say "'Oh, Wade, dear, you're still lugging that crate around? Please hurry and take it to Mr. Mason.'";
	if Picnic Blanket is in Baker Box:
		say "'Anything else I can do for you, Ms. Baker?' [paragraph break]'Oh, I'm alright for now, sweety. You've been very helpful though, as always. Here, have something extra- get something for Elily.' She hands you a seven coin piece.";
		now player has Seven Coin Piece.;
	otherwise:
		if Payment Check is in Baker Box:
			say "'Oh, Wade, I'm so glad you're here. Can you run over to the Park and get my picnic blanket? I forgot it there earlier.'";
			if player has Picnic Blanket:
				say "You hand over the picnic blanket. 'Here you are, Ms. Baker.'[paragraph break]'Oh, thank you. So very helpful of you. Here, for your troubles.' She hands you a four coin piece.";
				now player has Four Coin Piece;
				now Picnic Blanket is in Baker Box;
	if Payment Check is in Bistro Box:
		say "'Hey, Ms. Baker. How are you?' You say laoudly as you approach the older woman. She looks up and beams at you.[paragraph break]'Wade! It's so nice to see you again!' She brushes her hands off on her apron and gives you a hug. 'I'm doing just fine, sweety.'[paragraph break]'Well, I'm very glad to hear that, Ms. Baker. Is there anything I can help you with?'[paragraph break]'Hmm,' she says as she puts her left hand on her hip. 'Actually, there is. Do you think that you could take this crate of vegetables to Mr. Mason in the Italian Bistro? Make sure to bring back the check he gives you, and I'll have something special for you.' She leads you to a wooden crate. With a grunt, you pick it up.[paragraph break]'Thanks again, dear.'[paragraph break]'No problem, Ms. Baker. I'll be right back.'";
		now player has Wooden Crate;
	if player has Payment Check:
		say "'Here, Ms. Baker.' You hand over the check.[paragraph break]'Oh, thank you dear! And here's a little something for you.' Ms. Baker hands you a nine coin piece.";
		now player has Nine Coin Piece;
		now Payment Check is in Baker Box;	
	


[Appliance Store]
Steve Jobs is scenery in Appliance store. The description is "A lovely and realistic cardboard cutout image of Steve Jobs. He is wearing glasses, white tennis shoes, a long-sleeved black turtleneck shirt, and blue jeans."
Instead of taking Steve Jobs:
	if player has Ten Coin Piece:
		say "The cutout of Steve Jobs costs a Ten Coin Piece. Purchase?";
		if player consents:
			say "You buy the cutout. Perhaps you should gift it; Elily isn't a Mac fan.";
			now player has Steve Jobs;
			now Ten Coin Piece is off-stage;
	otherwise:
		say "[if Steve Jobs is in school] You can't take a gift back![Otherwise]You can't steal that! The Steve Job cutout costs a Ten Coin Piece. Perhaps you have the money in the bank."
Forple is a kind of thing.
Understand "look for [something]" as LookingFor. LookingFor is an action applying to one thing.
Check lookingfor:
	if noun is a forple:
		say "It looks like they're out of [noun]s.";
	otherwise:
		say "This is a simple appliance store. It doesn't sell [noun].".
iPod Touch is a forple. It is scenery.  It is in Appliance store.
Music Player is a forple. It is scenery. It is in Appliance store.
iPad is a forple. It is scenery. It is in Appliance store. Understand "kindle" as an iPad.  
Camera is a forple. It is scenery. It is in Appliance store. 
Phone is a forple. It is scenery. It is in Appliance store. Understand "cell phone" as a phone.
TV is a forple. It is scenery. It is in Appliance store. Understand "television" as a TV.
GPS is a forple. It is scenery. It is in Appliance store. 
Headphones are a forple. It is scenery. It is in Appliance store. Understand "earphones" as headphones.
Blu-Ray Player is a forple. It is scenery. It is in Appliance store. 
Charger is a forple. It is scenery. It is in Appliance store. 
CD is a forple. It is scenery. It is in Appliance store. 
DVD is a forple. It is scenery. It is in Appliance store. 
VCR is a forple. It is scenery. It is in Appliance store. 
Remote is a forple. It is scenery. It is in Appliance store. Understand "TV remote" or "television remote" as Remote.
X-Box is a forple. It is scenery. It is in Appliance store. 
Playstation is a forple. It is scenery. It is in Appliance store. 
DS is a forple. It is scenery. It is in Appliance store. 
Gameboy is a forple. It is scenery. It is in Appliance store. 
PS3 is a forple. It is scenery. It is in Appliance store. 
Computer Mouse is a forple. It is scenery. It is in Appliance store. Understand "mouse" as computer mouse.
Computer is a forple. It is scenery. It is in Appliance store. Understand "monitor" or "laptop" as a computer.
Speakers are a forple. It is scenery. It is in Appliance store. Understand "speaker" as speakers.
Light bulb is a forple. It is scenery. It is in Appliance store. 
Watch is a forple. It is scenery. It is in Appliance store. 
Keyboard is a forple. It is scenery. It is in Appliance store. 
Ethernet cable is a forple. It is scenery. It is in Appliance store. 
Cable Modem is a forple. It is scenery. It is in Appliance store. 
Power adapter is a forple. It is scenery. It is in Appliance store. 
Extension cord is a forple. It is scenery. It is in Appliance store. 
Beats are a forple. It is scenery. It is in Appliance store. Understand "beats by dre" as Beats.
Screen Protectors are a forple. It is scenery. It is in Appliance store. 

[School]
Rule for printing the name of Mr DK: say "Mr. DK".
Mr DK is a man. He is in School. He is wearing dark slacks, black shoes, and an Aloha shirt.
Instead of talking to Mr DK:
	if player has Steve Jobs:
		say "Why don't you just give him Steve Jobs? It's going to be weird talking to him holding that giant cutout.";
	otherwise:
		say "Mr. DK looks busy. You shouldn't bother him unless it's something worthwhile."
Instead of giving Steve Jobs to Mr DK:
	if player has Steve Jobs:
		say "'Hey, Mr. DK,' you say stepping up to him. 'I saw this in the store, and I thought you might like it for your classroom, or something.' You hand over the cardboard cutout.[paragraph break]'Oh, thank you, Wade.' Mr. DK says, accepting the cutout. 'This really does look like him.' Mr. DK then looks both ways, and leans closer to you. 'Now, Wade, I think this guarantees you an A on your project.' You laugh nervously.[paragraph break]'Oh Mr. DK, I'll still put the work in, but thanks.'";
		now Steve Jobs is scenery in School;
		now description of Steve Jobs is "A wonderful cardboard cutout of Steve Jobs, gifted to Mr. DK by you and put on display in the main hall.";
		increase score by 20;
	otherwise:
		say "How are you supposed to give him something that you don't have?"



[Bank]
After going to Bank when Bank is unvisited:
	say "You climb the stone steps and enter the bank, looking around. The teller looks up at you."
The teller is a man. He is in Bank. The description is "A simple fellow appearing to be about 35. He's wearing a blue collard shirt and a paisley tie." He is wearing a blue shirt. He is wearing a paisley tie.
Instead of talking to The Teller:
	if player has Simple Key:
		say "'Hello, I'm Wade-'[paragraph break]'I know who you are. Do you have your key?' You rummage through your pockets and pull out the key you found at the park. 'Ah, very good, sir. Right this way.' The teller leads you to your vault, 'vault 316,' then returns to the front of the bank.";
		now Vault 316 is in Bank;
	otherwise:
		say "Hello, I'm Wade-'[paragraph break]'I know who you are. Do you have your key?' You rummage through your pockets, but come up empty. 'No, I must have dropped it in the park or something.' The teller is unamused. 'I can't open your vault unless you have the key. Come back after you find it.'"

[Money]
Monetary is a kind of thing.
Monetary can be given. Monetary can be taken. 
Understand "put [something] in [something]" as Put. Put is an action applying to two things.
Check putting:
	if noun is Monetary and second noun is wallet:
		say "You put the coin in your wallet.";
		now noun is in Wallet;
	otherwise:
		say "That won't fit in your wallet!"
Vault 316 is a container. It is locked and lockable. It is fixed in place. Simple Key unlocks Vault 316.
One Coin Piece is a Monetary. It is in Vault 316.
One And A Half Coin Piece is a Monetary. It is in Vault 316.
Two-Coin Piece is a Monetary. It is in Vault 316.
Two And A Half Coin Piece is a Monetary. It is in Vault 316.
Three Coin Piece is a Monetary. It is in Vault 316.
Four Coin Piece is a Monetary. [quest for Ms. Baker]
Five Coin Piece is a Monetary. It is in Vault 316.
Six Coin Piece is a Monetary.
Seven Coin Piece is a Monetary.[quest for Ms. Baker]
Eight Coin Piece is a Monetary.
Nine Coin Piece is a Monetary. [quest for Ms. Baker][need for bistro man (unicorn)]
Ten Coin Piece is a Monetary. It is in Vault 316.
200-Coin Piece is a Monetary.


[Tack Shop]
Carrots are a thing. The description is "A bag of long, vibrantly orrange carrots."
Saddle is a thing. The description is "A simple brown leather western saddle."
Bridle is a thing. The description is "A simple black leather western bridle."
A sales associate is a woman. She is in Tack Shop.
After going to Tack Shop when Tack Shop is unvisited:
	say "You didn't know the Tack Shop existed until today. You hadn't really ever had the need for horse-stuff. But perhaps there was something useful here. You see a sales associate."
Instead of talking to a sales associate:
	if player has 200-Coin Piece:
		say "'Umm, hey,' you say, walking up to the sales associate. She looks up at you.[paragraph break]'Can I help you with something?' She says curtly.[paragraph break]'Yes, actually. I'm looking to buy a saddle and a bridle.'[paragraph break]'Yeah, how specific.'[paragraph break]'Pardon?'[paragraph break]'Nothing. Here, let me just go grab some.' She marches off in a huff, leaving you standing next to horse mannequins and a mini-fridge of carrots.[paragraph break]She returns with a simple black leather bridal over her shoulder and a saddle on her hip. 'This work for you, kid?'[paragraph break]'Yeah, I suppose.' She rings them up. 'I'm going to give you these carrots for free, too. That'll be 200CP.'[paragraph break]'Oh, okay.' She hands the items to you and you struggle to hold them all. She snorts a laugh, and walks to the other side of the room.";
		now 200-Coin Piece is off-stage;
		now player has Carrots;
		now player has Saddle;
		now player has Bridle;
	otherwise:
		say "'Umm, hey,' you say, walking up to the sales associate. She looks up at you.[paragraph break]'Can I help you with something?' She says curtly.";
		if player consents:
			say "'Yes, please.'[paragraph break]'Well what can I help you with then.' 'Oh, I don't know.' [paragraph break]'Go away, then. Come back when you're serious.' She stomps to the back of the room. Put off, you return to the marketplace.";
		otherwise:
			say "'No, just browsing. Thank you.' The sales associate stomps off to the back of the store. Put off, you return to the marketplace.";
		now player is in Marketplace.
		


[Forest]
Instead of going to Forest:
	If player has Saddle:
		say "You have no idea where the unicorn could be, and the trails are all a maze. You better start looking.";
		now player is in forest;
	otherwise:
		say "You don't feel like going for a hike right now, so you return to the park.";
		now player is in park.
After going to Forest when Forest is unvisited:
	say "You walk through the park to the entrance to the forest. The main trail is one trail that goes in and splits into many others. It is directly north. There's a note pinned to the tree. Read it?";
	if player consents:
		say "You lean forward to examine the note. It just gives a warning to the complexity of the trails and advises you to make a map as you go along (use a pen and paper to mark your progress so you don't get lost)."
[Forest Maze]
[Main Trail1]
MainTrail1 is a room. It is north of Forest. The printed name of MainTrail1 is "Main Trail". "You step onto the main trail. To the west, is the first trail. To the north, the main trail continues on."
FirstTrail is a room. It is west of MainTrail1. The printed name is "First Trail". "You turn west off of the main trial onto the first trail."
T1-1 is a room. It is south of First Trail. The printed name is "First Trail". "You come to a dead end with only one way to turn."
T1-2 is a room. It is west of T1-1. The printed name is "First Trail". "You come to a dead end with only one way to turn."
T1-3 is a room. It is north of T1-2. The printed name is "First Trail". "You come to a dead end with only one way to turn."
T1-4 is a room. It is east of T1-3. The printed name is "First Trail". "You come to a dead end."

[main trail2]
MainTrail2 is a room. It is north of MainTrail1. The printed name of MainTrail2 is "Main Trail". "You continue along the main trail, and see the second trail to the east."
SecondTrail is a room. It is east of MainTrail2. The printed name is "Second Trail". "You turn east off of the main trail onto the second trail."
T2-0 is a room. It is north of SecondTrail. The printed name is "Second Trail". "You come to a dead end with only one way to turn."
T2-1 is a room. It is south of SecondTrail. The printed name is "Second Trail". "You come to a dead end with only one way to turn."
T2-2 is a room. It is east of T2-1. The printed name is "Second Trail". "You can either continue forward here, or turn."
T2-2-1 is a room. It is east of T2-2. The printed name is "Second Trail". "You come to a dead end with only one way to turn."
T2-3 is a room. It is south of T2-2. The printed name is "Second Trail". "You come to a dead end with only one way to turn."
T2-3-1 is a room. It is east of T2-3. The printed name is "Second Trail". "You come to a dead end with only one way to turn."
T2-3-2 is a room. It is south of T2-3-1. The printed name is "Second Trail". "You come to a dead end with only one way to turn."
T2-3-3 is a room. It is east of T2-3-2. The printed name is "Second Trail". "You come to a dead end with only one way to turn."
T2-3-4 is a room. It is north of T2-3-3. The printed name is "Second Trail". "You come to a dead end with only one way to turn."
T2-3-5 is a room. It is east of T2-3-4. The printed name is "Second Trail". "You come to a dead end with only one way to turn."
T2-3-6 is a room. It is south of T2-3-5. The printed name is "Second Trail". "You come to a dead end with only one way to turn."
T2-3-7 is a room. It is west of T2-3-6. The printed name is "Second Trail". "You come to a dead end with only one way to turn."
T2-2-2 is a room. It is west of T2-2. The printed name is "Second Trail". "You come to a dead end with only one way to turn."
T2-2-3 is a room. It is north of T2-2-2. The printed name is "Second Trail". "You come to a dead end with only one way to turn."
T2-2-4 is a room. It is east of T2-2-3. The printed name is "Second Trail". "You come to a dead end."

[main trail3]
MainTrail3 is a room. It is north of MainTrail2. The printed name of MainTrail3 is "Main Trail". "You continue along the main trail. Two trails turn off: one to the east and one to the west. The main trail continues north."
ThirdTrail is a room. It is west of MainTrail3. The printed name is "Third Trail". "You turn west off of the main trail onto the third trail."
T3-1 is a room. It is south of ThirdTrail. The printed name is "Third Trail". "You come to a dead end with only one way to turn."
T3-2 is a room. It is east of T3-1. The printed name is "Third Trail". "You come to a dead end with only one way to turn."
T3-3 is a room. It is north of T3-2. The printed name is "Third Trail". "You come to a dead end with only one way to turn."
T3-4 is a room. It is west of T3-3. The printed name is "Third Trail". "You come to a dead end."
FourthTrail is a room. It is east of MainTrail3. The printed name is "Fourth Trail". "You turn east off of the main trail onto the fourth trail."
T4-1 is a room. It is south of FourthTrail. The printed name is "Third Trail". "You come to a dead end with only one way to turn."
T4-2 is a room. It is east of T4-1. The printed name is "Third Trail". "You come to a dead end."

[order of main trail 4 and 5 switched to make the flow easier to code and read][so the unicorn is the last thing instead of the sixth trail]

[main trail5]
The printed name of MainTrail5 is "Main Trail". 
MainTrail5 is a room. It is north of MainTrail4. "You continue along the main trail. The sixth trail turns off to the east, or you can continue north along the main trail."
SixthTrail is a room. It is east of MainTrail5. The printed name is "Sixth Trail". "You turn east off of the main trail onto the sixth trail."
T6-1 is a room. It is north of SixthTrail. The printed name is "Sixth Trail". "You come to a dead end with only one way to turn."
T6-1-1 is a room. It is east of T6-1. The printed name is "Sixth Trail". "You come to a dead end with only one way to turn."
T6-1-2 is a room. It is north of T6-1-1. The printed name is "Sixth Trail". "You come to a dead end with only one way to turn."
T6-1-3 is a room. It is east of T6-1-2. The printed name is "Sixth Trail". "You come to a dead end with only one way to turn."
T6-1-4 is a room. It is north of T6-1-3. The printed name is "Sixth Trail". "You come to a dead end with only one way to turn."
T6-1-5 is a room. It is east of T6-1-4. The printed name is "Sixth Trail". "You come to a dead end with only one way to turn."
T6-1-6 is a room. It is south of T6-1-5. The printed name is "Sixth Trail". "You come to a dead end with only one way to turn."
T6-1-7 is a room. It is west of T6-1-6. The printed name is "Sixth Trail". "You come to a dead end."

[main trail4]
MainTrail4 is a room. It is north of MainTrail3. The printed name of MainTrail4 is "Main Trail". "You continue along the main trail. The fifth trail turns off to the west."
FifthTrail is a room. It is west of MainTrail4. The printed name is "Fifth Trail". "You turn west off of the main trail onto the fifth trail."
T5-1 is a room. It is north of FifthTrail. The printed name is "Fifth Trail". "You turn and hit a fork."
T5-1-1 is a room. It is west of T5-1. The printed name is "Fifth Trail". "You come to a dead end with only one way to turn."
T5-1-2 is a room. It is north of T5-1-1. The printed name is "Fifth Trail". "You come to a dead end with only one way to turn."
T5-1-3 is a room. It is east of T5-1-2. The printed name is "Fifth Trail". "You come to a dead end with only one way to turn."
T5-1-4 is a room. It is north of T5-1-3. The printed name is "Fifth Trail". "You turn and hit a dead end."
T5-1-1-1 is a room. It is east of T5-1. The printed name is "Fifth Trail". "You come to a dead end with only one way to turn."
T5-1-1-2 is a room. It is south of T5-1-1-1. The printed name is "Fifth Trail". "You come to a dead end with only one way to turn."
T5-1-1-3 is a room. It is east of T5-1-1-2. The printed name is "Fifth Trail". "You come to a dead end with only one way to turn."
T5-2 is a room. It is west of FifthTrail. The printed name is "Fifth Trail". "You come to a dead end with only one way to turn."
T5-3 is a room. It is south of T5-2. The printed name is "Fifth Trail". "You turn. A trail turns off to the side, or you can continue south."
T5-3-1 is a room. It is west of T5-3. The printed name is "Fifth Trail". "You come to a dead end with only one way to turn."
T5-3-2 is a room. It is south of T5-3-1. The printed name is "Fifth Trail". "You come to a dead end with only one way to turn."
T5-3-3 is a room. It is east of T5-3-2. The printed name is "Fifth Trail". "You come to a dead end with only one way to turn."
T5-3-4 is a room. It is south of T5-3-3. The printed name is "Fifth Trail". "You come to a dead end with only one way to turn."
T5-3-5 is a room. It is west of T5-3-4. The printed name is "Fifth Trail". "You come to a dead end with only one way to turn."
T5-3-6 is a room. It is north of T5-3-5. The printed name is "Fifth Trail". "You come to a dead end with only one way to turn."
T5-4 is a room. It is south of T5-3. The printed name is "Fifth Trail". "You come to a dead end with only one way to turn."
T5-5 is a room. It is east of T5-4. The printed name is "Fifth Trail". "You come to a dead end with only one way to turn."
T5-6 is a room. It is north of T5-5. The printed name is "Fifth Trail". "You come to a dead end with only one way to turn."
T5-7 is a room. It is east of T5-6. The printed name is "Fifth Trail". "You turn and hit a dead end."
[finding the unicorn]
T5-3-7 is a room. It is west of T5-3-6. The printed name is "Fifth Trail". "You turn west and stumble into a clearing. There's a small pond and nibbling at the grass around it is a glistening silver unicorn. You move towards the unicorn. She spies you, and whips her head up in alert. You halt instantly, not wanting to scare her away. 'Hey, pretty girl,' you say, and reach for a carrot. She watches you intently. You hold the carrot out. 'Hey girl, do you want a treat?' She paws at the ground. You take another step forward. Then another. And another. Finally, your outstretched arm holding the carrot is just infront of her head. She reaches forward, and takes the carrot. You give her another.";
	now carrots are in Unicorn-Box.
Unicorn-Box is a container.
Unicorn is a rideable animal. Understand "Amara" as unicorn. It is in T5-3-7. The description is "A beautiful, stunningly white, unicorn. Her mane and tail are whiter than snow and are accented by sparkling silver streaks. Her long white horn is twisted beautifully, and her eyes are the deep blue of the ocean depths. Black hooves make little sound upon the ground they walk on.[if saddle is in unicorn-box] She has a brown leather saddle on her back.[end if][if bridle is in unicorn-box] There is a black leather bridle on her head.[end if]". 

Instead of putting saddle on unicorn:
	say "You offer the unicorn another carrot, and while she is chewing you throw the saddle over her back. She doesn't seem to mind, as if this is nothing new. Her muzzle pushes into your pocket, looking for more carrots.";
	now saddle is in Unicorn-box.
Instead of putting bridle on unicorn:
	say "You stroke the unicorn's neck, then slip the bridle over her head. She protests a little, but gives in quickly. She doesn't seem to mind much, as if this is nothing new.";
	now bridle is in Unicorn-Box.
Unicorn Hair is a thing. The description is "Hair from Amara's mane that ripped out in your hands."
Instead of mounting:
	if saddle is in unicorn-box:
		if bridle is in unicorn-box:
			say "You step forward, and mount the unicorn.";
			say "'Hey, beautiful. Wow. I can't believe this is real.'[paragraph break]'Hayden said you were coming,' says a bell-like voice in your head. You nearly fall off the unicorn. 'You're so silly,' the voice continues. 'My name is Amara.' You look down at your mount.[paragraph break]'Are you the unicorn?' The bell-like voice chimes a laugh in your head.[paragraph break]'Yea, I am. So, I hear that we have somewhere special to go!'";
			say "Amara picks up a trot, and heads north. At about fifty yards away from the trees she hastens her pace, and leaps into the air. You clutch desperately at her soft white mane in an effort to stay on.[paragraph break]You look behind you as she climbs ever higher. You can see the town. A man in a black coat stands in the center of the marketplace, and seems to be watching you. But a blink later and he's gone. 'Where are we going, Amara?'[paragraph break]'Oh, you'll see.'";
			now player is in Broken Lighthouse;
			now player has unicorn hair;
			continue the action;
		otherwise:
			say "You cannot ride her without a bridle.";
	otherwise:
		say "You cannot ride her without a saddle."
		
	
[End Scene Two]
[Scene Three][Scene 3]
[Magic Realm]

[Town Rooms]
Broken Lighthouse is a room. "A cliff drops off towards the ocean, with a tall lighthouse looming over. The ocean is dark blue and frothy from slamming against the sharp rocks at the base of the cliff. To the north is an old, unkept cobblestone path."
Cobblestone Path is a room. It is north of Broken Lighthouse. "Weeds grow up through between the stones. The lighthouse lays south while the town center sits north."
Town Center is a room. It is north of Cobblestone Path. "The town center is a worn and dusty clearing to which the surrounding shops are circled around. The cobblestone path lies to the south. To the west is One Stop Alchemist, northwest is an armory, the blacksmith is north, a wand shop to the east, and a store called 'Beasts' to the southeast."
One Stop Alchemist is a room. It is west of Town Center. "One Stop Alchemist is a potions shop. Dirty windows frame the door."
Armory is a room. It is northwest of Town Center. "The town's best weapons shop."
Blacksmith is a room. It is north of Town Center. 
Wand-Shop is a room. The printed name of Wand-Shop is "Wand Shop". It is east of Town Center. "The best kept store in town. The inside looks like a library, except instead of books stacked to the ceiling there are long slender boxes. Along the door are buckets of spellbooks."
Beasts is a room. It is southeast of Town Center. "A magical pet store."
Dirt Path is a room. It is north of Blacksmith. "A simple path worn down by frequent use."
Small Cottage is a room. It is north of Dirt Path. "A small one or two room cottage."

[Broken Lighthouse]
After going to Broken Lighthouse when Broken Lighthouse is unvisited:
	say "After flying over the clouds for what seemed to be hours, Amara lands on the bank of some great ocean next to a broken lighthouse. Stretching north is an old and worn cobblestone bath. You shiver."
Light-house is scenery. The printed name is "lighthouse". Understand "lighthouse" as light-house. It is in Broken Lighthouse. The description is "A tall dilapidated stone lighthouse that towers backwards like haunted buildings do in old horror movies. You half expect black clouds to form and lighting to strike. On the lighthouse are two large double doors."
Double Doors are scenery in Broken Lighthouse. The description is "Two heavy wooden door with iron reinforcements dripped in rust."
Instead of opening Double Doors:
	say "You tug at the rusty handles, but they're locked shut."
	


[Cobblestone Path]
After going to Cobblestone Path when Cobblestone Path is unvisited:
	say "'Hey,' Amara says. 'I'm going to take off now. Call me if you need me.'"
Understand "Call [rideable animal]" as CallingAnimal. CallingAnimal is an action applying to one thing.
Check CallingAnimal:
	if rideable animal is Unicorn:
		if player is in Cave:
			say "'Try going to the lake,' Amara says.";
		otherwise:
			say "You call out to Amara, searching the skies. You hear her bells in your head. 'This is something you can handle yourself, Wade.'";
	otherwise:
		say "You call out, but to no avail."

[Town Center]


[One Stop Alchemist]
After going to One Stop Alchemist when One Stop Alchemist is unvisited:
	say "You step cautiously into what appears to be a potions shop. You see a display table with a few cauldrons on it. Mounted on the wall is an ingredients cabinet stocked with what appears to be potion ingredients. Behind the counter stands a frail older woman in a long black coat. Her pale wrinkled skin hangs from her face in a most distasteful way. She makes you nervous."
The Counter is scenery in One Stop Alchemist. The description is "A simple counter."
Instead of looking under the Counter:
	if player has Shopping List:
		say "You rummage under the counter and find a key.";
		now player has Cabinet Key;
	if Code is in Blackbox:
		say "You rummage under the counter and find a key.";
	if player has gold coins:
		say "You rumage under the counter and find a key.";
	otherwise:
		say "You're pretty sure that the ancient woman will curse you into space if you go near her counter. Her eyes follow you everywhere you go. You decide to check back later."
Potions Shopkeeper is a woman. She is wearing a long black coat. The description is "A woman who appears to be over a hundred and fifteen years old."
If Code is in Blackbox then Potions Shopkeeper is off-stage.
Display Table is a scenery supporter in One Stop Alchemist. It is fixed in place. The description is "A wooden shelfed table. It displays [list of things on Display Table].".
Silver Cauldron is a thing. It is on Display Table. The description is "A medium sized silver cauldron."
Brass Cauldron is a thing. It is on Display Table. The description is "A medium sized brass cauldron." 
Copper Cauldron is a container. It is on Display Table. The description is "A medium sized copper cauldron."
Glass Phials are a thing. They are in Ingredients Cabinet. The description is "A box of twelve glass phials."
Crystal Phials are a container. They are in Ingredients Cabinet. The description is "A box of twelve crystal phials."
Cabinet Key is a thing. The description is "The key to the ingredients cabinet."
An Ingredients Cabinet is a container in One Stop Alchemist. It is fixed in place. It is locked and lockable. Cabinet Key unlocks Ingredients Cabinet. The description of Ingredients Cabinet is "A large hanging wooden cabinet with glass doors to display an arrange of different potion incredients.You can see [list of things in Ingredients Cabinet].".
bat blood is a thing. It is in Ingredients Cabinet. The description is "A glass bottle full of thick dark red liquid. The corked bottle top is covered in cooled dripped wax to insure the seal.".
cat hair is a thing. It is in Ingredients Cabinet. The description of cat hair is "A small glass box with dividers displaying several different types of cat hair.".
caterpillar is a thing. It is in Ingredients Cabinet. The description is "A bottle of dried cattepillars.".
crocodile heart is a thing. It is in Ingredients Cabinet. The description is "A crocodile heart suspended in some red-tinted liquid in a glass bottle.".
dragon claw is a thing. It is in Ingredients Cabinet. The description is "[if dragon claw is in Ingredients Cabinet]A tray of assorted dragon claws of different sizes and lengths.[otherwise]A menacing dragon claw.".
cat eye is a thing. It is in Ingredients Cabinet. The description is "A bottle of cat eyes.".
fairy wings are a thing. They are in Ingredients Cabinet. The description is "[if fairy wings are in Ingredients Cabinet] A tray of thing glass sheets, between each are a set of fairy wings.[otherwise] A set of fairy wings pressed between two thing glass sheets.".
frog brain is a thing. It is in Ingredients Cabinet. The description is "A frog brain suspended in clear liquid in a glass bottle.".
griffin claw is a thing. It is in Ingredients Cabinet. The description is "[if griffin claw is in Ingredients Cabinet]A glass tray of griffin claws.[otherwise] A simple griffin claw.".
leech juice is a thing. It is in Ingredients Cabinet. The description is "A square glass bottle containing a dark liquid.".
octopus powder is a thing. It is in Ingredients Cabinet. The description is "A small spherical bottle full of purple powder.".
peacock feathers is a thing. It is in Ingredients Cabinet. The description is "A bundle of brilliant peacock feathers tied together with a leather string.".
rose thorn is a thing. It is in Ingredients Cabinet. The description is "A small glass box full of dozens of rose thorns.".
salamander blood is a thing. It is in Ingredients Cabinet. The description is "A cylindrical glass bottle full of a thick red liquid.".
turtle shell is a thing. It is in Ingredients Cabinet. The description is "A medium sized turtle shell.".
Gold Coins are a thing. The description is "A sack of gold coins."
Instead of taking silver cauldron:
	if player has gold coins:
		say "Do you wish to purchase this silver cauldron?";
		if player consents:
			say "Very well. You hand over the money and pick up the bulky cauldron.";
			now player has silver cauldron;
			now gold coins are off-stage;
	say "You can't just steal that. Come back when you have the money."
Instead of taking brass cauldron:
	if player has gold coins:
		say "Do you wish to purchase this brass cauldron?";
		if player consents:
			say "Very well. You hand over the money and pick up the bulky cauldron.";
			now player has brass cauldron;
			now gold coins are off-stage;
	say "You can't just steal that. Come back when you have the money."
Instead of taking copper cauldron:
	if player has gold coins:
		say "Do you wish to purchase this copper cauldron?";
		if player consents:
			say "Very well. You hand over the money and pick up the bulky cauldron.";
			now player has copper cauldron;
			now gold coins are off-stage;
	say "You can't just steal that. Come back when you have the money."




[Armory]
After going to Armory when Armory is unvisited:
	say "You step into the armory to see some familiar -or atleast nonmagic- items. A cannon and a pitchfork sit on either side of an extravagent weapons cabinet. the burly man behind the counter wears leather and off white cloth. His eyes follow you untrustfully."
Burly Man is a man. He is in Armory. The description is "A heavy set, extremely tall, man. He is wrapped in leather armor and has strapped his body with various knives."
Weapons Case is a container. It is in Armory. It is fixed in place. The description is "A floor-to-ceiling wooden display case with a glass door. Inside, supported by racks, are many different weapons: [list of things in Weapons Case]. It is currently empty.".
Sword is a thing. It is in Weapons Case. The description is "A polished steel sword with a gorgeous hilt. This is truely the sword of a champion. [if Sword is in Weapons Case]It is supported by four protruding hooks."
Blunt Weapon is a thing. It is in Weapons Case. The description is "A huge stone tethered to the end of a slick. It looks heavy, but with a strong arm behind it, it could easily take someone out.[if Blunt Weapon is in Weapons Case] It stands erect at the bottom of the weapons case.".
Spear is a thing. It is in Weapons Case. The description is "A long wooden shaft with a polished steal tip. Leather grips are adhesed in three different places.[If Spear is in Weapons Case] It hangs by leader supporters from two nails in the weapons case."
Axe is a thing. It is in Weapons Case. The description is "A one sided axe. The blade is curved and sharpened to a point. The wooden handle has inlays of metal and a reinforced leather hand grip.[if Axe is in Weapons Case] It hands upsidedown from the ceiling of the weapons case."
Shield is a thing. It is in Weapons Case. The description is "It almost looks like the Ferrari shield, except with a dragon instead of a horse and made of a shimmering metal. It looks very heavy. [if Shield is in Weapons Case]It's tip rests on the bottom of the case and leans against the back."
A cannon is a thing. It is in Armory. The description is "A small cast iron cannon mounted ontop of a wheeled wooden holder.[if Cannon is in Weapons Case] It stands paralled to the wall to the right of the weapons case."
A pitchfork is a thing. It is in Armory. The description is "A sharp four pronged metal pitchfork mounted intop of a long wooden shaft.[if pitchfork is in Armory] It is leaning to the left of the weapons case."


[Blacksmith]
After going to Blacksmith when Blacksmith is unvisited:
	say "You knock on the closed, apparently windowless, blacksmith shop. The blacksmith opens the door for you. He looks at you gruffyly. 'What do you want.'[line break]'I'm new in town… I'm not really from around these parts.' The gruff man looks you up and down.[line break]'Obviously.' He becons you in, and steps aside. You enter one giant room with a door to the norht and a door to the east, which seems to lead to his private quarters. 'Did a unicorn bring you?' You nod, amazed that you're still finding things suprising today. The man nods in response, and kicks a stool at you. 'I got a few words to say to you, boy. Got a minute?'";
	if player consents:
		say "You nod, adjusting your weight on the rocking rickety stool.";
	otherwise:
		say "You consider telling the man no, but your'e too intimidated to say otherwise. You nod.";
	say "'I used to be like you, kid.'[line break]'Wade.'[line break]'What?. I used to live down south where the normal people live. I used to go to restaurants and buy flowers for all the girls in my life. I used to be a real charmer, you know. But I met a man named Hayden. That must have been fifty years ago. Amara brought me here.'[line break]'Well, that all sounds familiar.'[line break]'Hayden sent me here for a personal quest of my own, but I was just overtaken by this land, boy. This world is beyond your most glorious imaginations. Sure, it snows ninety perfect of the time, but the air smells of magic and I fell in love. I'm warning you now, boy. This world will steal your heart away. If you truly want to go home, then you must find your way. But if you decide to stay, I could help you along.' You look at the man, and think of Elily. You had to return to her. Right? 'Mr. Blacksmith,' you say. 'How might I find my way out of here?'[line break] The man sighs. 'There's a dirt path behind my shop that leads north to the mountains. I've heard tale of a magic portal up there. I'm sure that could get you back home."


[Wand Shop]
Wand is a device. The description is "A wand made of long, polished, dark wood. You don't know much about it other than that."
Long Boxes are scenery in Wand-Shop. The description is "You assume these boxes all contain wands."
Instead of taking Long Boxes:
	say "I'd advise against stealing magic items from people who could probably kill you without even touching you."
Wizard1 is a man. Rule for printing the name of Wizard1: say "Wizard". The description is "A frail man with too much agility for his age. He runs this shop and is wearing a long black cloak." He is wearing a long black cloak. 
Spellbooks are scenery in Wand-Shop. The description is "Books full of spells."
Spellbook is a thing. The description is "Light: 'Levis wand'[line break]Extinguish Light: 'Haud Levis Wand'[line break]Attack: 'Invado'[line break]Put to Sleep: 'Somnus'".
Instead of taking spellbooks:
	if player has wand:
		say "You reach forward and take a book. The wizard is still nowhere to be seen.";
		now player has spellbook;
	otherwise:
		say "You should probably talk to the wizard shopkeeper before you take that."
Instead of talking to wizard1:
	say "'Hello?' You call out into the stop. You hear a scuffing, then silence. You look around.[line break]'Hello?'[line break]'Hello there.' You jump, startled. The wizard stands behind you, barely five feet tall. 'Now what may I do for you today?' His voice twists around you and makes you uncomfortable. 'A wand, me'boy? A wand is what you surely need.' You just nod and go long with it. The wizard starts muttering to himself, making circles around you. 'Yes, yes, a tall young boy…brown hair, too, yes…perhaps mahagony?…no, no, that's not it.' The man skuttles off leaving you alone for several minutes.[paragraph break]Bearing a long slender box, the man hurries back to you. He runs awkwardly; as if his legs are half as long as they should be. 'Here, here, me'boy. Try this one. It's perfect, it is.' He opens the box, extending it to you. Reaching in, you pick up the long slender piece of wood. It's nicely polished if nothing else. The wizard watches, expectant.[line break]'Well? What do you have to give me for it?' You reach into your pockets and pull out the unicorn hair that ripped out in your hands from the ride. His eyes widen. 'Perfect, perfect. This is perfect.' He snatches the hair from you and skuttles back into the depths of his shop.";
	now unicorn hair is off-stage;
	now player has Wand.
	
[Spells]
Understand "levis [wand]" as switching on.
Understand "haud levis [wand]" as switching off.
Understand "invado [something]" as Invado. Invado is an action applying to one thing. 
Understand "somnus [something]" as Somnus. Somnus is an action applying to one thing.
Check Somnus:
	if player has wand:
		if player is in Stone Valley Pass3:
			say "You flick the wand and confidently cast the spell at the ogre, who falls heavily to the ground with echoing snores.";
			now LifeForce is in blackbox;
		otherwise:
			say "Why would you put that to sleep?";
	otherwise:
		say "You can't use spells without a wand."
Check Invado:
	if player has wand:
		if player is in Stone Valley Pass3:
			if noun is Ogre:
				say "You flick the wand, throwing an attack spell at the ogre. But it bounces right off of him. Magic cannot defeat this beast.";
			otherwise:
				say "Why would you attack [noun]?";
		otherwise:
			say "Why would you attack [noun]?";
	otherwise:
		say "You cannot use spells without a wand."
			


[Beasts]


[Dirt Path]
After going to Dirt Path when Dirt Path is unvisited:
	say "You start walking up the dirt path. The steady incline starts to steal your breath in the thin mountain air. Up ahead, you see a small cottage."


[Small Cottage]
Code is a thing. The description is "A helpful condition."
Shopping List is a thing. The description is "- bat blood[line break]- fairy wings[line break]- octopu powder[line break]- rose thorns".
After going to Small Cottage when Small Cottage is unvisited:
	say "You rap on the door. An old man, unged in a floor length black cloak answers the door.[line break]'Oh, lovely. You're here. Come, come.' the man hobbles back into his home. Follow him?";
	if player consents:
		say "'Um, sure,' you mutter to yourself and step into the cottage. Humble furnature compliments the interior of the modest living space. In the center of the room, resting on a nest of unprotected blue flames sits a large cast iron cauldron. The blue fire licks the floor and surrounding furnature but doesn't leave a mark. The wizard looks over into the cauldron.".;
	otherwise: 
		say "You step away from the house and its weird occupant. You make your way around the house and continue north along the dirt path.";
		now Code is in Blackbox;
		now player is on Dirt Path2.
Wizard is a man in Small Cottage.
Instead of talking to Wizard for the first time:
	say "'Hey, did you need me for something?'[line break]'Ah, yes, m'boy. Look. I'm an old fellow.' You looked. He spoke an obvious truth. 'I need a few things from the potions store. I will pay you when you return. Can you do that for me?'";
	if player consents:
		say "'Sure.. I think I can handle that. What do you need?'[line break]'Here's a list. Thanks, son.' the wizard hands you ap iece of partchment written on in medieval caligraphy.";
		now player has Shopping List;
	otherwise:
		say "'Sorry, but I'm not comfortable with this errand. I'm going to be on my way. You leave the cottage and continue north up the trail.";
		now player is on Dirt Path2;
		now Code is in Blackbox.
Instead of talking to Wizard for the second time:
	if player has bat blood:
		if player has fairy wings:
			if player has octopus powder:
				if player has rose thorn:
					say "'Hey, mister…' you let yourself into the cottage. The man is slaving away over his cauldron. You can see the sweat drenching his face. A drop falls into the potion which then gives off a tremendous hiss. He curses, then sees you.[paragraph break]'Oh, thank Merlin you're here. com, come, give me those.' He snatches the ingredients from your hands.[line break]Watch the deranged man make his potion?";
					if player consents:
						say "You watch, memorized, as the wizard dashes in the octopus powder, mixing it in by swirling his hands over the cauldron. He adds a drop of bat blood and the potion begins to boil, emitting a purple steam.[line break]'Careful not to breathe this,' he coughs at you. The fairy wings go in next ,and he mixes them in until the potion turns white and comes to a simmer, then throws in a handful of rose thorns. 'One extra for good luck, eh?' He winks at you, flicking one last thorn into the cauldron. The potion lights up the room with a bang, blinding you. When your sight returns, you're standing alone on the dirt path; the cottage nowhere to be seen.";
						now player is in Dirt Path2;
						now small cottage is off-stage;
					otherwise:
						say "'Well, this was fun.. but I need to go.'[line break]'Go, go then! The coins are over, um,' he reaches into his pockets and throws a small bag at you. 'Now go on your way!' You leave the cottage and continue north along the trail. Up ahead you see looming stone mountains. The trail leads through the dark center of both of them.";
						now player has gold coins;
				otherwise:
					say "You don't have all the ingredients!";
			otherwise:
				say "You don't have all the ingredients!";
		otherwise:
			say "You don't have all the ingredients!";
	Otherwise:
		say "You don't have all the ingredients!".
		
[Scene 3.5]
		
[Dirt Path2]
Dirt Path2 is a room. It is north of Small Cottage. The printed name of Dirt Path2 is "Dirt Path".
After going to Dirt Path2 when Dirt Path2 is unvisited:
	say "Up ahead, you see looming stone mountains. The trail leads through the dark center of both of them."

[Stone Valley Pass]
Stone Valley Pass1 is a room. It is north of Dirt Path2. The printed name is "Stone Valley Pass". "You approach Stone Valley Pass. There's a warning painted crudely on a wooden sign."
Wooden Sign is scenery in Stone Valley Pass1. The description is "Beware, all ye who enter[line break]for the tales tell of tremendous beasts[line break]who crank and crunch and chomp little men like ye[line break]green like untrustfully slithering serpents[line break]ghastly and gruesome like gorgon.[line break]Beware, all ye who enter[line break]for the end is your boneyard."
Stone Valley Pass2 is a room. It is north of Stone Valley Pass1. The printed name is "Stone Valley Pass". "You step through the mouth of the mountains."
After going to Stone Valley Pass2 when Stone Valley Pass2 is unvisited:
	if player has Wand:
		if player has Spellbook:
			if Wand is switched off:
				say "You carefully step past the sign into the impending darkness. Your footsteps fall on things that crunch beneath your feet. Soon, you're surrounded by darkness. You can't see anything. You decide to try to illuminate the darkness.";
			otherwise:
				say "You carefuly step past the sign into the stone valley pass. You hold your wand up high, trying to illuminate as much of the dark ground as you can. Shadows dart in and out, but the only creatures you see are small bugs and frightful rats.";
		otherwise:
			say "You carefully step past the sign into the impending darkness. Your footsteps fall on thing that crunch beneath your feet. Soon, you're surrounded by darkness. You can't see anything. You flick your wand around, but you don't know any spells. You retrace your steps.";
			now player is in Stone Valley Pass1;
	otherwise:
		say "You carefully step past the sign into the impending darkness. Your footsteps fall on things that crunch beneath your feet. Soon, you are surrounded by darkness. You can't see anything. You're too scared to move forward without something to illuminate your way. You retrace your steps.";
		now player is in Stone Valley Pass1.
		
Stone Valley Pass3 is a room. It is north of Stone Valley Pass2. The printed name of Stone Valley Pass3 is "Stone Valley Pass". "You continue along the path. [if ogre is in stone valley pass3]Up ahead looms the silhouette of a giant beast. The stench of rotting flesh and bad hygene assaults your nose[end if].[if dead ogre is in stone valley pass3]The corpse of the dead ogre fills up most of the path[end if]."
Instead of going to Stone Valley Pass4:
	if ogre is in Stone Valley Pass3:
		if lifeforce is in blackbox:
			say "You quietly sneak past the sleeping ogre.";
		otherwise:
			say "You try to sneak around the giant ogre, but he bellow at you and blocks your path.";
	otherwise:
		continue the action.
windful is a thing.
lifeforce is a thing.
Ogre is an animal in Stone Valley Pass3. 
a dead ogre is a thing. It is fixed in place. The description is "The body of the ogre. He is wearing a tunic, but nothing else."
Understand "attack [animal] with [something]" or "hit [animal] with [something]" or "slay [animal] with [something]" as attackinganimal. Attackinganimal is an action applying to two things.
Ogre Tunic is scenery in Stone Valley Pass3.
Instead of taking Ogre Tunic:
	if dead ogre is in Stone Valley Pass3:
		say "You bend over and pick up the head, grunting at its weight.";
		now player has Ogre Tunic;
	otherwise:
		say "You have to slay the beast first!"
Check attackinganimal:
	if lifeforce is in blackbox:
		say "You attack the sleeping ogre. He springs to life with fury and starts swinging at you.";
		now lifeforce is in unicorn-box.
Check attackinganimal:
	if noun is ogre:
		if second noun is shield:
			say "You throw the shield at the ogre, but it does little good. You quickly pick it back up.";
		if second noun is pitchfork:
			say "You poke the ogre, but it only pisses him off.";
		if second noun is spear:
			say "You throw the spear at the ogre. It lodges in his shoulder. He yells angrily, and rips it out, breaking it into pieces.";
		if second noun is blunt weapon:
			if a random chance of 1 in 3 succeeds:
				say "You club at the knees of the giant ogre, avoiding his return blows. His legs give out, and he falls towards the ground. He continues to flail at you, roaring in hatrid and anguish.";
				now windful is in blackbox;
			otherwise:
				say "You club at the knees of the giant ogre. He bellows in anger and pain.";
		if second noun is sword:
			if windful is in blackbox:
				say "You step breavey up to the fallen ogre, brandishing your sword over your head. With all of your strength you bring the sword down on the ogre. He falls to the ground.";
				now ogre is off-stage;
				now dead ogre is in Stone Valley Pass3;
			otherwise:
				say "You lash out with the sword, but you can't reach his neck.";
	otherwise:
		say "Why would you ever attack that?"
		
Stone Valley Pass4 is a room. It is north of Stone Valley Pass3. The printed name is "Stone Valley Pass". 
After going to Stone Valley Pass4 when Stone Valley Pass4 is unvisited:
	say "Natural light creeps into the valley as you step back out onto the dirt path.";
	now player is in Dirt Path3.
Dirt Path3 is a room. It is north of Stone Valley Pass4. The printed name is "Dirt Path". "The end of the dirt path forks northeast and northwest."
Northeast Path is a room. It is northeast of Dirt Path3.
After going to Northeast Path when Northeast Path is unvisited:
	say "You turn right onto the path and continue until you come upon a lake. The path seems to end here.";
	now player is in Lake.
Lake is a room. It is northeast of Northeast Path.
Northwest Path is a room. It is northwest of Dirt Path3.
After going to Northwest Path when Northwest Path is unvisited:
	say "You turn left onto the path and continue until you come upon a giant Sphinx. She blocks your path. Her tail twitches."
Northwest Path2 is a room. It is northwest of Northwest Path. "You continue along the path. The sphinx is to the southeast."
Answer1 is a thing.
Answer2 is a thing.
Answer3 is a thing.
Instead of going to northwest path2:
	if Answer1 is not in blackbox:
		if Answer2 is not in blackbox:
			if Answer3 is not in blackbox:
				say "'You may not pass.' Booms the Sphinx."
[sphinx]
Sphinx is a woman. She is in Northwest Path. The description is "She towers above you with the body of a huge lion and the head of a beautiful woman. Impressive wings are folded at her side."


[riddles]	
Instead of talking to sphinx: 
	if Answer1 is not in blackbox:
		say "'Um, hello?' The sphinx looks at you emotionlessly.[line break]'I have riddles of three,' she says. 'Answer them all, and ye shall be free.' [line break]'Well, okay-'[line break]'But, fail simply one, and ye shall be none.' Attempt her riddles?";
		if player consents:
			say "(answer questions: 'answer is …')";
			say "[paragraph break]'Give me food, and I live. Give me drink, and I die. What am I?'";
		otherwise:
			say "You decline her invite.";
	if Answer1 is in blackbox and Answer2 is not in blackbox:
		say "'What force and strength cannot get through,[line break]I with a simple action I can do.[line break]Many a man would stand,[line break]barred from their abode,[line break]were I not held in their hand.'";
	if Answer2 is in blackbox and Answer3 is not in blackbox:
		say "'I always tell the truth. I show off everything that I see. I come in many shapes and sizes, but I am always flat. I hang and lean off of walls.'"
		
[riddle responses and answers]
Instead of answering sphinx that "fire":
	say "The sphinx looks at you. 'Yes.' She says simply.";
	now Answer1 is in blackbox.
Instead of answering sphinx that "flame":
	say "The sphinx looks at you. 'Yes.' She says simply.";
	now Answer1 is in blackbox.
Instead of answering sphinx that "a flame":
	say "The sphinx looks at you. 'Yes.' She says simply.";
	now Answer1 is in blackbox.
Instead of answering sphinx that "a fire":
	say "The sphinx looks at you. 'Yes.' She says simply.";
	now Answer1 is in blackbox.

Instead of answering sphinx that "a key":
	say "The sphinx remains motionless. 'Yes.'";
	now Answer2 is in blackbox.
Instead of answering sphinx that "key":
	say "The sphinx remains motionless. 'Yes.'";
	now Answer2 is in blackbox.

Instead of answering sphinx that "mirror":
	say "'Yes.' She says. She stands up, ruffles her wings, and walks to the side of the path, allowing you to pass through.";
	now Answer3 is in blackbox.
Instead of answering sphinx that "a mirror":
	say "'Yes.' She says. She stands up, ruffles her wings, and walks to the side of the path, allowing you to pass through.";
	now Answer3 is in blackbox.
	
	
[northeast path]
[Northeast Path is a room. It is northeast of Dirt Path3.
After going to Northeast Path when Northeast Path is unvisited:
	say "You turn right onto the path and continue until you come upon a lake. The path seems to end here.";
	now player is in Lake.
Lake is a room. It is northeast of Northeast Path.]

Witch is a woman. 
After going to lake when lake is unvisited:
	say  "You walk down the path towards the late and make your way over to the water, and look into its depths.";
	now Witch is in Lake.
	
Instead of talking to witch:
	say "You approach the witch. 'Excuse me, ma'am, but do you know where the path continues?' The woman looks you up and down. She's a younger woman, probably in her thirties.[line break]'Who's asking?' She says suspiciously.[line break]'My name is Wade. I'm not really from around here.' She keeps looking at you. 'Umm, the blacksmith sent me.'[line break]'Ah, yes, the simpleton,' she says. 'The path continues underwater, at the bottom of the lake.'[line break]'How am I supposed to get down there?'[line break]'A simple potion should do it,' she says slowly.[line break]'Do you have the recipe?' She pulls a wand out from the folds in her clothes and uses it to conjur up a piece of paper and a pen. When she's finished, she passes you the folded piece of paper. [line break]'There's a stand over there for your cauldron.'";
	now player has List.


Cauldron Stand is a scenery supporter in Lake. The description is "A stand to fire a cauldron."
List is a thing. 
Instead of examining List: 
	say "-copper cauldron[line break]-cat hair[line break]-caterpillar[line break]- crocodile heart[line break]-dragon claw[line break]-cat eye[line break]-frog brain[line break]- crystal phials".
Breathing-Potion is a thing. The printed name is "Breathing Potion". It is edible. The description is "A thick purple potion in a crystal phial."
Breathing is a thing.
Potion is scenery. The description is "A thick purple potion."

Every turn:
	If Copper Cauldron is on Cauldron Stand:
		if cat hair is in copper cauldron:
			if caterpillar is in copper cauldron:
				if crocodile heart is in copper cauldron:
					if dragon claw is in copper cauldron:
						if cat eye is in copper cauldron:
							if frog brain is in copper cauldron:
								say "You mix together the last of the ingredients. The potion is thick and deep purple.";
								now potion is in lake.

Instead of drinking potion:
	say "It's much too hot to drink the potion right out of the cauldron! You must put it into the crystal phials instead."
Check putting:
	if noun is Potion and second noun is Crystal Phials:
		say "You dip the phials into your potion and cork them.";
		now player has Breathing-Potion;
		now Crystal Phials are off-stage.
Instead of drinking Breathing-Potion:
	say "'Here goes nothing,' you say, and tip the potion into your mouth. It tastes like a mix of raw octopus and chalk.";
	now Breathing is in blackbox.
	
[Mer City]
Water1 is a room. It is north of Lake. The printed name is "water".
Instead of entering water1 when breathing is not in blackbox:
	say "You tread into the water, but you know you can't hold your breath for long so you return to the shore."
Tunnel is a room. It is south of Water1.
After going to Tunnel when tunnel is unvisited:
	say "You swim down into a tunnel, following it until it spits you out into an underwater world."
Mer City is a room. It is north of Tunnel. "Mer City is beautiful. Mermen and merwomen swim around town as normal as if they were people on land. Each home has a small garden of kelp. The castle gate is north, and the castle lays just behind it."
After going to Mer City when Mer City is unvisited:
	say "You enter a city and are speachless. Mermaids are swimming around carelessly and small homes are settled on the floor of the lake, completely sumberged in a giant underwater cave. Glowing orbs line the streets, fill the homes, and adorn the cave walls, bringing a bright but artificial light to the city. A beautiful sandstone castle lays due north."
Mermaid Princess is a woman. Understand "merwoman" and "mermaid" as Mermaid Princess. The description is "A beautiful mermaid with a dark blue tail and a braid of brown hair." She is wearing Gold Bracelets. She is wearing Gold Tiara.
Mer-Castle Gate is a room. The printed name is "Mer Castle Gate". It is north of Mer City. "The gate to Mer Castle is merely for show, as any creature could swim over the walls. Two guards draped in armor and holding spears are blocking the gate."
Instead of entering Mer Castle:
	if Point1 is in blackbox:
		continue the action;
	otherwise:
		say "The guards block your path. Perhaps you should try talking to them."
Guard is a man in Mer-Castle Gate.
Understand "attack [someone] with [something]" and "hit [someone] with [something]" as attacking it with. Attacking it with is an action applying to two things.
			
Report attacking it with:
	say "Your aggressive action has no visible result."

Instead of attacking guard with for the first time:
		say "You lash out at the guards, but they quickly overpower you."
Instead of attacking guard for the second time:	
	say "One again you go for the guards, but it looks like they only gave you one chance.";
	end the game in death.
	
Instead of talking to Guard for the first time:
	say "You are slightly intimidated by the guards, but you need their help. 'Hi,' you say to one of the guards. 'I'm from a far away land and I'm looking for a portal that will take me home. I need to speak to your king to see if he can, um, help me out with that.' The guards ignore you."
Instead of talking to Guard for the second time:
	say "You continue to try to get the guards' attention, but they ignore you. You've almost given up when a beautiful merwoman swims up the street towards you. She is wearing a gold tiara and the guards come to attention when she approaches.";
	now Mermaid Princess is in Mer Castle Gate.
Instead of talking to Mermaid Princess:
	if player is in Mer Castle Gate:
		say "'Who are you?' The mermaid snaps.[line break]'Hi, I'm Wade.' No response. 'I'm from far away, from lands where there is no magic. Her composure instantly softens and she becomes very curious. [line break]'No magic? I've heard rumors, heard stories, but I never though.. could never believe.. why are you here?'[line break]'I'm tryin to find my way home. I was told there is a portal that will send me back.' The mermaid searches your face, as if trying to figure out if you are lying or not. [line break]'You must come with me,' she says, and swims toward the castle gate which opens before her. Follow the mermaid?";
		if player consents:
			say "You kick your legs and swim after her into Mer Castle.";
			now player is in Mer Castle;
			now Mermaid Princess is in Mer Castle;
		otherwise:
			say "Unnerved by your strage surroundings, you decide not to follow the beautiful mermaid."
			
[Mer Castle]
Mer Castle is a room. It is north of Mer Castle Gate. "The castle is gorgeous. The walls reach high and the light orbs float through the water and hang from the ceiling. The floors are made of smooth sandstone and an elegant staircase spirals up to the next floor. There are several doors along either side of you."
Instead of talking to Mermaid Princess:
	if player is in Mer Castle:
		say "'I'm just so interested in your story,' she says. 'You're just like the other land people. How are you down here? How can you breathe water if you're non-magic?'[line break]'I drank a potion. But I'm not here to talk, I'm sorry. I need to find the portal to get home.' The mermaid grabs a hold of your arm. [line break]'Don't leave, landman. Stay here, with me, and tell me of your world. You will be famous, you can write stories, stay here.'[line break]Forget your portal search and stay with her?";
		if player consents:
			say "'You know what, that does sound enticing. Perhaps I shall stay.'[line break] The mermaid lights up. 'Oh, that will be most fantastic! Come, follow me to the drawing room, and tell me your stories. We will print books of your stories. You will be famous!' Follow the mermaid and commit to a life of fame and fortune in Mer City?";
			if player consents:
				say "What about Elily? Are you sure you want this fortune?";
				if player consents:
					say "'Right behind you!' You call to the mermaid, and follow her, your heart excited and your mind racing.";
					end the game in victory;
				otherwise:
					say "'I'm sorry,' you say. 'I have to go home. I cannot stay here.' The mermaid sighs. [line break]'Just think about it, alright?' [line break]'I will. Is your father, or someone else who might be able to help me available?' Pouting slightly, the princess swims off. She returns quickly with a dignified merman draped in gold jewelry and a crown.";
					now point1 is in blackbox;
			otherwise:
				say "'I'm sorry,' you say. 'I have to go home. I cannot stay here.' The mermaid is obviously conflicted. [line break]'I'm the princess, here,' she says. 'I can promise you this fortune.' Are you sure you don't want her promised fortune?";
				if player consents:
					say "'I'm sorry, I have to decline. Is your father, or someone else who might be able to help me available?' Pouting slightly, the princess swims off. She returns quickly with a dignified merman draped in gold jewelry and a crown.";
					now point1 is in blackbox;
				otherwise:
					say "'You know what, that's a pretty fine offer. I think I shall stay.'";
					end the game in victory;
		otherwise:
			say "'I'm sorry,' you say. 'I have to go home; I cannot stay here.' The mermaid is obviously conflicted.[line break]'I'm the princess here,' she says. 'I can promise you this fortune.' Are you sure you don't want her promised fortune?";
			if player consents:
				say "'I'm sorry, I have to decline. Is your father, or someone else who might be able to help me available?' Pouting slightly, the princess swims off. She returns quickly with a dignified merman draped in gold jewelry and a crown.";
				now point1 is in blackbox;
			otherwise:
				say "'You know what, that's a pretty fine offer. I think I shall stay.'";
				end the game in victory.
[Mer King]
Mer King is a man. He is wearing Gold Jewelry and Gold Crown. The description of Mer King is "A stunningly regal merman who fills out his royal garb splendidly. He indimidates you."
Point1 is a thing.
Point2 is a thing.
Instead of talking to Mer King:
	say "'Your highness,' you say, trying your best to bow in the water.[line break]'Human. Stop flailing. What ever could you want so desperately as to draw me to listen to your simple, unimportant desires.' His voice booms through the water and you consider turning around and leaving.[line break]'Hayden sent me,' you say cautiously, hoping it will mean something to him. Apparently it does, as he roars in laughter.[line break]'Hayden? The simpleton? Ahaha! What a simple joke!' [line break]'Or, Hayden just let me know of this place. The blacksmith sent me in this direction,' you say hurridly, trying to fix your mistake.[line break]'There are many blacksmiths, fool. The closest landman who calls himself a blacksmith is just a fool simpleton like your friend Hayden. You are wasting my time, landman.'[line break]'No- wait. Please. I'm not from here. I'm from the non-magic world.' This caught his attention. 'My name is Wade, sir. Hayden sent me here to find something but I have no idea what. I'm just trying to find the portal back to my world.'[line break]'There is no portal here!'[line break]'As unfortunate as that is, I'm not surprised. I just wanted to know if you knew anything about the portal, if you could send me on the right track, give me a clue, anything…'[paragraph break]The Mer King studies you quietly for a few minutes. 'There is a gate on the path that you must take. It is locked. I have the key.'[line break]'Oh, that's great!' You are very excited. [line break]'But I want something of you before I give it. There is a giant ogre who lives in Stone Valley Pass. He often comes to the lake and 'frolics' in the water. His weight and stomping destroys the tunnel and our men have to work hard to fix it before we run out of oxygen. He polutes the water and diseases the fish. Bring me proof that you have slain this evil beast, and I shall give you your key.'";
	now point2 is in blackbox.

Point3 is a thing.
Gate Key is a thing. It unlocks Steel Gate. The description is "An old and worn key."
Instead of talking to Mer King:
	if point2 is in blackbox:
		if player does not have Ogre Tunic:
			say "The Mer King refuses to talk to you until you bring him proof that you have slain the ogre.";
		if player has Ogre Tunic:
			say "The king, full of joy, welcomes you back. 'You have done it, landman! Here, as promised.' He hands you the gate key.";
			now point3 is in blackbox;
			now player has Gate Key;
	if point3 is in blackbox:
		say "The Mer King is busy. He cannot speak to you now."
		

[Cave]
Cave is a room. It is north of Northwest Path2. "The cave mouth is rather large. It continues north, while the path is south."
After going to Cave when Cave is unvisited:
	say "As you climb higher up the path the trees around you start to thicken. To the north you see the mouth of a large cave."
	
[Cave2]
Cave2 is a room. It is north of Cave. "Here you see a giant steel gate to the west."
After going to Cave2 when Cave2 is unvisited:
	if player has Gate Key:
		say "You continue into the darkness of the cave, and come upon a giant, floor-to-ceiling steel gate. This must be what the Mer King was talking about.";
	otherwise:
		say "You continue into the darkness of the cave, and come upon a giant, floor-to-ceiling steel gate."

[Steel Gate]
Steel Gate is a door. It is locked and lockable. It is west of Cave2. The description is "A floor-to-ceiling barred steel door."
Instead of opening steel gate:
	if steel gate is locked:
		say "You rattle the cold bars, but the gate is locked.";
	if steel gate is unlocked:
		say "With a heave you push the heavy gate open. Flakes of rust fall down around you.";
		now player is in Empty Room.


[Empty Room]
Empty Room is a room. It is west of Steel Gate. "The gate opens up to a large, empty room. The walls are lined with flickering blue fire torches. To the north the shadow of a spiral staircase winds it's way into the darkness with only the flickering of the magic fire to light the steps. Each footfall echoes."
Empty-Room Walls are scenery. Understand "walls" or "wall" as Empty-Room Walls. The description is "Very cold and slightly damp to the touch. Abandoned spiderwebs and moss cover the corners."

[Spiral Staircase]
Spiral Staircase is a door. It is unlocked. It is north of Empty Room.
Understand "staircase" as Spiral Staircase.
Instead of examining Spiral Staircase:
	say "Hundreds of old stone steps spiral tightly upward."

[Portal Chamber]
Portal Chamber is a room. It is north of Spiral Staircase. "A medium sized room lit by rows of blue fire torches and a large purple portal to the north. A large gold cauldron sits ontop of a green flame in the center of the room. A tall wizard is burrowing his nose into an old leather bound book, muttering an ancient language to himself."
Grand Wizard is a man. He is in Portal Chamber. The description is "A tall and dangeriously skinny wizard with a bad slouch and a brilliant blue robe. His wand is long and full of knotts."

[Portal]
Defeated is a thing.
Red Beryl is a thing. The description is "The most valuable stone known to man. Aka 'red emerald' or 'scarlet emerald', and chemically similar to both emerals and aquamarines though considerably more rare. This particular specimen appears to be about two carats worth; approximately 20 grand."
Portal is a room. It is north of Portal Chamber.
[Instead of entering Portal when the sorcer is not defeated: say "the sorcer stops you from entering the portal" if player doens't have stone: "say, aren't you forgetting something"(the stone)]
Instead of entering Portal:
	if Defeated is in BlackBox:
		if player has Red Beryl:
			say "The portal looms before you, yes. You have the Red Beryl and the possibility of forever with Elily, yes. But what about the Mer Princess? What about life with her- life in the Mer Kingdom. A life of fame and fourtune and respect. Are you sure you want to enter the portal and leave all of that behind, forever?";
			if player consents:
				say "Pushing aside your thoughts of Mer City you step forward and into the swirling purple and silver portal. It feels cold on your skin, and suddenly you feel yourself in a vaccuum, gasping for air that isn't there.";
				now player is in Abandoned Toolshed;
			otherwise:
				say "".
				

[Abandoned Toolshed]
Abandoned Toolshed is a room. "You fall face down onto the floor of the dirty floor of a tiny toolshed. The portal above you 







	

		












