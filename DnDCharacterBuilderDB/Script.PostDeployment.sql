if not exists (select 1 from dbo.[Skills])
begin
	insert into dbo.[Skills] ([Name], [AssociatedAbilityScore])
	values ('Athletics', 'Strength'),
	('Acrobatics', 'Dexterity'),
	('Sleight of Hand', 'Dexterity'),
	('Stealth', 'Dexterity'),
	('Arcana', 'Intelligence'),
	('History', 'Intelligence'),
	('Investigation', 'Intelligence'),
	('Nature', 'Intelligence'),
	('Religion', 'Intelligence'),
	('Animal Handling', 'Wisdom'),
	('Insight', 'Wisdom'),
	('Medicine', 'Wisdom'),
	('Perception', 'Wisdom'),
	('Survival', 'Wisdom'),
	('Deception', 'Charisma'),
	('Intimidation', 'Charisma'),
	('Performance', 'Charisma'),
	('Persuasion', 'Charisma');
end
if not exists (select 1 from dbo.[Backgrounds])
begin
	insert into dbo.[Backgrounds] ([Name], [Skill1Id], [Skill2Id])
	values ('Acolyte', 9, 11),
	('Charlatan', 3, 15),
	('Criminal', 4, 15),
	('Entertainer', 2, 17),
	('Folk Hero', 10, 14),
	('Guild Artisan', 11, 18),
	('Hermit', 9, 12),
	('Noble', 6, 18),
	('Outlander', 1, 14),
	('Sage', 5, 6),
	('Sailor', 1, 13),
	('Soldier', 1, 16),
	('Urchin', 3, 4);
end
if not exists (select 1 from dbo.[Weapons])
begin
	insert into dbo.[Weapons] ([Name], [Category], [Range], [Damage], [DamageType], [TwoHanded], [Tags])
	values ('Club', 'Simple', 'Melee', '1d4', 'bludgeoning', 'FALSE', 'light'),
			('Dagger', 'Simple', 'Melee', '1d4', 'piercing', 'FALSE', 'finesse|light|thrown|range,20,60'),
			('Greatclub', 'Simple', 'Melee', '1d8', 'bludgeoning', 'TRUE', ''),
			('Handaxe', 'Simple', 'Melee', '1d6', 'slashing', 'FALSE', 'light|thrown|range,20,60'),
			('Javelin', 'Simple', 'Melee', '1d6', 'piercing', 'FALSE', 'thrown|range,30,120'),
			('Light hammer', 'Simple', 'Melee', '1d4', 'bludgeoning', 'FALSE', 'light|thrown|range,20,60'),
			('Mace', 'Simple', 'Melee', '1d6', 'bludgeoning', 'FALSE', ''),
			('Quarterstaff', 'Simple', 'Melee', '1d6', 'bludgeoning', 'FALSE', 'versatile,d8'),
			('Sickle', 'Simple', 'Melee', '1d4', 'slashing', 'FALSE', 'light'),
			('Spear', 'Simple', 'Melee', '1d6', 'piercing', 'FALSE', 'thrown|range,20,60|versatile,d8'),
			('Unarmed strike', 'Simple', 'Melee', '1d1', 'bludgeoning', 'FALSE', ''),
			('Crossbow, light', 'Simple', 'Ranged', '1d8', 'piercing', 'TRUE', 'ammunition|range,80,320|loading'),
			('Dart', 'Simple', 'Ranged', '1d4', 'piercing', 'FALSE', 'finesse|thrown|range,20,60'),
			('Shortbow', 'Simple', 'Ranged', '1d6', 'piercing', 'TRUE', 'ammunition|range,80,320'),
			('Sling', 'Simple', 'Ranged', '1d4', 'bludgeoning', 'FALSE', 'ammunition|range,30,120'),
			('Battleaxe', 'Martial', 'Melee', '1d8', 'slashing', 'FALSE', 'versatile,d10'),
			('Flail', 'Martial', 'Melee', '1d8', 'bludgeoning', 'FALSE', ''),
			('Glaive', 'Martial', 'Melee', '1d10', 'slashing', 'TRUE', 'heavy|reach'),
			('Greataxe', 'Martial', 'Melee', '1d12', 'slashing', 'TRUE', 'heavy'),
			('Greatsword', 'Martial', 'Melee', '2d6', 'slashing', 'TRUE', 'heavy'),
			('Halberd', 'Martial', 'Melee', '1d10', 'slashing', 'TRUE', 'heavy|reach'),
			('Lance', 'Martial', 'Melee', '1d12', 'piercing', 'FALSE', 'reach|special'),
			('Longsword', 'Martial', 'Melee', '1d8', 'slashing', 'FALSE', 'versatile,d10'),
			('Maul', 'Martial', 'Melee', '2d6', 'bludgeoning', 'TRUE', 'heavy'),
			('Morningstar', 'Martial', 'Melee', '1d8', 'piercing', 'FALSE', ''),
			('Pike', 'Martial', 'Melee', '1d10', 'piercing', 'TRUE', 'heavy|reach'),
			('Rapier', 'Martial', 'Melee', '1d8', 'piercing', 'FALSE', 'finesse'),
			('Scimitar', 'Martial', 'Melee', '1d6', 'slashing', 'FALSE', 'finesse|light'),
			('Shortsword', 'Martial', 'Melee', '1d6', 'piercing', 'FALSE', 'finesse|light'),
			('Trident', 'Martial', 'Melee', '1d6', 'piercing', 'FALSE', 'thrown|range,20,60|versatile,d8'),
			('War pick', 'Martial', 'Melee', '1d8', 'piercing', 'FALSE', ''),
			('Warhammer', 'Martial', 'Melee', '1d8', 'bludgeoning', 'FALSE', 'versatile,d10'),
			('Whip', 'Martial', 'Melee', '1d4', 'slashing', 'FALSE', 'finesse|reach'),
			('Blowgun', 'Martial', 'Ranged', '1d1', 'piercing', 'FALSE', 'ammunition|range,25,100|loading'),
			('Crossbow, hand', 'Martial', 'Ranged', '1d6', 'piercing', 'FALSE', 'ammunition|range,30,120|light|loading'),
			('Crossbow, heavy', 'Martial', 'Ranged', '1d10', 'piercing', 'TRUE', 'ammunition|range,100,400|heavy|loading'),
			('Longbow', 'Martial', 'Ranged', '1d8', 'piercing', 'TRUE', 'ammunition|range,150,600|heavy'),
			('Shield', 'Shield', 'Melee', '0d1', 'x', 'FALSE', 'acBonus,2');
end
if not exists (select 1 from dbo.[Races])
begin
	insert into dbo.[Races] ([Name], [Speed], [Size])
	values ('Dragonborn', 30, 'Medium'),
			('Drow', 30, 'Medium'),
			('Dwarf (Duergar)', 25, 'Small'),
			('Dwarf (Hill)', 25, 'Small'),
			('Dwarf (Mountain)', 25, 'Small'),
			('Elf (High)', 30, 'Medium'),
			('Elf (Wood)', 35, 'Medium'),
			('Halfling (Lightfoot)', 25, 'Small'),
			('Halfling (Stout)', 25, 'Small'),
			('Half-Elf (High)', 30, 'Medium'),
			('Half-Elf (Wood)', 35, 'Medium'),
			('Half-Elf (Drow)', 30, 'Medium'),
			('Half-Orc', 30, 'Medium'),
			('Human', 30, 'Medium'),
			('Gnome (Deep)', 25, 'Small'),
			('Gnome (Forest)', 25, 'Small'),
			('Gnome (Rock)', 25, 'Small'),
			('Tiefling (Asmodeus)', 30, 'Medium'),
			('Tiefling (Mephistopheles)', 30, 'Medium'),
			('Tiefling (Zariel)', 30, 'Medium');
end
if not exists (select 1 from dbo.[Spells])
begin
	insert into dbo.[Spells] ([Name], [School], [Level], [CastTime], [Range], [Duration], [Concentration], [Ritual], [Description])
	values ('Acid Splash', 'Conjuration', 0, 'Action', 60, 0, 'FALSE', 'FALSE', 'You hurl a bubble of acid. Choose one creature you can see within range, or choose two creatures you can see within range that are within 5 feet of each other. A target must succeed on a Dexterity saving throw or take 1d6 acid damage.

At Higher Levels: This spell''s damage increases by 1d6 when you reach 5th level (2d6), 11th level (3d6), and 17th level (4d6).'),
('Aid', 'Abjuration', 2, 'Action', 30, 4800, 'FALSE', 'FALSE', 'Your spell bolsters your allies with toughness and resolve. Choose up to three creatures within range. Each target''s hit point maximum and current hit points increase by 5 for the duration.

At Higher Levels: When you cast this spell using a spell slot of 3rd level or higher, a target''s hit points increase by an additional 5 for each slot level above 2nd.'),
('Alarm', 'Abjuration', 1, '1 minute', 30, 4800, 'FALSE', 'TRUE', 'You set an alarm against unwanted intrusion. Choose a door, a window, or an area within range that is no larger than a 20-foot cube. Until the spell ends, an alarm alerts you whenever a tiny or larger creature touches or enters the warded area. When you cast the spell, you can designate creatures that won''t set off the alarm. You also choose whether the alarm is mental or audible.

A mental alarm alerts you with a ping in your mind if you are within 1 mile of the warded area. This ping awakens you if you are sleeping. An audible alarm produces the sound of a hand bell for 10 seconds within 60 feet.'),
('Alter Self', 'Transmutation', 2, 'Action', 0, 600, 'TRUE', 'FALSE', 'You assume a different form. When you cast the spell, choose one of the following options, the effects of which last for the duration of the spell. While the spell lasts, you can end one option as an action to gain the benefits of a different one.

Aquatic Adaptation: You adapt your body to an aquatic environment, sprouting gills, and growing webbing between your fingers. You can breathe underwater and gain a swimming speed equal to your walking speed.

Change Appearance: You transform your appearance. You decide what you look like, including your height, weight, facial features, sound of your voice, hair length, coloration, and distinguishing characteristics, if any. You can make yourself appear as a member of another race, though none of your statistics change. You also don''t appear as a creature of a different size than you, and your basic shape stays the same; if you''re bipedal, you can''t use this spell to become quadrupedal, for instance. At any time for the duration of the spell, you can use your action to change your appearance in this way again.

Natural Weapons: You grow claws, fangs, spines, horns, or a different natural weapon of your choice. Your unarmed strikes deal 1d6 bludgeoning, piercing, or slashing damage, as appropriate to the natural weapon you chose, and you are proficient with your unarmed strikes. Finally, the natural weapon is magic and you have a +1 bonus to the attack and damage rolls you make using it.'),
('Animal Friendship', 'Enchantment', 1, 'Action', 30, 14400, 'FALSE', 'FALSE', 'This spell lets you convince a beast that you mean it no harm. Choose a beast that you can see within range. It must see and hear you. If the beast''s Intelligence is 4 or higher, the spell fails. Otherwise, the beast must succeed on a Wisdom saving throw or be charmed by you for the spell''s duration. If you or one of your companions harms the target, the spell ends.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, you can affect one additional beast for each slot level above 1st.'),
('Animal Messenger', 'Enchantment', 2, 'Action', 30, 14400, 'FALSE', 'TRUE', 'By means of this spell, you use an animal to deliver a message. Choose a Tiny beast you can see within range, such as a squirrel, a blue jay, or a bat. You specify a location, which you must have visited, and a recipient who matches a general description, such as “a man or woman dressed in the uniform of the town guard” or “a red-haired dwarf wearing a pointed hat.” You also speak a message of up to twenty-five words. The target beast travels for the duration of the spell toward the specified location, covering about 50 miles per 24 hours for a flying messenger, or 25 miles for other animals.

When the messenger arrives, it delivers your message to the creature that you described, replicating the sound of your voice. The messenger speaks only to a creature matching the description you gave. If the messenger doesn''t reach its destination before the spell ends, the message is lost, and the beast makes its way back to where you cast this spell.

At Higher Levels: If you cast this spell using a spell slot of 3rd level or higher, the duration of the spell increases by 48 hours for each slot level above 2nd.'),
('Animal Shapes', 'Transmutation', 8, 'Action', 30, 14400, 'TRUE', 'FALSE', 'Your magic turns others into beasts. Choose any number of willing creatures that you can see within range. You transform each target into the form of a large or smaller beast with a challenge rating of 4 or lower. On subsequent turns, you can use your actions to transform affected creatures into new forms.

The transformation lasts for the duration for each target, or until the target drops to 0 hit points or dies. You can choose a different form for each target. A target''s game statistics are replaced by the statistics of the chosen beast, though the target retains its alignment and Intelligence, Wisdom, and Charisma scores. The target assumes the hit points of its new form, and when it reverts to its normal form, it returns to the number of hit point it had before it transformed. If it reverts as a result of dropping to 0 hit points, any excess damage carries over to its normal form. As long as the excess damage doesn''t reduce the creature''s normal form to 0 hit points, it isn''t knocked unconcious. The creature is limited in the actions it can perform by the nature of its new form, and it can''t speak or cast spells.

The target''s gear melds into the new form. The target can''t activate, wield, or otherwise benefit from any of its equipment.'),
('Animate Dead', 'Necromancy', 3, '1 minute', 10, 0, 'FALSE', 'FALSE', 'This spell creates an undead servant. Choose a pile of bones or a corpse of a Medium or Small humanoid within range. Your spell imbues the target with a foul mimicry of life, raising it as an undead creature. The target becomes a skeleton if you chose bones or a zombie if you chose a corpse (the DM has the creature''s game statistics).

On each of your turns, you can use a bonus action to mentally command any creature you made with this spell if the creature is within 60 feet of you (if you control multiple creatures, you can command any or all of them at the same time, issuing the same command to each one). You decide what action the creature will take and where it will move during its next turn, or you can issue a general command, such as to guard a particular chamber or corridor. If you issue no commands, the creature only defends itself against hostile creatures. Once given an order, the creature continues to follow it until its task is complete.

The creature is under your control for 24 hours, after which it stops obeying any command you''ve given it. To maintain the control of the creature for another 24 hours, you must cast this spell on the creature again before the current 24-hour period ends. This use of the spell reasserts your control over up to four creatures you have animated with this spell, rather than animating a new one.

At Higher Levels: When you cast this spell using a spell slot of 4th level or higher, you animate or reassert control over two additional undead creatures for each slot level above 3rd. Each of the creatures must come from a different corpse or pile of bones.'),
('Animate Objects', 'Transmutation', 5, 'Action', 120, 10, 'TRUE', 'FALSE', 'Objects come to life at your command. Choose up to ten nonmagical objects within range that are not being worn or carried. Medium targets count as two objects, Large targets count as four objects, Huge targets count as eight objects. You can''t animate any object larger than Huge. Each target animates and becomes a creature under your control until the spell ends or until reduced to 0 hit points.

As a bonus action, you can mentally command any creature you made with this spell if the creature is within 500 feet of you (if you control multiple creatures, you can command any or all of them at the same time, issuing the same command to each one). You decide what action the creature will take and where it will move during its next turn, or you can issue a general command, such as to guard a particular chamber or corridor. If you issue no commands, the creature only defends itself against hostile creatures. Once given an order, the creature continues to follow it until its task is complete.

An animated object is a construct with AC, hit points, attacks, Strength, and Dexterity determine by its size. Its Constitution is 10 and its Intelligence and Wisdom are 3, and its Charisma is 1. Its speed is 30 feet; if the objects lack legs or other appendages it can use for locomotion, it instead has a flying speed of 30 feet and can hover. If the object is securely attached to a surface or larger object, such as a chain bolted to a wall, its speed is 0. It has blindsight with a radius of 30 feet and is blind beyond that distance. When the animated object drops to 0 hit points, it reverts to its original object form, and any remaining damage carries over to its original object form.

If you command an object to attack, it can make a single melee attack against a creature within 5 feet of it. It makes a slam attack with an attack bonus and bludgeoning damage determine by its size. The DM might rule that a specific object inflicts slashing or piercing damage based on its form.

At Higher Levels: If you cast this spell using a spell slot of 6th level or higher, you can animate two additional objects for each slot level above 5th.'),
('Antilife Shell', 'Abjuration', 5, 'Action', 0, 600, 'TRUE', 'FALSE', 'A shimmering barrier extends out from you in a 10-foot radius and moves with you, remaining centered on you and hedging out creatures other than undead and constructs.

The barrier lasts for the duration. The barrier prevents an affected creature from passing or reaching through. An affected creature can cast spells or make attacks with ranged or reach weapons through the barrier.

If you move so that an affected creature is forced to pass through the barrier, the spell ends.'),
('Antimagic Field', 'Abjuration', 8, 'Action', 0, 600, 'TRUE', 'FALSE', 'A 10-foot-radius invisible sphere of antimagic surrounds you. This area is divorced from the magical energy that suffuses the multiverse. Within the sphere, spells can''t be cast, summoned creatures disappear, and even magic items become mundane. Until the spell ends, the sphere moves with you, centered on you.

Spells and other magical effects, except those created by an artifact or a deity, are suppressed in the sphere and can''t protrude into it. A slot expended to cast a suppressed spell is consumed. While an effect is suppressed, it doesn''t function, but the time it spends suppressed counts against its duration.

Targeted Effects - Spells and other magical effects, such as magic missile and charm person, that target a creature or an object in the sphere have no effect on that target.
Areas of Magic - The area of another spell or magical effect, such as fireball, can''t extend into the sphere. If the sphere overlaps an area of magic, the part of the area that is covered by the sphere is suppressed. For example, the flames created by a wall of fire are suppressed within the sphere, creating a gap in the wall if the overlap is large enough.
Spells - Any active spell or other magical effect on a creature or an object in the sphere is suppressed while the creature or object is in it.
Magic Items - The properties and powers of magic items are suppressed in the sphere. For example, a +1 longsword in the sphere functions as a nonmagical longsword. A magic weapon''s properties and powers are suppressed if it is used against a target in the sphere or wielded by an attacker in the sphere. If a magic weapon or piece of magic ammunition fully leaves the sphere (for example, if you fire a magic arrow or throw a magic spear at a target outside the sphere) the magic of the item ceases to be suppressed as soon as it exits.
Magical Travel - Teleportation and planar travel fail to work in the sphere, whether the sphere is the destination or the departure point for such magical travel. A portal to another location, world, or plane of existence, as well as an opening to an extradimensional space such as that created by the rope trick spells, temporarily closes while in the sphere.
Creatures and Objects - A creature or object summoned or created by magic temporarily winks out of existence in the sphere. Such a creature instantly reappears once the space the creature occupied is no longer within the sphere.
Dispel Magic - Spells and magical effects such as dispel magic have no effect on the sphere. Likewise, the spheres created by different antimagic field spells don''t nullify each other.'),
('Antipathy/Sympathy', 'Enchantment', 8, '1 hour', 60, 144000, 'FALSE', 'FALSE', 'This spell attracts or repels creatures of your choice. You target something within range, either a Huge or smaller object or creature or an area that is no larger than a 200-foot cube. Then specify a kind of intelligent creature, such as red dragons, goblins, or vampires. You invest the target with an aura that either attracts or repels the specified creatures for the duration. Choose antipathy or sympathy as the aura''s effect.

- Antipathy: The enchantment causes creatures of the kind you designated to feel an intense urge to leave the area and avoid the target. When such a creature can see the target or comes within 60 feet of it, the creature must succeed on a Wisdom saving throw or become frightened. The creature remains frightened while it can see the target or is within 60 feet of it. While frightened by the target, the creature must use its movement to move to the nearest safe spot from which it can''t see the target. If the creature moves more than 60 feet from the target and can''t see it, the creature is no longer frightened, but the creature becomes frightened again if it regains sight of the target or moves within 60 feet of it.

- Sympathy: The enchantment causes the specified creatures to feel an intense urge to approach the target while within 60 feet of it or able to see it. When such a creature can see the target or comes within 60 feet of it, the creature must succeed on a Wisdom saving throw or use its movement on each of its turns to enter the area or move within reach of the target. When the creature has done so, it can''t willingly move away from the target. If the target damages or otherwise harms an affected creature, the affected creature can make a Wisdom saving throw to end the effect, as described below.

Ending the Effect: If an affected creature ends its turn while not within 60 feet of the target or able to see it, the creature makes a Wisdom saving throw. On a successful save, the creature is no longer affected by the target and recognizes the feeling of repugnance or attraction as magical. In addition, a creature affected by the spell is allowed another Wisdom saving throw every 24 hours while the spell persists. A creature that successfully saves against this effect is immune to it for 1 minute, after which time it can be affected again.'),
('Arcane Eye', 'Divination', 4, 'Action', 30, 600, 'TRUE', 'FALSE', 'You create an invisible, magical eye within range that hovers in the air for the duration. You mentally receive visual information from the eye, which has normal vision and darkvision out to 30 feet. The eye can look in every direction.

As an action, you can move the eye up to 30 feet in any direction. There is no limit to how far away from you the eye can move, but it can''t enter another plane of existence. A solid barrier blocks the eye''s movement, but the eye can pass through an opening as small as 1 inch in diameter.'),
('Arcane Gate', 'Conjuration', 6, 'Action', 500, 100, 'TRUE', 'FALSE', 'You create linked teleportation portals that remain open for the duration. Choose two points on the ground that you can see, one point within 10 feet of you and one point within 500 feet of you. A circular portal, 10 feet in diameter, opens over each point. If the portal would open in the space occupied by a creature, the spell fails, and the casting is lost.

The portals are two-dimensional glowing rings filled with mist, hovering inches from the ground and perpendicular to it at the points you choose. A ring is visible only from one side (your choice), which is the side that functions as a portal.

Any creature or object entering the portal exits from the other portal as if the two were adjacent to each other; passing through a portal from the nonportal side has no effect. The mist that fills each portal is opaque and blocks vision through it. On your turn, you can rotate the rings as a bonus action so that the active side faces in a different direction.'),
('Arcane Lock', 'Abjuration', 2, 'Action', 5, 0, 'FALSE', 'FALSE', 'You touch a closed door, window, gate, chest, or other entryway, and it becomes locked for the duration.

You and the creatures you designate when you cast this spell can open the object normally. You can also set a password that, when spoken within 5 feet of the object, suppresses this spell for 1 minute. Otherwise, it is impassable until it is broken or the spell is dispelled or suppressed. Casting Knock on the object suppresses Arcane Lock for 10 minutes.

While affected by this spell, the object is more difficult to break or force open; the DC to break it or pick any locks on it increases by 10.'),
('Armor of Agathys', 'Abjuration', 1, 'Action', 0, 600, 'FALSE', 'FALSE', 'A protective magical force surrounds you, manifesting as a spectral frost that covers you and your gear. You gain 5 temporary hit points for the duration. If a creature hits you with a melee attack while you have these hit points, the creature takes 5 cold damage.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, both the temporary hit points and the cold damage increase by 5 for each slot.'),
('Arms of Hadar', 'Conjuration', 1, 'Action', 0, 0, 'FALSE', 'FALSE', 'You invoke the power of Hadar, the Dark Hunger. Tendrils of dark energy erupt from you and batter all creatures within 10 feet of you. Each creature in that area must make a Strength saving throw. On a failed save, a target takes 2d6 necrotic damage and can''t take reactions until its next turn. On a successful save, the creature takes half damage, but suffers no other effect.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d6 for each slot level above 1st.'),
('Astral Projection', 'Necromancy', 9, '1 hour', 10, 0, 'FALSE', 'FALSE', 'You and up to eight willing creatures within range project your astral bodies into the Astral Plane (the spell fails and the casting is wasted if you are already on that plane). The material body you leave behind is unconscious and in a state of suspended animation; it doesn''t need food or air and doesn''t age.

Your astral body resembles your mortal form in almost every way, replicating your game statistics and possessions. The principal difference is the addition of a silvery cord that extends from between your shoulder blades and trails behind you, fading to invisibility after 1 foot. This cord is your tether to your material body. As long as the tether remains intact, you can find your way home. If the cord is cut—something that can happen only when an effect specifically states that it does—your soul and body are separated, killing you instantly.

Your astral form can freely travel through the Astral Plane and can pass through portals there leading to any other plane. If you enter a new plane or return to the plane you were on when casting this spell, your body and possessions are transported along the silver cord, allowing you to re-enter your body as you enter the new plane. Your astral form is a separate incarnation. Any damage or other effects that apply to it have no effect on your physical body, nor do they persist when you return to it. The spell ends for you and your companions when you use your action to dismiss it. When the spell ends, the affected creature returns to its physical body, and it awakens.

The spell might also end early for you or one of your companions. A successful dispel magic spell used against an astral or physical body ends the spell for that creature. If a creature''s original body or its astral form drops to 0 hit points, the spell ends for that creature. If the spell ends and the silver cord is intact, the cord pulls the creature''s astral form back to its body, ending its state of suspended animation. If you are returned to your body prematurely, your companions remain in their astral forms and must find their own way back to their bodies, usually by dropping to 0 hit points.'),
('Augury', 'Divination', 2, '1 minute', 0, 0, 'FALSE', 'TRUE', 'By casting gem-inlaid sticks, rolling dragon bones, laying out ornate cards, or employing some other divining tool, you receive an omen from an otherworldly entity about the results of a specific course of action that you plan to take within the next 30 minutes. The DM chooses from the following possible omens:

- Weal, for good results
- Woe, for bad results
- Weal and woe, for both good and bad results
- Nothing, for results that aren''t especially good or bad

The spell doesn''t take into account any possible circumstances that might change the outcome, such as the casting of additional spells or the loss or gain of a companion. If you cast the spell two or more times before completing your next long rest, there is a cumulative 25 percent chance for each casting after the first that you get a random reading. The DM makes this roll in secret.'),
('Aura of Life', 'Abjuration', 4, 'Action', 0, 100, 'TRUE', 'FALSE', 'Life-preserving energy radiates from you in an aura with a 30-foot radius. Until the spell ends, the aura moves with you, centered on you. Each non-hostile creature in the aura (including you) has resistance to necrotic damage, and its hit point maximum can''t be reduced. In addition, a non-hostile, living creature regains 1 hit point when it starts its turn in the aura with 0 hit points.'),
('Aura of Purity', 'Abjuration', 4, 'Action', 0, 100, 'TRUE', 'FALSE', 'Purifying energy radiates from you in an aura with a 30-foot radius. Until the spell ends, the aura moves with you, centered on you. Each non-hostile creature in the aura (including you) can''t become diseased, has resistance to poison damage, and has advantage on saving throws against effects that cause any of the following conditions: blinded, charmed, deafened, frightened, paralyzed, poisoned, and stunned.'),
('Aura of Vitality', 'Evocation', 3, 'Action', 0, 10, 'TRUE', 'FALSE', 'Healing energy radiates from you in an aura with a 30-foot radius. Until the spell ends, the aura moves with you, centered on you. You can use a bonus action to cause one creature in the aura (including you) to regain 2d6 hit points.'),
('Awaken', 'Transmutation', 5, '8 hours', 5, 0, 'FALSE', 'FALSE', 'After spending the casting time tracing magical pathways within a precious gemstone, you touch a huge or smaller beast or plant. The target must have either no Intelligence score or an Intelligence of 3 or less.

The target gains an Intelligence of 10. The target also gains the ability to speak one language you know. If the target is a plant, it gains the ability to move its limbs, roots, vines, creepers, and so forth, and it gains senses similar to a human''s. Your DM chooses statistics appropriate for the awakened plant, such as the statistics for the awakened shrub or the awakened tree.

The awakened beast or plant is charmed by you for 30 days or until you and your companions do anything harmful to it. When the charmed condition ends, the awakened creature chooses whether to remain friendly to you, based on how you treated it while it was charmed.'),
('Bane', 'Enchantment', 1, 'Action', 30, 10, 'TRUE', 'FALSE', 'Up to three creatures of your choice that you can see within range must make Charisma saving throws. Whenever a target that fails this saving throw makes an attack roll or a saving throw before the spell ends, the target must roll a d4 and subtract the number rolled from the attack roll or saving throw.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, you can target one additional creature for each slot level above 1st.'),
('Banishing Smite', 'Abjuration', 5, 'Bonus Action', 0, 10, 'TRUE', 'FALSE', 'The next time you hit a creature with a weapon attack before this spell ends, your weapon crackles with force, and the attack deals an extra 5d10 force damage to the target. Additionally, if this attack reduces the target to 50 hit points of fewer, you banish it. If the target is native to a different plane of existence than the on you''re on, the target disappears, returning to its home plane. If the target is native to the plane you''re on, the creature vanishes into a harmless demiplane. While there, the target is incapacitated. It remains there until the spell ends, at which point the target reappears in the space it left or in the nearest unoccupied space if that space is occupied.'),
('Banishment', 'Abjuration', 4, 'Action', 60, 10, 'TRUE', 'FALSE', 'You attempt to send one creature that you can see within range to another place of existence. The target must succeed on a Charisma saving throw or be banished.

If the target is native to the plane of existence you''re on, you banish the target to a harmless demiplane. While there, the target is incapacitated. The target remains there until the spell ends, at which point the target reappears in the space it left or in the nearest unoccupied space if that space is occupied.

If the target is native to a different plane of existence that the one you''re on, the target is banished with a faint popping noise, returning to its home plane. If the spell ends before 1 minute has passed, the target reappears in the space it left or in the nearest unoccupied space if that space is occupied. Otherwise, the target doesn''t return.

At Higher Levels: When you cast this spell using a spell slot of 5th level or higher, you can target one additional creature for each slot level above 4th.'),
('Barkskin', 'Transmutation', 2, 'Action', 5, 600, 'TRUE', 'FALSE', 'You touch a willing creature. Until the spell ends, the target''s skin has a rough, bark-like appearance, and the target''s AC can''t be less than 16, regardless of what kind of armor it is wearing.'),
('Beacon of Hope', 'Abjuration', 3, 'Action', 30, 10, 'TRUE', 'FALSE', 'This spell bestows hope and vitality. Choose any number of creatures within range. For the duration, each target has advantage on Wisdom saving throws and death saving throws, and regains the maximum number of hit points possible from any healing.'),
('Beast Sense', 'Divination', 2, 'Action', 5, 600, 'TRUE', 'TRUE', 'You touch a willing beast. For the duration of the spell, you can use your action to see through the beast''s eyes and hear what it hears, and continue to do so until you use your action to return to your normal senses.'),
('Bestow Curse', 'Necromancy', 3, 'Action', 5, 10, 'TRUE', 'FALSE', 'You touch a creature, and that creature must succeed on a Wisdom saving throw or become cursed for the duration of the spell. When you cast this spell, choose the nature of the curse from the following options:

- Choose one ability score. While cursed, the target has disadvantage on ability checks and saving throws made with that ability score.
- While cursed, the target has disadvantage on attack rolls against you.
- While cursed, the target must make a Wisdom saving throw at the start of each of its turns. If it fails, it wastes its action that turn doing nothing.
- While the target is cursed, your attacks and spells deal an extra 1d8 necrotic damage to the target.

A remove curse spell ends this effect. At the DM''s option, you may choose an alternative curse effect, but it should be no more powerful than those described above. The DM has final say on such a curse''s effect.

At Higher Levels: If you cast this spell using a spell slot of 4th level or higher, the duration is concentration, up to 10 minutes. If you use a spell slot of 5th level or higher, the duration is 8 hours. If you use a spell slot of 7th level or higher, the duration is 24 hours. If you use a 9th level spell slot, the spell lasts until it is dispelled. Using a spell slot of 5th level or higher grants a duration that doesn''t require concentration.'),
('Bigby''s Hand', 'Evocation', 5, 'Action', 120, 10, 'TRUE', 'FALSE', 'You create a Large hand of shimmering, translucent force in an unoccupied space that you can see within range. The hand lasts for the spell''s duration, and it moves at your command, mimicking the movements of your own hand.

The hand is an object that has AC 20 and hit points equal to your hit point maximum. If it drops to 0 hit points, the spell ends. It has a Strength of 26 (+8) and a Dexterity of 10 (+0). The hand doesn''t fill its space.

When you cast the spell and as a bonus action on your subsequent turns, you can move the hand up to 60 feet and then cause one of the following effects with it:

- Clenched Fist: The hand strikes one creature or object within 5 feet of it. Make a melee spell attack for the hand using your game statistics. On a hit, the target takes 4d8 force damage.
- Forceful Hand: The hand attempts to push a creature within 5 feet of it in a direction you choose. Make a check with the hand''s Strength contested by the Strength (Athletics) check of the target. If the target is Medium or smaller, you have advantage on the check. If you succeed, the hand pushes the target up to 5 feet plus a number of feet equal to five times your spellcasting ability modifier. The hand moves with the target to remain within 5 feet of it.
- Grasping Hand: The hand attempts to grapple a Huge or smaller creature within 5 feet of it. You use the hand''s Strength score to resolve the grapple. If the target is Medium or smaller, you have advantage on the check. While the hand is grappling the target, you can use a bonus action to have the hand crush it. When you do so, the target takes bludgeoning damage equal to 2d6 + your spellcasting ability modifier.
- Interposing Hand: The hand interposes itself between you and a creature you choose until you give the hand a different command. The hand moves to stay between you and the target, providing you with half cover against the target. The target can''t move through the hand''s space if its Strength score is less than or equal to the hand''s Strength score. If its Strength score is higher than the hand''s Strength score, the target can move toward you through the hand''s space, but that space is difficult terrain for the target.

At Higher Levels: When you cast this spell using a spell slot of 6th level or higher, the damage from the clenched fist option increases by 2d8 and the damage from the grasping hand increases by 2d6 for each slot level above 5th.'),
('Blade Barrier', 'Evocation', 6, 'Action', 90, 100, 'TRUE', 'FALSE', 'You create a vertical wall of whirling, razor-sharp blades made of magical energy. The wall appears within range and lasts for the duration. You can make a straight wall up to 100 feet long, 20 feet high, and 5 feet thick, or a ringed wall up to 60 feet in diameter, 20 feet high, and 5 feet thick. The wall provides three-quarters cover to creatures behind it, and its space is difficult terrain.

When a creature enters the wall''s area for the first time on a turn or starts its turn there, the creature must make a Dexterity saving throw. On a failed save, the creature takes 6d10 slashing damage. On a successful save, the creature takes half as much damage.'),
('Blade Ward', 'Abjuration', 0, 'Action', 0, 1, 'FALSE', 'FALSE', 'You extend your hand and trace a sigil of warding in the air. Until the end of your next turn, you have resistance against bludgeoning, piercing, and slashing damage dealt by weapon attacks.'),
('Bless', 'Enchantment', 1, 'Action', 30, 10, 'TRUE', 'FALSE', 'You bless up to three creatures of your choice within range. Whenever a target makes an attack roll or a saving throw before the spell ends, the target can roll a d4 and add the number rolled to the attack roll or saving throw.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, you can target one additional creature for each slot level above 1st.'),
('Blight', 'Necromancy', 4, 'Action', 30, 0, 'FALSE', 'FALSE', 'Necromantic energy washes over a creature of your choice that you can see within range, draining moisture and vitality from it. The target must make a Constitution saving throw. The target takes 8d8 necrotic damage on a failed save, or half as much damage on a successful one. This spell has no effect on undead or constructs.

If you target a plant creature or a magical plant, it makes the saving throw with disadvantage, and the spell deals maximum damage to it. If you target a nonmagical plant that isn''t a creature, such as a tree or shrub, it doesn''t make a saving throw; it simply withers and dies.

At Higher Levels: When you cast this spell using a spell slot of 5th level or higher, the damage increases by 1d8 for each slot level above 4th.'),
('Blinding Smite', 'Evocation', 3, 'Bonus Action', 0, 10, 'TRUE', 'FALSE', 'The next time you hit a creature with a melee weapon attack during this spell''s duration, you weapon flares with a bright light, and the attack deals an extra 3d8 radiant damage to the target. Additionally, the target must succeed on a Constitution saving throw or be blinded until the spell ends.

A creature blinded by this spell makes another Constitution saving throw at the end of each of its turns. On a successful save, it is no longer blinded.'),
('Blindness/Deafness', 'Necromancy', 2, 'Action', 30, 10, 'FALSE', 'FALSE', 'You can blind or deafen a foe. Choose one creature that you can see within range to make a Constitution saving throw. If it fails, the target is either blinded or deafened (your choice) for the duration. At the end of each of its turns, the target can make a Constitution saving throw. On a success, the spell ends.

At Higher Levels: When you cast this spell using a spell slot of 3rd level or higher, you can target one additional creature for each slot level above 2nd.'),
('Blink', 'Transmutation', 3, 'Action', 0, 10, 'FALSE', 'FALSE', 'Roll a d20 at the end of each of your turns for the duration of the spell. On a roll of 11 or higher, you vanish from your current plane of existence and appear in the Ethereal Plane (the spell fails and the casting is wasted if you were already on that plane).

At the start of you next turn, and when the spell ends if you are on the Ethereal Plane, you return to an unoccupied space of your choice that you can see within 10 feet of the space you vanished from. If no unoccupied space is available within that range, you appear in the nearest unoccupied space (chosen at random if more that one space is equally near). You can dismiss this spell as an action.

While on the Ethereal Plane, you can see and hear the plane you originated from, which is cast in shades of gray, and you can''t see anything more than 60 feet away. You can only affect and be affected by other creatures on the Ethereal Plane. Creature that aren''t there can''t perceive you or interact with you, unless they have the ability to do so.'),
('Blur', 'Illusion', 2, 'Action', 0, 10, 'TRUE', 'FALSE', 'Your body becomes blurred, shifting and wavering to all who can see you. For the duration, any creature has disadvantage on attack rolls against you. An attacker is immune to this effect if it doesn''t rely on sight, as with blindsight, or can see through illusions, as with truesight.'),
('Branding Smite', 'Evocation', 2, 'Bonus Action', 0, 10, 'TRUE', 'FALSE', 'The next time you hit a creature with a weapon attack before this spell ends, the weapon gleams with astral radiance as you strike. The attack deals an extra 2d6 radiant damage to the target, which becomes visible if it is invisible, and the target sheds dim light in a 5-foot radius and can''t become invisible until the spell ends.

At Higher Levels: When you cast this spell using a spell slot of 3rd level or higher, the extra damage increases by 1d6 for each slot level above 2nd.'),
('Burning Hands', 'Evocation', 1, 'Action', 15, 0, 'FALSE', 'FALSE', 'As you hold your hands with thumbs touching and fingers spread, a thin sheet of flames shoots forth from your outstretched fingertips. Each creature in a 15-foot cone must make a Dexterity saving throw. A creature takes 3d6 fire damage on a failed save, or half as much damage on a successful one.

The fire ignites any flammable objects in the area that aren''t being worn or carried.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d6 for each slot level above 1st.'),
('Call Lightning', 'Conjuration', 3, 'Action', 120, 100, 'TRUE', 'FALSE', 'A storm cloud appears in the shape of a cylinder that is 10 feet tall with a 60-foot radius, centered on a point you can see within range directly above you. The spell fails if you can''t see a point in the air where the storm cloud could appear (for example, if you are in a room that can''t accommodate the cloud).

When you cast the spell, choose a point you can see under the cloud. A bolt of lightning flashes down from the cloud to that point. Each creature within 5 feet of that point must make a Dexterity saving throw. A creature takes 3d10 lightning damage on a failed save, or half as much damage on a successful one. On each of your turns until the spell ends, you can use your action to call down lightning in this way again, targeting the same point or a different one.

If you are outdoors in stormy conditions when you cast this spell, the spell gives you control over the existing storm instead of creating a new one. Under such conditions, the spell''s damage increases by 1d10.

At Higher Levels: When you cast this spell using a spell slot of 4th or higher level, the damage increases by 1d10 for each slot level above 3rd.'),
('Calm Emotions', 'Enchantment', 2, 'Action', 60, 10, 'TRUE', 'FALSE', 'You attempt to suppress strong emotions in a group of people. Each humanoid in a 20-foot-radius sphere centered on a point you choose within range must make a Charisma saving throw; a creature can choose to fail this saving throw if it wishes. If a creature fails its saving throw, choose one of the following two effects. You can suppress any effect causing a target to be charmed or frightened. When this spell ends, any suppressed effect resumes, provided that its duration has not expired in the meantime.

Alternatively, you can make a target indifferent about creatures of your choice that it is hostile toward. This indifference ends if the target is attacked or harmed by a spell or if it witnesses any of its friends being harmed. When the spell ends, the creature becomes hostile again, unless the DM rules otherwise.'),
('Chain Lightning', 'Evocation', 6, 'Action', 150, 0, 'FALSE', 'FALSE', 'You create a bolt of lightning that arcs toward a target of your choice that you can see within range. Three bolts then leap from that target to as many as three other targets, each of which must be within 30 feet of the first target. A target can be a creature or an object and can be targeted by only one of the bolts.

A target must make a Dexterity saving throw. The target takes 10d8 lightning damage on a failed save, or half as much on a successful one.

At Higher Levels: When you cast this spell using a spell slot of 7th level or higher, one additional bolt leaps from the first target to another target for each slot level above 6th.'),
('Charm Person', 'Enchantment', 1, 'Action', 30, 600, 'FALSE', 'FALSE', 'You attempt to charm a humanoid you can see within range. It must make a Wisdom saving throw, and does so with advantage if you or your companions are fighting it. If it fails the saving throw, it is charmed by you until the spell ends or until you or your companions do anything harmful to it. The charmed creature regards you as a friendly acquaintance. When the spell ends, the creature knows it was charmed by you.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, you can target one additional creature for each slot level above 1st. The creatures must be within 30 feet of each other when you target them.'),
('Chill Touch', 'Necromancy', 0, 'Action', 120, 1, 'FALSE', 'FALSE', 'You create a ghostly, skeletal hand in the space of a creature within range. Make a ranged spell attack against the creature to assail it with the chill of the grave. On a hit, the target takes 1d8 necrotic damage, and it can''t regain hit points until the start of your next turn. Until then, the hand clings to the target. If you hit an undead target, it also has disadvantage on attack rolls against you until the end of your next turn.

At Higher Levels: This spell''s damage increases by 1d8 when you reach 5th level (2d8), 11th level (3d8), and 17th level (4d8).'),
('Chromatic Orb', 'Evocation', 1, 'Action', 90, 0, 'FALSE', 'FALSE', 'You hurl a 4-inch-diameter sphere of energy at a creature that you can see within range. You choose acid, cold, fire, lightning, poison, or thunder for the type of orb you create, and then make a ranged spell attack against the target. If the attack hits, the creature takes 3d8 damage of the type you chose.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d8 for each slot level above 1st.'),
('Circle of Death', 'Necromancy', 6, 'Action', 150, 0, 'FALSE', 'FALSE', 'A sphere of negative energy ripples out in a 60-foot-radius sphere from a point within range. Each creature in that area must make a Constitution saving throw. A target takes 8d6 necrotic damage on a failed save, or half as much damage on a successful one.

At Higher Levels: When you cast this spell using a spell slot of 7th level or higher, the damage increases by 2d6 for each slot level above 6th.'),
('Circle of Power', 'Abjuration', 5, 'Action', 0, 100, 'TRUE', 'FALSE', 'Divine energy radiates from you, distorting and diffusing magical energy within 30 feet of you. Until the spell ends, the sphere moves with you, centered on you. For the duration, each friendly creature in the area (including you) has advantage on saving throws against spells and other magical effects.

Additionally, when an affected creature succeeds on a saving throw made against a spell or magical effect that allows it to make a saving throw to take only half damage, it instead takes no damage if it succeeds on the saving throws.'),
('Clairvoyance', 'Divination', 3, '10 minutes', 5280, 100, 'TRUE', 'FALSE', 'You create an invisible sensor within range in a location familiar to you (a place you have visited or seen before) or in an obvious location that is unfamiliar to you (such as behind a door, around a corner, or in a grove of trees). The sensor remains in place for the duration, and it can''t be attacked or otherwise interacted with.

When you cast the spell, you choose seeing or hearing. You can use the chosen sense through the sensor as if you were in its space. As your action, you can switch between seeing and hearing. A creature that can see the sensor (such as a creature benefitting from see invisibility or truesight) sees a luminous, intangible orb about the size of your fist.'),
('Clone', 'Necromancy', 8, '1 hour', 5, 0, 'FALSE', 'FALSE', 'This spell grows an inert duplicate of a living creature as a safeguard against death. This clone forms inside the vessel used in the spell''s casting and grows to full size and maturity after 120 days; you can also choose to have the clone be a younger version of the same creature. It remains inert and endures indefinitely, as long as its vessel remains undisturbed.

At any time after the clone matures, if the original creature dies, its soul transfers to the clone, provided that the soul is free and willing to return. The clone is physically identical to the original and has the same personality, memories, and abilities, but none of the original''s equipment. The original creature''s physical remains, if they still exist, become inert and can''t thereafter be restored to life, since the creature''s soul is elsewhere.'),
('Cloud of Daggers', 'Conjuration', 2, 'Action', 60, 10, 'TRUE', 'FALSE', 'You fill the air with spinning daggers in a cube 5 feet on each side, centered on a point you choose within range. A creature takes 4d4 slashing damage when it enters the spell''s area for the first time on a turn or starts its turn there.

At Higher Levels: When you cast this spell using a spell slot of 3rd level or higher, the damage increases by 2d4 for each slot level above 2nd.'),
('Cloudkill', 'Conjuration', 5, 'Action', 120, 100, 'TRUE', 'FALSE', 'You create a 20-foot-radius sphere of poisonous, yellow-green fog centered on a point you choose within range. The fog spreads around corners. It lasts for the duration or until strong wind disperses the fog, ending the spell. Its area is heavily obscured.

When a creature enters the spell''s area for the first time on a turn or starts its turn there, that creature must make a Constitution saving throw. The creature takes 5d8 poison damage on a failed save, or half as much damage on a successful one. Creatures are affected even if they hold their breath or don''t need to breathe.

The fog moves 10 feet away from you at the start of each of your turns, rolling along the surface of the ground. The vapors, being heavier than air, sink to the lowest level of the land, even pouring down openings.

At Higher Levels: When you cast this spell using a spell slot of 6th level or higher, the damage increases by 1d8 for each slot level above 5th.'),
('Color Spray', 'Illusion', 1, 'Action', 15, 1, 'FALSE', 'FALSE', 'A dazzling array of flashing, colored light springs from your hand. Roll 6d10, the total is how many hit points of creatures this spell can effect. Creatures in a 15-foot cone originating from you are affected in ascending order of their current hit points (ignoring unconscious creatures and creatures that can''t see).

Starting with the creature that has the lowest current hit points, each creature affected by this spell is blinded until the end of your next turn. Subtract each creature''s hit points from the total before moving on to the creature with the next lowest hit points. A creature''s hit points must be equal to or less than the remaining total for the creature to be affected.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, roll an additional 2d10 for each slot level above 1st.'),
('Command', 'Enchantment', 1, 'Action', 60, 1, 'FALSE', 'FALSE', 'You speak a one-word command to a creature you can see within range. The target must succeed on a Wisdom saving throw or follow the command on its next turn. The spell has no effect if the target is undead, if it doesn''t understand your language, or if your command is directly harmful to it. Some typical commands and their effects follow. You might issue a command other than one described here. If you do so, the DM determines how the target behaves. If the target can''t follow your command, the spell ends.

Approach - The target moves toward you by the shortest and most direct route, ending its turn if it moves within 5 feet of you.

Drop - The target drops whatever it is holding and then ends its turn.

Flee - The target spends its turn moving away from you by the fastest available means.

Grovel - The target falls prone and then ends its turn.

Halt - The target doesn''t move and takes no actions. A flying creature stays aloft, provided that it is able to do so. If it must move to stay aloft, it flies the minimum distance needed to remain in the air.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, you can affect one additional creature for each slot level above 1st. The creatures must be within 30 feet of each other when you target them.'),
('Commune', 'Divination', 5, '1 minute', 0, 10, 'FALSE', 'TRUE', 'You contact your deity or a divine proxy and ask up to three questions that can be answered with a yes or no. You must ask your questions before the spell ends. You receive a correct answer for each question.

Divine beings aren''t necessarily omniscient, so you might receive “unclear” as an answer if a question pertains to information that lies beyond the deity''s knowledge. In a case where a one-word answer could be misleading or contrary to the deity''s interests, the DM might offer a short phrase as an answer instead.

If you cast the spell two or more times before finishing your next long rest, there is a cumulative 25 percent chance for each casting after the first that you get no answer. The DM makes this roll in secret.'),
('Commune with Nature', 'Divination', 5, '1 minute', 0, 0, 'FALSE', 'TRUE', 'You briefly become one with nature and gain knowledge of the surrounding territory. In the outdoors, the spell gives you knowledge of the land within 3 miles of you. In caves and other natural underground settings, the radius is limited to 300 feet. The spell doesn''t function where nature has been replaced by construction, such as in dungeons and towns.

You instantly gain knowledge of up to three facts of your choice about any of the following subjects as they relate to the area:

- Terrain and bodies of water
- Prevalent plants, minerals, animals, or peoples
- Powerful celestials, fey, fiends, elementals, or undead
- Influence from other planes of existence
- Buildings

For example, you could determine the location of powerful undead in the area, the location of major sources of safe drinking water, and the location of any nearby towns.'),
('Compelled Duel', 'Enchantment', 1, 'Bonus Action', 30, 10, 'TRUE', 'FALSE', 'You attempt to compel a creature into a duel. One creature that you can see within range must make a Wisdom saving throw. On a failed save, the creature is drawn to you, compelled by your divine demand. For the duration, it has disadvantage on attack rolls against creatures other than you, and must make a Wisdom saving throw each time it attempts to move to a space that is more than 30 feet away from you; if it succeeds on this saving throw, this spell doesn''t restrict the target''s movement for that turn.

The spell ends if you attack any other creature, if you cast a spell that targets a hostile creature other than the target, if a creature friendly to you damages the target or casts a harmful spell on it, or if you end your turn more than 30 feet away from the target.'),
('Comprehend Languages', 'Divination', 1, 'Action', 0, 600, 'FALSE', 'TRUE', 'For the duration, you understand the literal meaning of any spoken language that you hear. You also understand any written language that you see, but you must be touching the surface on which the words are written. It takes about 1 minute to read one page of text.

This spell doesn''t decode secret messages in a text or glyph, such as an arcane sigil, that isn''t part of a written language.'),
('Compulsion', 'Enchantment', 4, 'Action', 30, 10, 'TRUE', 'FALSE', 'Creatures of your choice that you can see within range and that can hear you must make a Wisdom saving throw. A target automatically succeeds on this saving throw if it can''t be charmed. On a failed save, a target is affected by this spell. Until the spell ends, you can use a bonus action on each of your turns to designate a direction that is horizontal to you. Each affected target must use as much of its movement as possible to move in that direction on its next turn. It can take its action before it moves. After moving in this way, it can make another Wisdom saving throw to try to end the effect.

A target isn''t compelled to move into an obviously deadly hazard, such as a fire pit, but it will provoke opportunity attacks to move in the designated direction.'),
('Cone of Cold', 'Evocation', 5, 'Action', 60, 0, 'FALSE', 'FALSE', 'A blast of cold air erupts from your hands. Each creature in a 60-foot cone must make a Constitution saving throw. A creature takes 8d8 cold damage on a failed save, or half as much damage on a successful one. A creature killed by this spell becomes a frozen statue until it thaws.

At Higher Levels: When you cast this spell using a spell slot of 6th level or higher, the damage increases by 1d8 for each slot level above 5th.'),
('Confusion', 'Enchantment', 4, 'Action', 90, 10, 'TRUE', 'FALSE', 'This spell assaults and twists creatures'' minds, spawning delusions and provoking uncontrolled actions. Each creature in a 10-foot-radius sphere centered on a point you choose within range must succeed on a Wisdom saving throw when you cast this spell or be affected by it.

An affected target can''t take reactions and must roll a d10 at the start of each of its turns to determine its behavior for that turn.

1 : The creature uses all its movement to move in a random direction. To determine the direction, roll a d8 and assign a direction to each die face. The creature doesn''t take an action this turn.
2-6 : The creature doesn''t move or take actions this turn.
7-8 : The creature uses its action to make a melee attack against a randomly determined creature within its reach. If there is no creature within its reach, the creature does nothing this turn.
9-10 : The creature can act and move normally.
At the end of its turns, an affected target can make a Wisdom saving throw. If it succeeds, this effect ends for that target.

At Higher Levels: When you cast this spell using a spell slot of 5th level or higher, the radius of the sphere increases by 5 feet for each slot level above 4th.'),
('Conjure Animals', 'Conjuration', 3, 'Action', 60, 600, 'TRUE', 'FALSE', 'You summon fey spirits that take the form of beasts and appear in unoccupied spaces that you can see within range.

Choose one of the following options for what appears:

- One beast of challenge rating 2 or lower
- Two beasts of challenge rating 1 or lower
- Four beasts of challenge rating 1/2 or lower
- Eight beasts of challenge rating 1/4 or lower

Each beast is also considered fey, and it disappears when it drops to 0 hit points or when the spell ends.

The summoned creatures are friendly to you and your companions. Roll initiative for the summoned creatures as a group, which has its own turns. They obey any verbal commands that you issue to them (no action required by you). If you don''t issue any commands to them, they defend themselves from hostile creatures, but otherwise take no actions. The DM has the creatures'' statistics.

At Higher Levels: When you cast this spell using certain higher-level spell slots, you choose one of the summoning options above, and more creatures appear: twice as many with a 5th-level slot, three times as many with a 7th-level slot, and four times as many with a 9th-level slot.'),
('Conjure Barrage', 'Conjuration', 3, 'Action', 60, 0, 'FALSE', 'FALSE', 'You throw a nonmagical weapon or fire a piece of nonmagical ammunition into the air to create a cone of identical weapons that shoot forward and then disappear. Each creature in a 60-foot cone must succeed on a Dexterity saving throw. A creature takes 3d8 damage on a failed save, or half as much damage on a successful one. The damage type is the same as that of the weapon or ammunition used as a component.'),
('Conjure Celestial', 'Conjuration', 7, '1 minute', 90, 600, 'TRUE', 'FALSE', 'You summon a celestial of challenge rating 4 or lower, which appears in an unoccupied space that you can see within range. The celestial disappears when it drops to 0 hit points or when the spell ends.

The celestial is friendly to you and your companions for the duration. Roll initiative for the celestial, which has its own turns. It obeys any verbal commands that you issue to it (no action required by you), as long as they don''t violate its alignment. If you don''t issue any commands to the celestial, it defends itself from hostile creatures but otherwise takes no actions. The DM has the celestial''s statistics.

At Higher Levels: When you cast this spell using a 9th-level spell slot, you summon a celestial of challenge rating 5 or lower.'),
('Conjure Elemental', 'Conjuration', 5, 'Action', 90, 600, 'TRUE', 'FALSE', 'You call forth an elemental servant. Choose an area of air, earth, fire, or water that fills a 10-foot cube within range. An elemental of challenge rating 5 or lower appropriate to the area you chose appears in an unoccupied space within 10 feet of it. For example, a fire elemental emerges from a bonfire, and an earth elemental rises up from the ground. The elemental disappears when it drops to 0 hit points or when the spell ends.

The elemental is friendly to you and your companions for the duration. Roll initiative for the elemental, which has its own turns. It obeys any verbal commands that you issue to it (no action required by you). If you don''t issue any commands to the elemental, it defends itself from hostile creatures but otherwise takes no actions.

If your concentration is broken, the elemental doesn''t disappear. Instead, you lose control of the elemental, it becomes hostile toward you and your companions, and it might attack. An uncontrolled elemental can''t be dismissed by you, and it disappears 1 hour after you summoned it. The DM has the elemental''s statistics.

At Higher Levels: When you cast this spell using a spell slot of 6th level or higher, the challenge rating increases by 1 for each slot level above 5th.'),
('Conjure Fey', 'Conjuration', 6, 'Action', 90, 600, 'TRUE', 'FALSE', 'You summon a fey creature of challenge rating 6 or lower, or a fey spirit that takes the form of a beast of challenge rating 6 or lower. It appears in an unoccupied space that you can see within range. The fey creature disappears when it drops to 0 hit points or when the spell ends.

The fey creature is friendly to you and your companions for the duration. Roll initiative for the creature, which has its own turns. It obeys any verbal commands that you issue to it (no action required by you), as long as they don''t violate its alignment. If you don''t issue any commands to the fey creature, it defends itself from hostile creatures but otherwise takes no actions.

If your concentration is broken, the fey creature doesn''t disappear. Instead, you lose control of the fey creature, it becomes hostile toward you and your companions, and it might attack. An uncontrolled fey creature can''t be dismissed by you, and it disappears 1 hour after you summoned it. The DM has the fey creature''s statistics.

At Higher Levels: When you cast this spell using a spell slot of 7th level or higher, the challenge rating increases by 1 for each slot level above 6th.'),
('Conjure Minor Elementals', 'Conjuration', 4, '1 minute', 90, 600, 'TRUE', 'FALSE', 'You summon elementals that appear in unoccupied spaces that you can see within range. You choose one the following options for what appears:

- One elemental of challenge rating 2 or lower
- Two elementals of challenge rating 1 or lower
- Four elementals of challenge rating 1/2 or lower
- Eight elementals of challenge rating 1/4 or lower

An elemental summoned by this spell disappears when it drops to 0 hit points or when the spell ends.

The summoned creatures are friendly to you and your companions. Roll initiative for the summoned creatures as a group, which has its own turns. They obey any verbal commands that you issue to them (no action required by you). If you don''t issue any commands to them, they defend themselves from hostile creatures, but otherwise take no actions. The DM has the creatures'' statistics.

At Higher Levels: When you cast this spell using certain higher-level spell slots, you choose one of the summoning options above, and more creatures appear: twice as many with a 6th-level slot and three times as many with an 8th-level slot.'),
('Conjure Volley', 'Conjuration', 5, 'Action', 150, 0, 'FALSE', 'FALSE', 'You fire a piece of nonmagical ammunition from a ranged weapon or throw a nonmagical weapon into the air and choose a point within range. Hundreds of duplicates of the ammunition or weapon fall in a volley from above and then disappear. Each creature in a 40-foot-radius, 20-foot-high cylinder centered on that point must make a Dexterity saving throw. A creature takes 8d8 damage on a failed save, or half as much damage on a successful one. The damage type is the same as that of the ammunition or weapon.'),
('Conjure Woodland Beings', 'Conjuration', 4, 'Action', 60, 600, 'TRUE', 'FALSE', 'You summon fey creatures that appear in unoccupied spaces that you can see within range. Choose one of the following options for what appears:

- One fey creature of challenge rating 2 or lower
- Two fey creatures of challenge rating 1 or lower
- Four fey creatures of challenge rating 1/2 or lower
- Eight fey creatures of challenge rating 1/4 or lower

A summoned creature disappears when it drops to 0 hit points or when the spell ends.

The summoned creatures are friendly to you and your companions. Roll initiative for the summoned creatures as a group, which have their own turns. They obey any verbal commands that you issue to them (no action required by you). If you don''t issue any commands to them, they defend themselves from hostile creatures, but otherwise take no actions. The DM has the creatures'' statistics.

At Higher Levels: When you cast this spell using certain higher-level spell slots, you choose one of the summoning options above, and more creatures appear: twice as many with a 6th-level slot, and three times as many with an 8th-level slot.'),
('Contact Other Plane', 'Divination', 5, '1 minute', 0, 10, 'FALSE', 'TRUE', 'You mentally contact a demigod, the spirit of a long-dead sage, or some other mysterious entity from another plane. Contacting this extraplanar intelligence can strain or even break your mind. When you cast this spell, make a DC 15 Intelligence saving throw. On a failure, you take 6d6 psychic damage and are insane until you finish a long rest. While insane, you can''t take actions, can''t understand what other creatures say, can''t read, and speak only in gibberish. A Greater Restoration spell cast on you ends this effect.

On a successful save, you can ask the entity up to five questions. You must ask your questions before the spell ends. The DM answers each question with one word, such as ""yes,"" ""no,"" ""maybe,"" ""never,"" ""irrelevant,"" or ""unclear"" (if the entity doesn''t know the answer to the question). If a one-word answer would be misleading, the DM might instead offer a short phrase as an answer.'),
('Contagion', 'Necromancy', 5, 'Action', 5, 100800, 'FALSE', 'FALSE', 'Your touch inflicts disease. Make a melee spell attack against a creature within your reach. On a hit, the target is poisoned.

At the end of each of the poisoned target''s turns, the target must make a Constitution saving throw. If the target succeeds on three of these saves, it is no longer poisoned, and the spell ends. If the target fails three of these saves, the target is no longer poisoned, but choose one of the diseases below. The target is subjected to the chosen disease for the spell''s duration.

Since this spell induces a natural disease in its target, any effect that removes a disease or otherwise ameliorates a disease''s effects apply to it.

- Blinding Sickness. Pain grips the creature''s mind, and its eyes turn milky white. The creature has disadvantage on Wisdom checks and Wisdom saving throws and is blinded.
- Filth Fever. A raging fever sweeps through the creature''s body. The creature has disadvantage on Strength checks, Strength saving throws, and attack rolls that use Strength.
- Flesh Rot. The creature''s flesh decays. The creature has disadvantage on Charisma checks and vulnerability to all damage.
- Mindfire. The creature''s mind becomes feverish. The creature has disadvantage on Intelligence checks and Intelligence saving throws, and the creature behaves as if under the effects of the confusion spell during combat.
- Seizure. The creature is overcome with shaking. The creature has disadvantage on Dexterity checks, Dexterity saving throws, and attack rolls that use Dexterity.
- Slimy Doom. The creature begins to bleed uncontrollably. The creature has disadvantage on Constitution checks and Constitution saving throws. In addition, whenever the creature takes damage, it is stunned until the end of its next turn.'),
('Contingency', 'Evocation', 6, '10 minutes', 0, 144000, 'FALSE', 'FALSE', 'Choose a spell of 5th level or lower that you can cast, that has a casting time of 1 action, and that can target you. You cast that spell—called the contingent spell—as part of casting contingency, expending spell slots for both, but the contingent spell doesn''t come into effect. Instead, it takes effect when a certain circumstance occurs. You describe that circumstance when you cast the two spells. For example, a contingency cast with water breathing might stipulate that water breathing comes into effect when you are engulfed in water or a similar liquid.

The contingent spell takes effect immediately after the circumstance is met for the first time, whether or not you want it to, and then contingency ends.

The contingent spell takes effect only on you, even if it can normally target others. You can use only one contingency spell at a time. If you cast this spell again, the effect of another contingency spell on you ends. Also, contingency ends on you if its material component is ever not on your person.'),
('Continual Flame', 'Evocation', 2, 'Action', 5, 0, 'FALSE', 'FALSE', 'A flame, equivalent in brightness to a torch, springs forth from an object that you touch. The effect looks like a regular flame, but it creates no heat and doesn''t use oxygen. A continual flame can be covered or hidden but not smothered or quenched.'),
('Control Water', 'Transmutation', 4, 'Action', 300, 100, 'TRUE', 'FALSE', 'Until the spell ends, you control any freestanding water inside an area you choose that is a cube up to 100 feet on a side. You can choose from any of the following effects when you cast this spell. As an action on your turn, you can repeat the same effect or choose a different one:

- Flood. You cause the water level of all standing water in the area to rise by as much as 20 feet. If the area includes a shore, the flooding water spills over onto dry land. If you choose an area in a large body of water, you instead create a 20-foot tall wave that travels from one side of the area to the other and then crashes down. Any Huge or smaller vehicles in the wave''s path are carried with it to the other side. Any Huge or smaller vehicles struck by the wave have a 25 percent chance of capsizing. The water level remains elevated until the spell ends or you choose a different effect. If this effect produced a wave, the wave repeats on the start of your next turn while the flood effect lasts.

- Part Water. You cause water in the area to move apart and create a trench. The trench extends across the spell''s area, and the separated water forms a wall to either side. The trench remains until the spell ends or you choose a different effect. The water then slowly fills in the trench over the course of the next round until the normal water level is restored.

- Redirect Flow. You cause flowing water in the area to move in a direction you choose, even if the water has to flow over obstacles, up walls, or in other unlikely directions. The water in the area moves as you direct it, but once it moves beyond the spell''s area, it resumes its flow based on the terrain conditions. The water continues to move in the direction you chose until the spell ends or you choose a different effect.

- Whirlpool. This effect requires a body of water at least 50 feet square and 25 feet deep. You cause a whirlpool to form in the center of the area. The whirlpool forms a vortex that is 5 feet wide at the base, up to 50 feet wide at the top, and 25 feet tall. Any creature or object in the water and within 25 feet of the vortex is pulled 10 feet toward it. A creature can swim away from the vortex by making a Strength (Athletics) check against your spell save DC.

- When a creature enters the vortex for the first time on a turn or starts its turn there, it must make a Strength saving throw. On a failed save, the creature takes 2d8 bludgeoning damage and is caught in the vortex until the spell ends. On a successful save, the creature takes half damage, and isn''t caught in the vortex. A creature caught in the vortex can use its action to try to swim away from the vortex as described above, but has disadvantage on the Strength (Athletics) check to do so.

The first time each turn that an object enters the vortex, the object takes 2d8 bludgeoning damage, this damage occurs each round it remains in the vortex.'),
('Control Weather', 'Transmutation', 8, '10 minutes', 0, 4800, 'TRUE', 'FALSE', 'You take control of the weather within 5 miles of you for the duration. You must be outdoors to cast this spell. Moving to a place where you don''t have a clear path to the sky ends the spell early.

When you cast the spell, you change the current weather conditions, which are determined by the DM based on the climate and season. You can change precipitation, temperature, and wind. It takes 1d4 x 10 minutes for the new conditions to take effect. Once they do so, you can change the conditions again. When the spell ends, the weather gradually returns to normal.'),
('Cordon of Arrows', 'Transmutation', 2, 'Action', 5, 4800, 'FALSE', 'FALSE', 'You plant four pieces of nonmagical ammunition – arrows or crossbow bolts – in the ground within range and lay magic upon them to protect an area. Until the spell ends, whenever a creature other than you comes within 30 feet of the ammunition for the first time on a turn or ends its turn there, one piece of ammunition flies up to strike it. The creature must succeed on a Dexterity saving throw or take 1d6 piercing damage. The piece of ammunition is then destroyed. The spell ends when no ammunition remains.

When you cast this spell, you can designate any creatures you choose, and the spell ignores them.

At Higher Levels: When you cast this spell using a spell slot of 3rd level or higher, the amount of ammunition that can be affected increases by two for each slot level above 2nd.'),
('Counterspell', 'Abjuration', 3, 'Reaction', 60, 0, 'FALSE', 'FALSE', 'You attempt to interrupt a creature in the process of casting a spell. If the creature is casting a spell of 3rd level or lower, its spell fails and has no effect. If it is casting a spell of 4th level or higher, make an ability check using your spellcasting ability. The DC equals 10 + the spell''s level. On a success, the creature''s spell fails and has no effect.

At Higher Levels: When you cast this spell using a spell slot of 4th level or higher, the interrupted spell has no effect if its level is less than or equal to the level of the spell slot you used.'),
('Create Food and Water', 'Conjuration', 3, 'Action', 30, 0, 'FALSE', 'FALSE', 'You create 45 pounds of food and 30 gallons of water on the ground or in containers within range, enough to sustain up to fifteen humanoids or five steeds for 24 hours. The food is bland but nourishing, and spoils if uneaten after 24 hours. The water is clean and doesn''t go bad.'),
('Create or Destroy Water', 'Transmutation', 1, 'Action', 30, 0, 'FALSE', 'FALSE', 'You either create or destroy water.

Create Water. You create up to 10 gallons of clean water within range in an open container. Alternatively, the water falls as rain in a 30-foot cube within range, extinguishing exposed flames in the area.

Destroy Water. You destroy up to 10 gallons of water in an open container within range. Alternatively, you destroy fog in a 30-foot cube within range.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, you create or destroy 10 additional gallons of water, or the size of the cube increases by 5 feet, for each slot level above 1st.'),
('Create Undead', 'Necromancy', 6, '1 minute', 10, 0, 'FALSE', 'FALSE', 'You can cast this spell only at night. Choose up to three corpses of Medium or Small humanoids within range. Each corpse becomes a ghoul under your control. The DM has game statistics for these creatures.

As a bonus action on each of your turns, you can mentally command any creature you animated with this spell if the creature is within 120 feet of you (if you control multiple creatures, you can command any or all of them at the same time, issuing the same command to each one). You decide what action the creature will take and where it will move during its next turn, or you can issue a general command, such as to guard a particular chamber or corridor. If you issue no commands, the creature only defends itself against hostile creatures. Once given an order, the creature continues to follow it until its task is complete.

The creature is under your control for 24 hours, after which it stops obeying any command you have given it. To maintain control of the creature for another 24 hours, you must cast this spell on the creature before the current 24-hour period ends. This use of the spell reasserts your control over up to three creatures you have animated with this spell, rather than animating new ones.

At Higher Levels: When you cast this spell using a 7th-level spell slot, you can animate or reassert control over four ghouls. When you cast this spell using an 8th-level spell slot, you can animate or reassert control over five ghouls or two ghasts or wights. When you cast this spell using a 9th-level spell slot, you can animate or reassert control over six ghouls, three ghasts or wights, or two mummies.'),
('Creation', 'Illusion', 5, '1 minute', 30, 0, 'FALSE', 'FALSE', 'You pull wisps of shadow material from the Shadowfell to create a nonliving object of vegetable matter within range: soft goods, rope, wood, or something similar. You can also use this spell to create mineral objects such as stone, crystal, or metal. The object created must be no larger than a 5-foot cube, and the object must be of a form and material that you have seen before.

The duration depends on the object''s material. If the object is composed of multiple materials, use the shortest duration.

Vegetable matter - 1 day
Stone, crystal - 12 hours
Precious metals - 1 hour
Gems - 10 minutes
Adamantine, Mithral - 1 minute

Using any material created by this spell as another spell''s material component causes that spell to fail.

At Higher Levels: When you cast this spell using a spell slot of 6th level or higher, the cube increases by 5 feet for each slot level above 5th.'),
('Crown of Madness', 'Enchantment', 2, 'Action', 120, 10, 'TRUE', 'FALSE', 'One humanoid of your choice that you can see within range must succeed on a Wisdom saving throw or become charmed by you for the duration. While the target is charmed in this way, a twisted crown of jagged iron appears on its head, and a madness glows in its eyes.

The charmed target must use its action before moving on each of its turns to make a melee attack against a creature other than itself that you mentally choose. The target can act normally on its turn if you choose no creature or if none are within its reach.

On your subsequent turns, you must use your action to maintain control over the target, or the spell ends. Also, the target can make a Wisdom saving throw at the end of each of its turns. On a success, the spell ends.'),
('Crusader''s Mantle', 'Evocation', 3, 'Action', 0, 10, 'TRUE', 'FALSE', 'Holy power radiates from you in an aura with a 30-foot radius, awakening boldness in friendly creatures. Until the spell ends, the aura moves with you, centered on you. While in the aura, each non-hostile creature in the aura (including you) deals an extra 1d4 radiant damage when it hits with a weapon attack.'),
('Cure Wounds', 'Evocation', 1, 'Action', 5, 0, 'FALSE', 'FALSE', 'A creature you touch regains a number of hit points equal to 1d8 + your spellcasting ability modifier. This spell has no effect on undead or constructs.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, the healing increases by 1d8 for each slot level above 1st.'),
('Dancing Lights', 'Evocation', 0, 'Action', 120, 10, 'TRUE', 'FALSE', 'You create up to four torch-sized lights within range, making them appear as torches, lanterns, or glowing orbs that hover in the air for the duration. You can also combine the four lights into one glowing vaguely humanoid form of Medium size. Whichever form you choose, each light sheds dim light in a 10-foot radius.

As a bonus action on your turn, you can move the lights up to 60 feet to a new spot within range. A light must be within 20 feet of another light created by this spell, and a light winks out if it exceeds the spell''s range.'),
('Darkness', 'Evocation', 2, 'Action', 60, 100, 'TRUE', 'FALSE', 'Magical darkness spreads from a point you choose within range to fill a 15-foot radius sphere for the duration. The darkness spreads around corners. A creature with darkvision can''t see through this darkness, and nonmagical light can''t illuminate it.

If the point you choose is on an object you are holding or one that isn''t being worn or carried, the darkness emanates from the object and moves with it. Completely covering the source of the darkness with an opaque object, such as a bowl or a helm, blocks the darkness.

If any of this spell''s area overlaps with an area of light created by a spell of 2nd level or lower, the spell that created the light is dispelled.'),
('Darkvision', 'Transmutation', 2, 'Action', 5, 4800, 'FALSE', 'FALSE', 'You touch a willing creature to grant it the ability to see in the dark. For the duration, that creature has darkvision out to a range of 60 feet.'),
('Daylight', 'Evocation', 3, 'Action', 60, 600, 'FALSE', 'FALSE', 'A 60-foot-radius sphere of light spreads out from a point you choose within range. The sphere is bright light and sheds dim light for an additional 60 feet.

If you chose a point on an object you are holding or one that isn''t being worn or carried, the light shines from the object with and moves with it. Completely covering the affected object with an opaque object, such as a bowl or a helm, blocks the light.

If any of this spell''s area overlaps with an area of darkness created by a spell of 3rd level or lower, the spell that created the darkness is dispelled.'),
('Death Ward', 'Abjuration', 4, 'Action', 5, 4800, 'FALSE', 'FALSE', 'You touch a creature and grant it a measure of protection from death. The first time the target would drop to 0 hit points as a result of taking damage, the target instead drops to 1 hit point, and the spell ends. If the spell is still in effect when the target is subjected to an effect that would kill it instantaneously without dealing damage, that effect is instead negated against the target, and the spells ends.'),
('Delayed Blast Fireball', 'Evocation', 7, 'Action', 150, 10, 'TRUE', 'FALSE', 'A beam of yellow light flashes from your pointing finger, then condenses to linger at a chosen point within range as a glowing bead for the duration. When the spell ends, either because your concentration is broken or because you decide to end it, the bead blossoms with a low roar into an explosion of flame that spreads around corners. Each creature in a 20-foot-radius sphere centered on that point must make a Dexterity saving throw. A creature takes fire damage equal to the total accumulated damage on a failed save, or half as much damage on a successful one.

The spell''s base damage is 12d6. If at the end of your turn the bead has not yet detonated, the damage increases by 1d6.

If the glowing bead is touched before the interval has expired, the creature touching it must make a Dexterity saving throw. On a failed save, the spell ends immediately, causing the bead to erupt in flame. On a successful save, the creature can throw the bead up to 40 feet. When it strikes a creature or a solid object, the spell ends, and the bead explodes.
The fire damages objects in the area and ignites flammable objects that aren''t being worn or carried.

At Higher Levels: When you cast this spell using a spell slot of 8th level or higher, the base damage increases by 1d6 for each slot level above 7th.'),
('Demiplane', 'Conjuration', 8, 'Action', 60, 600, 'FALSE', 'FALSE', 'You create a shadowy door on a flat solid surface that you can see within range. The door is large enough to allow Medium creatures to pass through unhindered. When opened, the door leads to a demiplane that appears to be an empty room 30 feet in each dimension, made of wood or stone. When the spell ends, the door disappears, and any creatures or objects inside the demiplane remain trapped there, as the door also disappears from the other side.

Each time you cast this spell, you can create a new demiplane, or have the shadowy door connect to a demiplane you created with a previous casting of this spell. Additionally, if you know the nature and contents of a demiplane created by a casting of this spell by another creature, you can have the shadowy door connect to its demiplane instead.'),
('Destructive Wave', 'Evocation', 5, 'Action', 0, 0, 'FALSE', 'FALSE', 'You strike the ground, creating a burst of divine energy that ripples outward from you. Each creature you choose within 30 feet of you must succeed on a Constitution saving throw or take 5d6 thunder damage, as well as 5d6 radiant or necrotic damage (your choice), and be knocked prone. A creature that succeeds on its saving throw takes half as much damage and isn''t knocked prone.'),
('Detect Evil and Good', 'Divination', 1, 'Action', 0, 100, 'TRUE', 'FALSE', 'For the duration, you know if there is an aberration, celestial, elemental, fey, fiend, or undead within 30 feet of you, as well as where the creature is located. Similarly, you know if there is a place or object within 30 feet of you that has been magically consecrated or desecrated.

The spell can penetrate most barriers, but it is blocked by 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt.'),
('Detect Magic', 'Divination', 1, 'Action', 0, 100, 'TRUE', 'TRUE', 'For the duration, you sense the presence of magic within 30 feet of you. If you sense magic in this way, you can use your action to see a faint aura around any visible creature or object in the area that bears magic, and you learn its school of magic, if any.

The spell can penetrate most barriers, but is blocked by 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt.'),
('Detect Poison and Disease', 'Divination', 1, 'Action', 0, 100, 'TRUE', 'TRUE', 'For the duration, you can sense the presence and location of poisons, poisonous creatures, and diseases within 30 feet of you. You also identify the kind of poison, poisonous creature, or disease in each case.

The spell can penetrate most barriers, but is blocked by 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt.'),
('Detect Thoughts', 'Divination', 2, 'Action', 5, 10, 'TRUE', 'FALSE', 'For the duration, you can read the thoughts of certain creatures. When you cast the spell and as your action on each turn until the spell ends, you can focus your mind on any one creature that you can see within 30 feet of you. If the creature you choose has an Intelligence of 3 or lower or doesn''t speak any language, the creature is unaffected.

You initially learn the surface thoughts of the creature—what is most on its mind in that moment. As an action, you can either shift your attention to another creature''s thoughts or attempt to probe deeper into the same creature''s mind. If you probe deeper, the target must make a Wisdom saving throw. If it fails, you gain insight into its reasoning (if any), its emotional state, and something that loom s large in its mind (such as something it worries over, loves, or hates). If it succeeds, the spell ends. Either way, the target knows that you are probing into its mind, and unless you shift your attention to another creature''s thoughts, the creature can use its action on its turn to make an Intelligence check contested by your Intelligence check; if it succeeds, the spell ends.

Questions verbally directed at the target creature naturally shape the course of its thoughts, so this spell is particularly effective as part of an interrogation.

You can also use this spell to detect the presence of thinking creatures you can''t see. When you cast the spell or as your action during the duration, you can search for thoughts within 30 feet of you. The spell can penetrate barriers, but 2 feet of rock, 2 inches of any metal other than lead, or a thin sheet of lead blocks you. You can''t detect a creature with an Intelligence of 3 or lower or one that doesn''t speak any language.

Once you detect the presence of a creature in this way, you can read its thoughts for the rest of the duration as described above, even if you can''t see it, but it must still be within range.'),
('Dimension Door', 'Conjuration', 4, 'Action', 500, 0, 'FALSE', 'FALSE', 'You teleport yourself from your current location to any other spot within range. You arrive at exactly the spot desired. It can be a place you can see, one you can visualize, or one you can describe by stating distance and direction, such as ""200 feet straight downward"" or ""upward to the northwest at a 45-degree angle, 300 feet"".

You can bring along objects as long as their weight doesn''t exceed what you can carry. You can also bring one willing creature of your size or smaller who is carrying gear up to its carrying capacity. The creature must be within 5 feet of you when you cast this spell.

If you would arrive in a place already occupied by an object or a creature, you and any creature traveling with you each take 4d6 force damage, and the spell fails to teleport you.'),
('Disguise Self', 'Illusion', 1, 'Action', 0, 600, 'FALSE', 'FALSE', 'You make yourself – including your clothing, armor, weapons, and other belongings on your person – look different until the spell ends or until you use your action to dismiss it. You can seem 1 foot shorter or taller and can appear thin, fat, or in between. You can''t change your body type, so you must adopt a form that has the same basic arrangement of limbs. Otherwise, the extent of the illusion is up to you.

The changes wrought by this spell fail to hold up to physical inspection. For example, if you use this spell to add a hat to your outfit, objects pass through the hat, and anyone who touches it would feel nothing or would feel your head and hair. If you use this spell to appear thinner than you are, the hand of someone who reaches out to touch you would bump into you while it was seemingly still in midair. To discern that you are disguised, a creature can use its action to inspect your appearance and must succeed on an Intelligence (Investigation) check against your spell save DC.'),
('Disintegrate', 'Transmutation', 6, 'Action', 60, 0, 'FALSE', 'FALSE', 'A thin green ray springs from your pointing finger to a target that you can see within range. The target can be a creature, an object, or a creation of magical force, such as the wall created by wall of force.

A creature targeted by this spell must make a Dexterity saving throw. On a failed save, the target takes 10d6 + 40 force damage. The target is disintegrated if this damage leaves it with 0 hit points.

A disintegrated creature and everything it is wearing and carrying, except magic items, are reduced to a pile of fine gray dust. The creature can be restored to life only by means of a true resurrection or a wish spell.

This spell automatically disintegrates a Large or smaller nonmagical object or a creation of magical force. If the target is a Huge or larger object or creation of force, this spell disintegrates a 10-foot-cube portion of it. A magic item is unaffected by this spell.

At Higher Levels: When you cast this spell using a spell slot of 7th level or higher, the damage increases by 3d6 for each slot level above 6th.'),
('Dispel Evil and Good', 'Abjuration', 5, 'Action', 0, 10, 'TRUE', 'FALSE', 'Shimmering energy surrounds and protects you from fey, undead, and creatures originating from beyond the Material Plane. For the duration, celestials, elementals, fey, fiends, and undead have disadvantage on attack rolls against you. You can end the spell early by using either of the following special functions:

Break Enchantment - As your action, you touch a creature you can reach that is charmed, frightened, or possessed by a celestial, an elemental, a fey, a fiend, or an undead. The creature you touch is no longer charmed, frightened, or possessed by such creatures.
Dismissal - As your action, make a melee spell attack against a celestial, an elemental, a fey, a fiend, or an undead you can reach. On a hit, you attempt to drive the creature back to its home plane. The creature must succeed on a Charisma saving throw or be sent back to its home plane (if it isn''t there already). If they are already on their home plane, undead are sent to the Shadowfell, and fey are sent to the Feywild.'),
('Dispel Magic', 'Abjuration', 3, 'Action', 120, 0, 'FALSE', 'FALSE', 'Choose any creature, object, or magical effect within range. Any spell of 3rd level or lower on the target ends. For each spell of 4th level or higher on the target, make an ability check using your spellcasting ability. The DC equals 10 + the spell''s level. On a successful check, the spell ends.

At Higher Levels: When you cast this spell using a spell slot of 4th level or higher, you automatically end the effects of a spell on the target if the spell''s level is equal to or less than the level of the spell slot you used.'),
('Dissonant Whispers', 'Enchantment', 1, 'Action', 60, 0, 'FALSE', 'FALSE', 'You whisper a discordant melody that only one creature of your choice within range can hear, wracking it with terrible pain. The target must make a Wisdom saving throw. On a failed save, it takes 3d6 psychic damage and must immediately use its reaction, if available, to move as far as its speed allows away from you. The creature doesn''t move into obviously dangerous ground, such as a fire or a pit. On a successful save, the target takes half as much damage and doesn''t have to move away. A deafened creature automatically succeeds on the save.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d6 for each slot level above 1st.'),
('Divination', 'Divination', 4, 'Action', 0, 0, 'FALSE', 'TRUE', 'Your magic and an offering put you in contact with a god or a god''s servants. You ask a single question concerning a specific goal, event, or activity to occur within 7 days. The DM offers a truthful reply. The reply might be a short phrase, a cryptic rhyme, or an omen.

The spell doesn''t take into account any possible circumstances that might change the outcome, such as the casting of additional spells or the loss or gain of a companion.

If you cast this spell two or more times before finishing your next long rest, there is a cumulative 25 percent chance for each casting after the first that you get a random reading. The DM makes this roll in secret.'),
('Divine Favor', 'Evocation', 1, 'Bonus Action', 0, 10, 'TRUE', 'FALSE', 'Your prayer empowers you with divine radiance. Until the spell ends, your weapon attacks deal an extra 1d4 radiant damage on a hit.'),
('Divine Word', 'Evocation', 7, 'Bonus Action', 30, 0, 'FALSE', 'FALSE', 'You utter a divine word, imbued with the power that shaped the world at the dawn of creation. Choose any number of creatures you can see within range. Each creature that can hear you must make a Charisma saving throw. On a failed save, a creature suffers an effect based on its current hit points:

50 hit points or fewer: deafened for 1 minute
40 hit points or fewer: deafened and blinded for 10 minutes
30 hit points or fewer: blinded, deafened, and stunned for 1 hour
20 hit points or fewer: killed instantly

Regardless of its current hit points, a celestial, an elemental, a fey, or a fiend that fails its save is forced back to its plane of origin (if it isn''t there already) and can''t return to your current plane for 24 hours by any means short of a wish spell.'),
('Dominate Beast', 'Enchantment', 4, 'Action', 60, 10, 'TRUE', 'FALSE', 'You attempt to beguile a beast that you can see within range. It must succeed on a Wisdom saving throw or be charmed by you for the duration. If you or creatures that are friendly to you are fighting it, it has advantage on the saving throw.

While the beast is charmed, you have a telepathic link with it as long as the two of you are on the same plane of existence. You can use this telepathic link to issue commands to the creature while you are conscious (no action required), which it does its best to obey. You can specify a simple and general course of action, such as “Attack that creature,” “Run over there,” or “Fetch that object.” If the creature completes the order and doesn''t receive further direction from you, it defends and preserves itself to the best of its ability.

You can use your action to take total and precise control of the target. Until the end of your next turn, the creature takes only the actions you choose, and doesn''t do anything that you don''t allow it to do. During this time, you can also cause the creature to use a reaction, but this requires you to use your own reaction as well.

Each time the target takes damage, it makes a new Wisdom saving throw against the spell. If the saving throw succeeds, the spell ends.

At Higher Levels: When you cast this spell with a 5th-level spell slot, the duration is concentration, up to 10 minutes. When you use a 6th-level spell slot, the duration is concentration, up to 1 hour. When you use a spell slot of 7th level or higher, the duration is concentration, up to 8 hours'),
('Dominate Monster', 'Enchantment', 8, 'Action', 60, 600, 'TRUE', 'FALSE', 'You attempt to beguile a creature that you can see within range. It must succeed on a Wisdom saving throw or be charmed by you for the duration. If you or creatures that are friendly to you are fighting it, it has advantage on the saving throw.

While the creature is charmed, you have a telepathic link with it as long as the two of you are on the same plane of existence. You can use this telepathic link to issue commands to the creature while you are conscious (no action required), which it does its best to obey. You can specify a simple and general course of action, such as ""Attack that creature,"" ""Run over there,"" or ""Fetch that object."" If the creature completes the order and doesn''t receive further direction from you, it defends and preserves itself to the best of its ability.

You can use your action to take total and precise control of the target. Until the end of your next turn, the creature takes only the actions you choose, and doesn''t do anything that you don''t allow it to do. During this time, you can also cause the creature to use a reaction, but this requires you to use your own reaction as well.

Each time the target takes damage, it makes a new Wisdom saving throw against the spell. If the saving throw succeeds, the spell ends.

At Higher Levels: When you cast this spell with a 9th-level spell slot, the duration is concentration, up to 8 hours.'),
('Dominate Person', 'Enchantment', 5, 'Action', 60, 10, 'TRUE', 'FALSE', 'You attempt to beguile a humanoid that you can see within range. It must succeed on a Wisdom saving throw or be charmed by you for the duration. If you or creatures that are friendly to you are fighting it, it has advantage on the saving throw.

While the target is charmed, you have a telepathic link with it as long as the two of you are on the same plane of existence. You can use this telepathic link to issue commands to the creature while you are conscious (no action required), which it does its best to obey. You can specify a simple and general course of action, such as ""Attack that creature"", ""Run over there"", or ""Fetch that object"". If the creature completes the order and doesn''t receive further direction from you, it defends and preserves itself to the best of its ability.

You can use your action to take total and precise control of the target. Until the end of your next turn, the creature takes only the actions you choose, and doesn''t do anything that you don''t allow it to do. During this time you can also cause the creature to use a reaction, but this requires you to use your own reaction as well.

Each time the target takes damage, it makes a new Wisdom saving throw against the spell. If the saving throw succeeds, the spell ends.

At Higher Levels: When you cast this spell using a 6th-level spell slot, the duration is concentration, up to 10 minutes. When you use a 7th-level spell slot, the duration is concentration, up to 1 hour. When you use a spell slot of 8th level or higher, the duration is concentration, up to 8 hours.'),
('Drawmij''s Instant Summons', 'Conjuration', 6, '1 minute', 5, 0, 'FALSE', 'TRUE', 'You touch an object weighing 10 pounds or less whose longest dimension is 6 feet or less. The spell leaves an invisible mark on its surface and invisibly inscribes the name of the item on the sapphire you use as the material component. Each time you cast this spell, you must use a different sapphire.

At any time thereafter, you can use your action to speak the item''s name and crush the sapphire. The item instantly appears in your hand regardless of physical or planar distances, and the spell ends. If another creature is holding or carrying the item, crushing the sapphire doesn''t transport the item to you, but instead you learn who the creature possessing the object is and roughly where that creature is located at that moment.

Dispel Magic or a similar effect successfully applied to the sapphire ends this spell''s effect.'),
('Dream', 'Illusion', 5, '1 minute', 5, 4800, 'FALSE', 'FALSE', 'This spell shapes a creature''s dreams. Choose a creature known to you as the target of this spell. The target must be on the same plane of existence as you. Creatures that don''t sleep, such as elves, can''t be contacted by this spell. You, or a willing creature you touch, enters a trance state, acting as a messenger. While in the trance, the messenger is aware of their surroundings, but can''t take actions or move.

If the target is asleep, the messenger appears in the target''s dreams and can converse with the target as long as it remains asleep, through the duration of the spell. The messenger can also shape the environment of the dream, creating landscapes, objects, and other images. The messenger can emerge from the trance at any time, ending the effect of the spell early. The target recalls the dream perfectly upon waking. If the target is awake when you cast the spell, the messenger knows it, and can either end the trance (and the spell) or wait for the target to fall asleep, at which point the messenger appears in the target''s dreams.

You can make the messenger appear monstrous and terrifying to the target. If you do, the messenger can deliver a message of no more than ten words and then the target must make a Wisdom saving throw. On a failed save, echoes of the phantasmal monstrosity spawn a nightmare that lasts the duration of the target''s sleep and prevents the target from gaining any benefit from that rest. In addition, when the target wakes up, it takes 3d6 psychic damage.

If you have a body part, lock of hair, clipping from a nail, or similar portion of the target''s body, the target makes its saving throw with disadvantage.'),
('Druidcraft', 'Transmutation', 0, 'Action', 30, 0, 'FALSE', 'FALSE', 'Whispering to the spirits of nature, you create one of the following effects within range:

- You create a tiny, harmless sensory effect that predicts what the weather will be at your location for the next 24 hours. The effect might manifest as a golden orb for clear skies, a cloud for rain, falling snowflakes for snow, and so on. This effect persists for 1 round.
- You instantly make a flower blossom, a seed pod open, or a leaf bud bloom.
- You create an instantaneous, harmless sensory effect, such as falling leaves, a puff of wind, the sound of a small animal, or the faint odor of skunk. The effect must fit in a 5-foot cube.
- You instantly light or snuff out a candle, a torch, or a small campfire.'),
('Earthquake', 'Evocation', 8, 'Action', 500, 10, 'TRUE', 'FALSE', 'You create a seismic disturbance at a point on the ground that you can see within range. For the duration, an intense tremor rips through the ground in a 100-foot-radius circle centered on that point and shakes creatures and structures in contact with the ground in that area.

The ground in the area becomes difficult terrain. Each creature on the ground that is concentrating must make a Constitution saving throw. On a failed save, the creature''s concentration is broken.

When you cast this spell and at the end of each turn you spend concentrating on it, each creature on the ground in the area must make a Dexterity saving throw. On a failed save, the creature is knocked prone.

This spell can have additional effects depending on the terrain in the area, as determined by the DM.

Fissures: Fissures open throughout the spell''s area at the start of your next turn after you cast the spell. A total of 1d6 such fissures open in locations chosen by the DM. Each is 1d10 x 10 feet deep, 10 feet wide, and extends from one edge of the spell''s area to the opposite side. A creature standing on a spot where a fissure opens must succeed on a Dexterity saving throw or fall in. A creature that successfully saves moves with the fissure''s edge as it opens.

A fissure that opens beneath a structure causes it to automatically collapse (see below).

Structures: The tremor deals 50 bludgeoning damage to any structure in contact with the ground in the area when you cast the spell and at the start of each of your turns until the spell ends. If a structure drops to 0 hit points, it collapses and potentially damages nearby creatures. A creature within half the distance of a structure''s height must make a Dexterity saving throw. On a failed save, the creature takes 5d6 bludgeoning damage, is knocked prone, and is buried in the rubble, requiring a DC 20 Strength (Athletics) check as an action to escape. The DM can adjust the DC higher or lower, depending on the nature of the rubble. On a successful save, the creature takes half as much damage and doesn''t fall prone or become buried.'),
('Eldritch Blast', 'Evocation', 0, 'Action', 120, 0, 'FALSE', 'FALSE', 'A beam of crackling energy streaks toward a creature within range. Make a ranged spell attack against the target. On a hit, the target takes 1d10 force damage.

At Higher Levels: The spell creates more than one beam when you reach higher levels: two beams at 5th level, three beams at 11th level, and four beams at 17th level. You can direct the beams at the same target or at different ones. Make a separate attack roll for each beam.'),
('Elemental Weapon', 'Transmutation', 3, 'Action', 5, 600, 'TRUE', 'FALSE', 'A nonmagical weapon you touch becomes a magic weapon. Choose one of the following damage types: acid, cold, fire, lightning, or thunder. For the duration, the weapon has a +1 bonus to attack rolls and deals an extra 1d4 damage of the chosen type when it hits.

At Higher Levels: When you cast this spell using a spell slot of 5th or 6th level, the bonus to attack rolls increases to +2 and the extra damage increases to 2d4. When you use a spell slot of 7th level or higher, the bonus increases to +3 and the extra damage increases to 3d4.'),
('Enhance Ability', 'Transmutation', 2, 'Action', 5, 600, 'TRUE', 'FALSE', 'You touch a creature and bestow upon it a magical enhancement. Choose one of the following effects; the target gains the effect until the spell ends.

Bear''s Endurance: The target has advantage on Constitution checks. It also gains 2d6 temporary hit points, which are lost when the spell ends.
Bull''s Strength: The target has advantage on Strength checks, and their carrying capacity doubles.
Cat''s Grace: The target has advantage on Dexterity checks. It also doesn''t take damage from falling 20 feet or less if it isn''t incapacitated.
Eagle''s Splendor: The target has advantage on Charisma checks.
Fox''s Cunning: The target has advantage on Intelligence checks.
Owl''s Wisdom: The target has advantage on Wisdom checks.
At Higher Levels: When you cast this spell using a spell slot of 3rd level or higher, you can target one additional creature for each slot level above 2nd.'),
('Enlarge/Reduce', 'Transmutation', 2, 'Action', 30, 10, 'TRUE', 'FALSE', 'You cause a creature or an object you can see within range to grow larger or smaller for the duration. Choose either a creature or an object that is neither worn nor carried. If the target is unwilling, it can make a Constitution saving throw. On a success, the spell has no effect.

If the target is a creature, everything it is wearing and carrying changes size with it. Any item dropped by an affected creature returns to normal size at once.

Enlarge: The target''s size doubles in all dimensions, and its weight is multiplied by eight. This growth increases its size by one category – from Medium to Large, for example. If there isn''t enough room for the target to double its size, the creature or object attains the maximum possible size in the space available. Until the spell ends, the target also has advantage on Strength checks and Strength saving throws. The target''s weapons also grow to match its new size. While these weapons are enlarged, the target''s attack with them deal 1d4 extra damage.

Reduce: The target''s size is halved in all dimensions, and its weight is reduced to one-eighth of normal. This reduction decreases its size by one category – from Medium to Small, for example. Until the spell ends, the target also has disadvantage on Strength checks and Strength saving throws. The target''s weapons also shrink to match its new size. While these weapons are reduced, the target''s attacks with them deal 1d4 less damage (this can''t reduce the damage below 1).'),
('Ensnaring Strike', 'Conjuration', 1, 'Bonus Action', 0, 10, 'TRUE', 'FALSE', 'The next time you hit a creature with a weapon attack before this spell ends, a writhing mass of thorny vines appears at the point of impact, and the target must succeed on a Strength saving throw or be restrained by the magical vines until the spell ends. A Large or larger creature has advantage on this saving throw. If the target succeeds on the save, the vines shrivel away.

While restrained by this spell, the target takes 1d6 piercing damage at the start of each of its turns. A creature restrained by the vines or one that can touch the creature can use its action to make a Strength check against your spell save DC. On a success, the target is freed.

At Higher Levels: If you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d6 for each slot level above 1st.'),
('Entangle', 'Conjuration', 1, 'Action', 90, 10, 'TRUE', 'FALSE', 'Grasping weeds and vines sprout from the ground in a 20-foot square starting from a point within range. For the duration, these plants turn the ground in the area into difficult terrain.

A creature in the area when you cast the spell must succeed on a Strength saving throw or be restrained by the entangling plants until the spell ends. A creature restrained by the plants can use its action to make a Strength check against your spell save DC. On a success, it frees itself.

When the spell ends, the conjured plants wilt away.'),
('Enthrall', 'Enchantment', 2, 'Action', 60, 10, 'FALSE', 'FALSE', 'You weave a distracting string of words, causing creatures of your choice that you can see within range and that can hear you to make a Wisdom saving throw. Any creature that can''t be charmed succeeds on this saving throw automatically, and if you or your companions are fighting a creature, it has advantage on the save. On a failed save, the target has disadvantage on Wisdom (Perception) checks made to perceive any creature other than you until the spell ends or until the target can no longer hear you. The spell ends if you are incapacitated or can no longer speak.'),
('Etherealness', 'Transmutation', 7, 'Action', 0, 4800, 'TRUE', 'FALSE', 'You step into the border regions of the Ethereal Plane, in the area where it overlaps with your current plane. You remain in the Border Ethereal for the duration or until you use your action to dismiss the spell. During this time, you can move in any direction. If you move up or down, every foot of movement costs an extra foot. You can see and hear the plane you originated from, but everything there looks gray, and you can''t see anything more than 60 feet away.

While on the Ethereal Plane, you can only affect and be affected by other creatures on that plane. Creatures that aren''t on the Ethereal Plane can''t perceive you and can''t interact with you, unless a special ability or magic has given them the ability to do so.

You ignore all objects and effects that aren''t on the Ethereal Plane, allowing you to move through objects you perceive on the plane you originated from. When the spell ends, you immediately return to the plane you originated from in the spot you currently occupy. If you occupy the same spot as a solid object or creature when this happens, you are immediately shunted to the nearest unoccupied space that you can occupy and take force damage equal to twice the number of feet you are moved.

This spell has no effect if you cast it while you are on the Ethereal Plane or a plane that doesn''t border it, such as one of the Outer Planes.

At Higher Levels: When you cast this spell using a spell slot of 8th level or higher, you can target up to three willing creatures (including you) for each slot level above 7th. The creatures must be within 10 feet of you when you cast the spell.'),
('Evard''s Black Tentacles', 'Conjuration', 4, 'Action', 90, 10, 'TRUE', 'FALSE', 'Squirming, ebony tentacles fill a 20-foot square on ground that you can see within range. For the duration, these tentacles turn the ground in the area into difficult terrain.

When a creature enters the affected area for the first time on a turn or starts its turn there, the creature must succeed on a Dexterity saving throw or take 3d6 bludgeoning damage and be restrained by the tentacles until the spell ends. A creature that starts its turn in the area and is already restrained by the tentacles takes 3d6 bludgeoning damage.

A creature restrained by the tentacles can use its action to make a Strength or Dexterity check (its choice) against your spell save DC. On a success, it frees itself.'),
('Expeditious Retreat', 'Transmutation', 1, 'Bonus Action', 0, 100, 'TRUE', 'FALSE', 'This spell allows you to move at an incredible pace. When you cast this spell, and then as a bonus action on each of your turns until the spell ends, you can take the Dash action.'),
('Eyebite', 'Necromancy', 6, 'Action', 0, 10, 'TRUE', 'FALSE', 'For the spell''s duration, your eyes become an inky void imbued with dread power. One creature of your choice within 60 feet of you that you can see must succeed on a Wisdom saving throw or be affected by one of the following effects of your choice for the duration. On each of your turns until the spell ends, you can use your action to target another creature but can''t target a creature again if it has succeeded on a saving throw against this casting of eyebite.

- Asleep. The target falls unconscious. It wakes up if it takes any damage or if another creature uses its action to shake the sleeper awake.
- Panicked. The target is frightened of you. On each of its turns, the frightened creature must take the Dash action and move away from you by the safest and shortest available route, unless there is nowhere to move. If the target moves to a place at least 60 feet away from you where it can no longer see you, this effect ends.
- Sickened. The target has disadvantage on attack rolls and ability checks. At the end of each of its turns, it can make another Wisdom saving throw. If it succeeds, the effect ends.'),
('Fabricate', 'Transmutation', 4, '10 minutes', 120, 0, 'FALSE', 'FALSE', 'You convert raw materials into products of the same material. For example, you can fabricate a wooden bridge from a clump of trees, a rope from a patch of hemp, and clothes from flax or wool.

Choose raw materials that you can see within range. You can fabricate a Large or smaller object (contained within a 10-foot cube, or eight connected 5-foot cubes), given a sufficient quantity of raw material. If you are working with metal, stone, or another mineral substance, however, the fabricated object can be no larger than Medium (contained within a single 5-foot cube). The quality of objects made by the spell is commensurate with the quality of the raw materials.

Creatures or magic items can''t be created or transmuted by this spell. You also can''t use it to create items that ordinarily require a high degree of craftsmanship, such as jewelry, weapons, glass, or armor, unless you have proficiency with the type of artisan''s tools used to craft such objects.'),
('Faerie Fire', 'Evocation', 1, 'Action', 60, 10, 'TRUE', 'FALSE', 'Each object in a 20-foot cube within range is outlined in blue, green, or violet light (your choice).

Any creature in the area when the spell is cast is also outlined in light if it fails a Dexterity saving throw. For the duration, objects and affected creatures shed dim light in a 10-foot radius.

Any attack roll against an affected creature or object has advantage if the attacker can see it, and the affected creature or object can''t benefit from being invisible.'),
('False Life', 'Necromancy', 1, 'Action', 0, 600, 'FALSE', 'FALSE', 'Bolstering yourself with a necromantic facsimile of life, you gain 1d4 + 4 temporary hit points for the duration.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, you gain 5 additional temporary hit points for each slot level above 1st.'),
('Fear', 'Illusion', 3, 'Action', 30, 10, 'TRUE', 'FALSE', 'You project a phantasmal image of a creature''s worst fears. Each creature in a 30-foot cone must succeed on a Wisdom saving throw or drop whatever it is holding and become frightened for the duration.

While frightened by this spell, a creature must take the Dash action and move away from you by the safest available route on each of its turns, unless there is nowhere to move. If the creature ends its turn in a location where it doesn''t have line of sight to you, the creature can make a Wisdom saving throw. On a successful save, the spell ends for that creature.'),
('Feather Fall', 'Transmutation', 1, 'Reaction', 60, 10, 'FALSE', 'FALSE', 'Choose up to five falling creatures within range. A falling creature''s rate of descent slows to 60 feet per round until the spell ends. If the creature lands before the spell ends, it takes no falling damage and can land on its feet, and the spell ends for that creature.'),
('Feeblemind', 'Enchantment', 8, 'Action', 150, 0, 'FALSE', 'FALSE', 'You blast the mind of a creature that you can see within range, attempting to shatter its intellect and personality. The target takes 4d6 psychic damage and must make an Intelligence saving throw.

On a failed save, the creature''s Intelligence and Charisma scores become 1. The creature can''t cast spells, activate magic items, understand language, or communicate in any intelligible way. The creature can, however, identify its friends, follow them, and even protect them.

At the end of every 30 days, the creature can repeat its saving throw against this spell. If it succeeds on its saving throw, the spell ends. The spell can also be ended by Greater Restoration, Heal, or Wish.'),
('Feign Death', 'Necromancy', 3, 'Action', 5, 600, 'FALSE', 'TRUE', 'You touch a willing creature and put it into a cataleptic state that is indistinguishable from death.

For the spell''s duration, or until you use an action to touch the target and dismiss the spell, the target appears dead to all outward inspection and to spells used to determine the target''s status. The target is blinded and incapacitated, and its speed drops to 0. The target has resistance to all damage except psychic damage. If the target is diseased or poisoned when you cast the spell, or becomes diseased or poisoned while under the spell''s effect, the disease and poison have no effect until the spell ends.'),
('Find Familiar', 'Conjuration', 1, '1 hour', 10, 0, 'FALSE', 'TRUE', 'You gain the service of a familiar, a spirit that takes an animal form you choose: bat, cat, crab, frog (toad), hawk, lizard, octopus, owl, poisonous snake, fish (quipper), rat, raven, sea horse, spider, or weasel. Appearing in an unoccupied space within range, the familiar has the statistics of the chosen form, though it is a celestial, fey, or fiend (your choice) instead of a beast.

Your familiar acts independently of you, but it always obeys your commands. In combat, it rolls its own initiative and acts on its own turn. A familiar can''t attack, but it can take other actions as normal.

When the familiar drops to 0 hit points, it disappears, leaving behind no physical form. It reappears after you cast this spell again. As an action, you can temporarily dismiss your familiar to a pocket dimension. Alternatively, you can dismiss it forever. As an action while it is temporarily dismissed, you can cause it to reappear in any unoccupied space within 30 feet of you. Whenever the familiar drops to 0 hit points or disappears into the pocket dimension, it leaves behind in its space anything it was wearing or carrying.

While your familiar is within 100 feet of you, you can communicate with it telepathically. Additionally, as an action, you can see through your familiar''s eyes and hear what it hears until the start of your next turn, gaining the benefits of any special senses that the familiar has. During this time, you are deaf and blind with regard to your own senses.

You can''t have more than one familiar at a time. If you cast this spell while you already have a familiar, you instead cause it to adopt a new form. Choose one of the forms from the above list. Your familiar transforms into the chosen creature.

Finally, when you cast a spell with a range of touch, your familiar can deliver the spell as if it had cast the spell. Your familiar must be within 100 feet of you, and it must use its reaction to deliver the spell when you cast it. If the spell requires an attack roll, you use your attack modifier for the roll.'),
('Find Steed', 'Conjuration', 2, '10 minutes', 30, 0, 'FALSE', 'FALSE', 'You summon a spirit that assumes the form of an unusually intelligent, strong, and loyal steed, creating a long-lasting bond with it. Appearing in an unoccupied space within range, the steed takes on a form that you choose: a warhorse, a pony, a camel, an elk, or a mastiff. (Your DM might allow other animals to be summoned as steeds.) The steed has the statistics of the chosen form, though it is a celestial, fey, or fiend (your choice) instead of its normal type. Additionally, if your steed has an Intelligence of 5 or less, its Intelligence becomes 6, and it gains the ability to understand one language of your choice that you speak.

Your steed serves you as a mount, both in combat and out, and you have an instinctive bond with it that allows you to fight as a seamless unit. While mounted on your steed, you can make any spell you cast that targets only you also target your steed.

When the steed drops to 0 hit points, it disappears, leaving behind no physical form. You can also dismiss your steed at any time as an action, causing it to disappear. In either case, casting this spell again summons the same steed, restored to its hit point maximum.

While your steed is within 1 mile of you, you can communicate with each other telepathically. You can''t have more than one steed bonded by this spell at a time. As an action, you can release the steed from its bond at any time, causing it to disappear.'),
('Find the Path', 'Divination', 6, '1 minute', 0, 14400, 'TRUE', 'FALSE', 'This spell allows you to find the shortest, most direct physical route to a specific fixed location that you are familiar with on the same plane of existence. If you name a destination on another plan of existence, a destination that moves (such as a mobile fortress), or a destination that isn''t specific (such as ""a green dragon''s lair”), the spell fails.

For the duration, as long as you are on the same plane of existence as the destination, you know how far it is and in what direction it lies. While you are traveling there, whenever you are presented with a choice of paths along the way, you automatically determine which path is the shortest and most direct route (but not necessarily the safest route) to the destination.'),
('Find Traps', 'Divination', 2, 'Action', 120, 0, 'FALSE', 'FALSE', 'You sense the presence of any trap within range that is within line of sight.

A trap, for the purpose of this spell, includes anything that would inflict a sudden or unexpected effect you consider harmful or undesirable, which was specifically intended as such by its creator. Thus, the spell would sense an area affected by the alarm spell, a glyph of warding, or a mechanical pit trap, but it would not reveal a natural weakness in the floor, an unstable ceiling, or a hidden sinkhole.

This spell merely reveals that a trap is present. You don''t learn the location of each trap, but you do learn the general nature of the danger posed by a trap you sense.'),
('Finger of Death', 'Necromancy', 7, 'Action', 60, 0, 'FALSE', 'FALSE', 'You send negative energy coursing through a creature that you can see within range, causing it searing pain. The target must make a Constitution saving throw. It takes 7d8 + 30 necrotic damage on a failed save, or half as much damage on a successful one.

A humanoid killed by this spell rises at the start of your next turn as a zombie that is permanently under your command, following your verbal orders to the best of its ability.'),
('Fireball', 'Evocation', 3, 'Action', 150, 0, 'FALSE', 'FALSE', 'A bright streak flashes from your pointing finger to a point you choose within range then blossoms with a low roar into an explosion of flame. Each creature in a 20-foot radius must make a Dexterity saving throw. A target takes 8d6 fire damage on a failed save, or half as much damage on a successful one. The fire spreads around corners. It ignites flammable objects in the area that aren''t being worn or carried.

At Higher Levels: When you cast this spell using a spell slot of 4th level or higher, the damage increases by 1d6 for each slot level above 3rd.'),
('Fire Bolt', 'Evocation', 0, 'Action', 120, 0, 'FALSE', 'FALSE', 'You hurl a mote of fire at a creature or object within range. Make a ranged spell attack against the target. On a hit, the target takes 1d10 fire damage. A flammable object hit by this spell ignites if it isn''t being worn or carried.

At Higher Levels: This spell''s damage increases by 1d10 when you reach 5th level (2d10), 11th level (3d10), and 17th level (4d10).'),
('Fire Shield', 'Evocation', 4, 'Action', 0, 100, 'FALSE', 'FALSE', 'Thin and wispy flames wreathe your body for the duration, shedding bright light in a 10-foot radius and dim light for an additional 10 feet. You can end the spell early by using an action to dismiss it.

The flames provide you with a warm shield or a chill shield, as you choose. The warm shield grants you resistance to cold damage, and the chill shield grants you resistance to fire damage.

In addition, whenever a creature within 5 feet of you hits you with a melee attack, the shield erupts with flame. The attacker takes 2d8 fire damage from a warm shield, or 2d8 cold damage from a cold shield.'),
('Fire Storm', 'Evocation', 7, 'Action', 150, 0, 'FALSE', 'FALSE', 'A storm made up of sheets of roaring flame appears in a location you choose within range. The area of the storm consists of up to ten 10-foot cubes, which you can arrange as you wish. Each cube must have at least one face adjacent to the face of another cube. Each creature in the area must make Dexterity saving throw. It takes 7d10 fire damage on a failed save, or half as much damage on a successful one.

The fire damages objects in the area and ignites flammable objects that aren''t being worn or carried. If you choose, plant life in the area is unaffected by this spell.'),
('Flame Blade', 'Evocation', 2, 'Bonus Action', 0, 100, 'TRUE', 'FALSE', 'You evoke a fiery blade in your free hand. The blade is similar in size and shape to a scimitar, and it lasts for the duration. If you let go of the blade, it disappears, but you can evoke the blade again as a bonus action.

You can use your action to make a melee spell attack with the fiery blade. On a hit, the target takes 3d6 fire damage. The flaming blade sheds bright light in a 10-foot radius and dim light for an additional 10 feet.

At Higher Levels: When you cast this spell using a spell slot of 4th level or higher, the damage increases by 1d6 for every two slot levels above 2nd.'),
('Flame Strike', 'Evocation', 5, 'Action', 60, 0, 'FALSE', 'FALSE', 'A vertical column of divine fire roars down from the heavens in a location you specify. Each creature in a 10-foot radius, 40-foot-high cylinder centered on a point within range must make a Dexterity saving throw. A creature takes 4d6 fire damage and 4d6 radiant damage on a failed save, or half as much damage on a successful one.

At Higher Levels: When you cast this spell using a spell slot of 6th level or higher, the fire damage or the radiant damage (your choice) increases by 1d6 for each slot level above 5th.'),
('Flaming Sphere', 'Conjuration', 2, 'Action', 60, 10, 'TRUE', 'FALSE', 'A 5-foot-diameter sphere of fire appears in an unoccupied space of your choice within range and lasts for the duration. Any creature that ends its turn within 5 feet of the sphere must make a Dexterity saving throw. The creature takes 2d6 fire damage on a failed save, or half as much damage on a successful one.

As a bonus action, you can move the sphere up to 30 feet. If you ram the sphere into a creature, that creature must make the saving throw against the sphere''s damage, and the sphere stops moving this turn.

When you move the sphere, you can direct it over barriers up to 5 feet tall and jump it across pits up to 10 feet wide. The sphere ignites flammable objects not being worn or carried, and it sheds bright light in a 20-foot radius and dim light for an additional 20 feet.

At Higher Levels: When you cast this spell using a spell slot of 3rd level or higher, the damage increases by 1d6 for each slot level above 2nd.'),
('Flesh to Stone', 'Transmutation', 6, 'Action', 60, 10, 'TRUE', 'FALSE', 'You attempt to turn one creature that you can see within range into stone. If the target''s body is made of flesh, the creature must make a Constitution saving throw. On a failed save, it is restrained as its flesh begins to harden. On a successful save, the creature isn''t affected.

A creature restrained by this spell must make another Constitution saving throw at the end of each of its turns. If it successfully saves against this spell three times, the spell ends. If it fails saves three times, it is turned to stone and subjected to the petrified condition for the duration. The successes and failures don''t need to be consecutive; keep track of both until the target collects three of a kind.

If the creature is physically broken while petrified, it suffers from similar deformities if it reverts to its original state. If you maintain your concentration on this spell for the entire possible duration, the creature is turned to stone until the effect is removed.'),
('Fly', 'Transmutation', 3, 'Action', 5, 100, 'TRUE', 'FALSE', 'You touch a willing creature. The target gains a flying speed of 60 feet for the duration. When the spell ends, the target falls if it is still aloft, unless it can stop the fall.

At Higher Levels: When you cast this spell using a spell slot of 4th level or higher, you can target one additional creature for each slot level above 3rd.'),
('Fog Cloud', 'Conjuration', 1, 'Action', 120, 600, 'TRUE', 'FALSE', 'You create a 20-foot-radius sphere of fog centered on a point within range. The sphere spreads around corners, and its area is heavily obscured. It lasts for the duration or until a wind of moderate or greater speed (at least 10 miles per hour) disperses it.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, the radius of the fog increases by 20 feet for each slot level above 1st.'),
('Forbiddance', 'Abjuration', 6, '10 minutes', 5, 14400, 'FALSE', 'TRUE', 'You create a ward against magical travel that protects up to 40,000 square feet of floor space to a height of 30 feet above the floor. For the duration, creatures can''t teleport into the area or use portals, such as those created by the gate spell, to enter the area. The spell proofs the area against planar travel, and therefore prevents creatures from accessing the area by way of the Astral Plane, Ethereal Plane, Feywild, Shadowfell, or the plane shift spell.

In addition, the spell damages types of creatures that you choose when you cast it. Choose one or more of the following: celestials, elementals, fey, fiends, and undead. When a chosen creature enters the spell''s area for the first time on a turn or starts its turn there, the creature takes 5d10 radiant or necrotic damage (your choice when you cast this spell).

When you cast this spell, you can designate a password. A creature that speaks the password as it enters the area takes no damage from the spell.

This spell''s area can''t overlap with the area of another forbiddance spell. If you cast forbiddance every day for 30 days in the same location, the spell lasts until it is dispelled, and the material components are consumed on the last casting.'),
('Forcecage', 'Evocation', 7, 'Action', 100, 600, 'FALSE', 'FALSE', 'An immobile, invisible, cube-shaped prison composed of magical force springs into existence around an area you choose within range. The prison can be a cage or a solid box as you choose.

A prison in the shape of a cage can be up to 20 feet on a side and is made from 1/2-inch diameter bars spaced 1/2 inch apart.

A prison in the shape of a box can be up to 10 feet on a side, creating a solid barrier that prevents any matter from passing through it and blocking any spells cast into or out of the area.

When you cast the spell, any creature that is completely inside the cage''s area is trapped. Creatures only partially within the area, or those too large to fit inside the area, are pushed away from the center of the area until they are completely outside the area.

A creature inside the cage can''t leave it by nonmagical means. If the creature tries to use teleportation or interplanar travel to leave the cage, it must first make a Charisma saving throw. On a success, the creature can use that magic to exit the cage. On a failure, the creature can''t exit the cage and wastes the use of the spell or effect. The cage also extends into the Ethereal Plane, blocking ethereal travel.

This spell can''t be dispelled by dispel magic.'),
('Foresight', 'Divination', 9, '1 minute', 5, 4800, 'FALSE', 'FALSE', 'You touch a willing creature and bestow a limited ability to see into the immediate future. For the duration, the target can''t be surprised and has advantage on attack rolls, ability checks, and saving throws. Additionally, other creatures have disadvantage on attack rolls against the target for the duration. This spell immediately ends if you cast it again before its duration ends.'),
('Freedom of Movement', 'Abjuration', 4, 'Action', 5, 600, 'FALSE', 'FALSE', 'You touch a willing creature. For the duration, the target''s movement is unaffected by difficult terrain, and spells and other magical effects can neither reduce the target''s speed nor cause the target to be paralyzed or restrained.

The target can also spend 5 feet of movement to automatically escape from nonmagical restraints, such as manacles or a creature that has it grappled. Finally, being underwater imposes no penalties on the target''s movement or attacks.'),
('Friends', 'Enchantment', 0, 'Action', 0, 10, 'TRUE', 'FALSE', 'For the duration, you have advantage on all Charisma checks directed at one creature of your choice that isn''t hostile toward you. When the spell ends, the creature realizes that you used magic to influence its mood and becomes hostile toward you. A creature prone to violence might attack you. Another creature might seek retribution in other ways (at the DM''s discretion), depending on the nature of your interaction with it.'),
('Gaseous Form', 'Transmutation', 3, 'Action', 5, 600, 'TRUE', 'FALSE', 'You transform a willing creature you touch, along with everything it''s wearing and carrying, into a misty cloud for the duration. The spell ends if the creature drops to 0 hit points. An incorporeal creature isn''t affected.

While in this form, the target''s only method of movement is a flying speed of 10 feet. The target can enter and occupy the space of another creature. The target has resistance to nonmagical damage, and it has advantage on Strength, Dexterity, and Constitution saving throws. The target can pass through small holes, narrow openings, and even mere cracks, though it treats liquids as though they were solid surfaces. The target can''t fall and remains hovering in the air even when stunned or otherwise incapacitated.

While in the form of a misty cloud, the target can''t talk or manipulate objects, and any objects it was carrying or holding can''t be dropped, used, or otherwise interacted with. The target can''t attack or cast spells.'),
('Gate', 'Conjuration', 9, 'Action', 60, 10, 'TRUE', 'FALSE', 'You conjure a portal linking an unoccupied space you can see within range to a precise location on a different plane of existence. The portal is a circular opening, which you can make 5 to 20 feet in diameter. You can orient the portal in any direction you choose. The portal lasts for the duration.

The portal has a front and a back on each plane where it appears. Travel through the portal is possible only by moving through its front. Anything that does so is instantly transported to the other plane, appearing in the unoccupied space nearest to the portal.

Deities and other planar rulers can prevent portals created by this spell from opening in their presence or anywhere within their domains.

When you cast this spell, you can speak the name of a specific creature (a pseudonym, title, or nickname doesn''t work). If that creature is on a plane other than the one you are on, the portal opens in the named creature''s immediate vicinity and draws the creature through it to the nearest unoccupied space on your side of the portal. You gain no special power over the creature, and it is free to act as the DM deems appropriate. It might leave, attack you, or help you.'),
('Geas', 'Enchantment', 5, '1 minute', 60, 432000, 'FALSE', 'FALSE', 'You place a magical command on a creature that you can see within range, forcing it to carry out some service or refrain from some action or course of activity as you decide.

If the creature can understand you, it must succeed on a Wisdom saving throw or become charmed by you for the duration. While the creature is charmed by you, it takes 5d10 psychic damage each time it acts in a manner directly counter to your instructions, but no more than once each day. A creature that can''t understand you is unaffected by the spell.

You can issue any command you choose, short of an activity that would result in certain death. Should you issue a suicidal command, the spell ends. You can end the spell early by using an action to dismiss it. A Remove Curse, Greater Restoration, or Wish spell also ends it.

At Higher Levels: When you cast this spell using a spell slot of 7th or 8th level, the duration is 1 year. When you cast this spell using a spell slot of 9th level, the spell lasts until it is ended by one of the spells mentioned above.'),
('Gentle Repose', 'Necromancy', 2, 'Action', 5, 144000, 'FALSE', 'TRUE', 'You touch a corpse or other remains. For the duration, the target is protected from decay and can''t become undead.

The spell also effectively extends the time limit on raising the target from the dead, since days spent under the influence of this spell don''t count against the time limit of spells such as raise dead.'),
('Giant Insect', 'Transmutation', 4, 'Action', 30, 100, 'TRUE', 'FALSE', 'You transform up to ten centipedes, three spiders, five wasps, or one scorpion within range into giant versions of their natural forms for the duration. A centipede becomes a giant centipede, a spider becaomes a giant spider, a wasp becomes a giant wasp, and a scorpion becomes a giant scorpion.

Each creature obeys your verbal commands, and in combat, they act on your turn each round. The DM has the statistics for these creatures and resolves their actions and movement.

A creature remains in its giant size for the duration, until it drops to 0 hit points, or until you use an action to dismiss the effect on it.

The DM might allow you to choose different targets. For example, if you transform a bee, its giant version might have the same statistics as a giant wasp.'),
('Glibness', 'Transmutation', 8, 'Action', 0, 600, 'FALSE', 'FALSE', 'Until the spell ends, when you make a Charisma check, you can replace the number you roll with a 15. Additionally, no matter what you say, magic that would determine if you are telling the truth indicates that you are being truthful.'),
('Globe of Invulnerability', 'Abjuration', 6, 'Action', 0, 10, 'TRUE', 'FALSE', 'An immobile, faintly shimmering barrier springs into existence in a 10-foot radius around you and remains for the duration.

Any spell of 5th level or lower cast from outside the barrier can''t affect creatures or objects within it, even if the spell is cast using a higher level spell slot. Such a spell can target creatures and objects within the barrier, but the spell has no effect on them. Similarly, the area within the barrier is excluded from the areas affected by such spells.

At Higher Levels: When you cast this spell using a spell slot of 7th level or higher, the barrier blocks spells of one level higher for each slot level above 6th.'),
('Glyph of Warding', 'Abjuration', 3, '1 hour', 5, 0, 'FALSE', 'FALSE', 'When you cast this spell, you inscribe a glyph that creates a magical effect triggered by other creatures, either upon a surface (such as a table or a section of floor or wall) or within an object that can be closed (such as a book, a scroll, or a treasure chest) to conceal the glyph. The glyph can cover an area no larger than 10 feet in diameter. If the surface or object is moved more than 10 feet from where you cast this spell, the glyph is broken, and the spell ends without being triggered.

The glyph is nearly invisible and requires a successful Intelligence (Investigation) check against your spell save DC to be found.

You decide what triggers the glyph when you cast the spell. For glyphs inscribed on a surface, the most typical triggers include touching or standing on the glyph, removing another object covering the glyph, approaching within a certain distance of the glyph, or manipulating the object on which the glyph is inscribed. For glyphs inscribed within an object, the most common triggers include opening that object, approaching within a certain distance of the object, or seeing or reading the glyph. Once a glyph is triggered, this spell ends.

You can further refine the trigger so the spell activates only under certain circumstances or according to physical characteristics (such as height or weight), creature kind (for example, the ward could be set to affect aberrations or drow), or alignment. You can also set conditions for creatures that don''t trigger the glyph, such as those who say a certain password.

When you inscribe the glyph, choose explosive runes or a spell glyph.

Explosive Runes: When triggered, the glyph erupts with magical energy in a 20-foot-radius sphere centered on the glyph. The sphere spreads around corners. Each creature in the area must make a Dexterity saving throw. A creature takes 5d8 acid, cold, fire, lightning, or thunder damage on a failed saving throw (your choice when you create the glyph), or half as much damage on a successful one.

Spell Glyph: You can store a prepared spell of 3rd level or lower in the glyph by casting it as part of creating the glyph. The spell must target a single creature or an area. The spell being stored has no immediate effect when cast in this way. When the glyph is triggered, the stored spell is cast. If the spell has a target, it targets the creature that triggered the glyph. If the spell affects an area, the area is centered on that creature. If the spell summons hostile creatures or creates harmful objects or traps, they appear as close as possible to the intruder and attack it. If the spell requires concentration, it lasts until the end of its full duration.

At Higher Levels: When you cast this spell using a spell slot of 4th level or higher, the damage of an explosive runes glyph increases by 1d8 for each slot level above 3rd. If you create a spell glyph, you can store any spell of up to the same level as the slot you use for the glyph of warding.'),
('Goodberry', 'Transmutation', 1, 'Action', 5, 0, 'FALSE', 'FALSE', 'Up to ten berries appear in your hand and are infused with magic for the duration. A creature can use its action to eat one berry. Eating a berry restores 1 hit point, and the berry provides enough nourishment to sustain a creature for one day.

The berries lose their potency if they have not been consumed within 24 hours of the casting of this spell.'),
('Grasping Vine', 'Conjuration', 4, 'Bonus Action', 30, 10, 'TRUE', 'FALSE', 'You conjure a vine that sprouts from the ground in an unoccupied space of your choice that you can see within range. When you cast this spell, you can direct the vine to lash out at a creature within 30 feet of it that you can see. That creature must succeed on a Dexterity saving throw or be pulled 20 feet directly toward the vine.

Until the spell ends, you can direct the vine to lash out at the same creature or another one as a bonus action on each of your turns.'),
('Grease', 'Conjuration', 1, 'Action', 60, 10, 'FALSE', 'FALSE', 'Slick grease covers the ground in a 10-foot square centered on a point within range and turns it into difficult terrain for the duration.

When the grease appears, each creature standing in its area must succeed on a Dexterity saving throw or fall prone. A creature that enters the area or ends its turn there must also succeed on a Dexterity saving throw or fall prone.'),
('Greater Invisibility', 'Illusion', 4, 'Action', 5, 10, 'TRUE', 'FALSE', 'You or a creature you touch becomes invisible until the spell ends. Anything the target is wearing or carrying is invisible as long as it is on the target''s person.'),
('Greater Restoration', 'Abjuration', 5, 'Action', 5, 0, 'FALSE', 'FALSE', 'You imbue a creature you touch with positive energy to undo a debilitating effect. You can reduce the target''s exhaustion level by one, or end one of the following effects on the target:

- One effect that charmed or petrified the target
- One curse, including the target''s attunement to a cursed magic item
- Any reduction to one of the target''s ability scores
- One effect reducing the target''s hit point maximum'),
('Guardian of Faith', 'Conjuration', 4, 'Action', 30, 4800, 'FALSE', 'FALSE', 'A Large spectral guardian appears and hovers for the duration in an unoccupied space of your choice that you can see within range. The guardian occupies that space and is indistinct except for a gleaming sword and shield emblazoned with the symbol of your deity.

Any creature hostile to you that moves to a space within 10 feet of the guardian for the first time on a turn must succeed on a Dexterity saving throw. The creature takes 20 radiant damage on a failed save, or half as much damage on a successful one. The guardian vanishes when it has dealt a total of 60 damage.'),
('Guards and Wards', 'Abjuration', 6, '10 minutes', 5, 14400, 'FALSE', 'FALSE', 'You create a ward that protects up to 2,500 square feet of floor space (an area 50 feet square, or one hundred 5-foot squares or twenty-five 10-foot squares). The warded area can be up to 20 feet tall, and shaped as you desire. You can ward several stories of a stronghold by dividing the area among them, as long as you can walk into each contiguous area while you are casting the spell.

When you cast this spell, you can specify individuals that are unaffected by any or all of the effects that you choose. You can also specify a password that, when spoken aloud, makes the speaker immune to these effects.

Guards and Wards creates the following effects within the warded area:

- Corridors. Fog fills all the warded corridors, making them heavily obscured. In addition, at each intersection or branching passage offering a choice of direction, there is a 50 percent chance that a creature other than you will believe it is going in the opposite direction from the one it chooses.
- Doors. All doors in the warded area are magically locked, as if sealed by an Arcane Lock spell. In addition, you can cover up to ten doors with an illusion (equivalent to the illusory object function of the Minor Illusion spell) to make them appear as plain sections of wall.
- Stairs. Webs fill all stairs in the warded area from top to bottom, as the Web spell. These strands regrow in 10 minutes if they are burned or torn away while Guards and Wards lasts.
- Other Spell Effect. You can place your choice of one of the following magical effects within the warded area of the stronghold:
Place Dancing Lights in four corridors. You can designate a simple program that the lights repeat as long as Guards and Wards lasts.
Place Magic Mouth in two locations.
Place Stinking Cloud in two locations. The vapors appear in the places you designate; they return within 10 minutes if dispersed by wind while Guards and Wards lasts.
Place a constant Gust of Wind in one corridor or room.
Place a Suggestion in one location. You select an area of up to 5 feet square, and any creature that enters or passes through the area receives the Suggestion mentally.

The whole warded area radiates magic. A Dispel Magic cast on a specific effect, if successful, removes only that effect. You can create a permanently Guarded and Warded structure by casting this spell there every day for one year.'),
('Guidance', 'Divination', 0, 'Action', 5, 10, 'TRUE', 'FALSE', 'You touch one willing creature. Once before the spell ends, the target can roll a d4 and add the number rolled to one ability check of its choice. It can roll the die before or after making the ability check. The spell then ends.'),
('Guiding Bolt', 'Evocation', 1, 'Action', 120, 1, 'FALSE', 'FALSE', 'A flash of light streaks toward a creature of your choice within range. Make a ranged spell attack against the target. On a hit, the target takes 4d6 radiant damage, and the next attack roll made against this target before the end of your next turn has advantage, thanks to the mystical dim light glittering on the target until then.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d6 for each slot level above 1st.'),
('Gust of Wind', 'Evocation', 2, 'Action', 60, 10, 'TRUE', 'FALSE', 'A line of strong wind 60 feet long and 10 feet wide blasts from you in a direction you choose for the spell''s duration. Each creature that starts its turn in the line must succeed on a Strength saving throw or be pushed 15 feet away from you in a direction following the line.

Any creature in the line must spend 2 feet of movement for every 1 foot it moves when moving closer to you.

The gust disperses gas or vapor, and it extinguishes candles, torches, and similar unprotected flames in the area. It causes protected flames, such as those of lanterns, to dance wildly and has a 50 percent chance to extinguish them.

As a bonus action on each of your turns before the spell ends, you can change the direction in which the line blasts from you.'),
('Hail of Thorns', 'Conjuration', 1, 'Bonus Action', 0, 10, 'TRUE', 'FALSE', 'The next time you hit a creature with a ranged weapon attack before the spell ends, this spell creates a rain of thorns that sprouts from your ranged weapon or ammunition. In addition to the normal effect of the attack, the target of the attack and each creature within 5 feet of it must make a Dexterity saving throw. A creature takes 1d10 piercing damage on a failed save, or half as much damage on a successful one.

At Higher Levels: If you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d10 for each slot level above 1st (to a maximum of 6d10).'),
('Hallow', 'Evocation', 5, '24 hours', 5, 0, 'FALSE', 'FALSE', 'You touch a point and infuse an area around it with holy (or unholy) power. The area can have a radius up to 60 feet, and the spell fails if the radius includes an area already under the effect a hallow spell. The affected area is subject to the following effects.

First, celestials, elementals, fey, fiends, and undead can''t enter the area, nor can such creatures charm, frighten, or possess creatures within it. Any creature charmed, frightened, or possessed by such a creature is no longer charmed, frightened, or possessed upon entering the area. You can exclude one or more of those types of creatures from this effect.

Second, you can bind an extra effect to the area. Choose the effect from the following list, or choose an effect offered by the DM. Some of these effects apply to creatures in the area; you can designate whether the effect applies to all creatures, creatures that follow a specific deity or leader, or creatures of a specific sort, such as orcs or trolls. When a creature that would be affected enters the spell''s area for the first time on a turn or starts its turn there, it can make a Charisma saving throw. On a success, the creature ignores the extra effect until it leaves the area.

- Courage. Affected creatures can''t be frightened while in the area.
- Darkness. Darkness fills the area. Normal light, as well as magical light created by spells of a lower level than the slot you used to cast this spell, can''t illuminate the area.
- Daylight. Bright light fills the area. Magical darkness created by spells of a lower level than the slot you used to cast this spell can''t extinguish the light.
- Energy Protection. Affected creatures in the area have resistance to one damage type of your choice, except for bludgeoning, piercing, or slashing.
- Energy Vulnerability. Affected creatures in the area have vulnerability to one damage type of your choice, except for bludgeoning, piercing, or slashing.
- Everlasting Rest. Dead bodies interred in the area can''t be turned into undead.
- Extradimensional Interference. Affected creatures can''t move or travel using teleportation or by extradimensional or interplanar means.
- Fear. Affected creatures are frightened while in the area.
- Silence. No sound can emanate from within the area, and no sound can reach into it.
- Tongues. Affected creatures can communicate with any other creature in the area, even if they don''t share a common language.'),
('Hallucinatory Terrain', 'Illusion', 4, '10 minutes', 300, 14400, 'FALSE', 'FALSE', 'You make natural terrain in a 150-foot cube in range look, sound, and smell like some other sort of natural terrain. Thus, open fields or a road can be made to resemble a swamp, hill, crevasse, or some other difficult or impassable terrain. A pond can be made to seem like a grassy meadow, a precipice like a gentle slope, or a rock-strewn gully like a wide and smooth road. Manufactured structures, equipment, and creatures within the area aren''t changed in appearance.

The tactile characteristics of the terrain are unchanged, so creatures entering the area are likely to see through the illusion. If the difference isn''t obvious by touch, a creature carefully examining the illusion can attempt an Intelligence (Investigation) check against your spell save DC to disbelieve it. A creature who discerns the illusion for what it is, sees it as a vague image superimposed on the terrain.'),
('Harm', 'Necromancy', 6, 'Action', 60, 0, 'FALSE', 'FALSE', 'You unleash a virulent disease on a creature that you can see within range. The target must make a Constitution saving throw. On a failed save, it takes 14d6 necrotic damage, or half as much damage on a successful save. The damage can''t reduce the target''s hit points below 1. If the target fails the saving throw, its hit point maximum is reduced for 1 hour by an amount equal to the necrotic damage it took. Any effect that removes a disease allows a creature''s hit point maximum to return to normal before that time passes.'),
('Haste', 'Transmutation', 3, 'Action', 30, 10, 'TRUE', 'FALSE', 'Choose a willing creature that you can see within range. Until the spell ends, the target''s speed is doubled, it gains a +2 bonus to AC, it has advantage on Dexterity saving throws, and it gains an additional action on each of its turns. That action can be used only to take the Attack (one weapon attack only), Dash, Disengage, Hide, or Use an Object action.

When the spell ends, the target can''t move or take actions until after its next turn, as a wave of lethargy sweeps over it.'),
('Heal', 'Evocation', 6, 'Action', 60, 0, 'FALSE', 'FALSE', 'Choose a creature that you can see within range. A surge of positive energy washes through the creature, causing it to regain 70 hit points. The spell also ends blindness, deafness, and any diseases affecting the target. This spell has no effect on constructs or undead.

At Higher Levels: When you cast this spell using a spell slot of 7th level or higher, the amount of healing increases by 10 for each slot level above 6th.'),
('Healing Word', 'Evocation', 1, 'Bonus Action', 60, 0, 'FALSE', 'FALSE', 'A creature of your choice that you can see within range regains hit points equal to 1d4 + your spellcasting ability modifier. This spell has no effect on undead or constructs.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, the healing increases by 1d4 for each slot level above 1st.'),
('Heat Metal', 'Transmutation', 2, 'Action', 60, 10, 'TRUE', 'FALSE', 'Choose a manufactured metal object, such as a metal weapon or a suit of heavy or medium metal armor, that you can see within range. You cause the object to glow red-hot. Any creature in physical contact with the object takes 2d8 fire damage when you cast the spell. Until the spell ends, you can use a bonus action on each of your subsequent turns to cause this damage again.

If a creature is holding or wearing the object and takes the damage from it, the creature must succeed on a Constitution saving throw or drop the object if it can. If it doesn''t drop the object, it has disadvantage on attack rolls and ability checks until the start of your next turn.

At Higher Levels: When you cast this spell using a spell slot of 3rd level or higher, the damage increases by 1d8 for each slot level above 2nd.'),
('Hellish Rebuke', 'Evocation', 1, 'Reaction', 60, 0, 'FALSE', 'FALSE', 'You point your finger, and the creature that damaged you is momentarily surrounded by hellish flames. The creature must make a Dexterity saving throw. It takes 2d10 fire damage on a failed save, or half as much damage on a successful one.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d10 for each slot level above 1st.'),
('Heroes'' Feast', 'Conjuration', 6, '10 minutes', 30, 0, 'FALSE', 'FALSE', 'You bring forth a great feast, including magnificent food and drink. The feast takes 1 hour to consume and disappears at the end of that time, and the beneficial effects don''t set in until this hour is over. Up to twelve creatures can partake of the feast.

A creature that partakes of the feast gains several benefits. The creature is cured of all diseases and poison, becomes immune to poison and being frightened, and makes all Wisdom saving throws with advantage. Its hit point maximum also increases by 2d10, and it gains the same number of hit points. These benefits last for 24 hours.'),
('Heroism', 'Enchantment', 1, 'Action', 5, 10, 'TRUE', 'FALSE', 'A willing creature you touch is imbued with bravery. Until the spell ends, the creature is immune to being frightened and gains temporary hit points equal to your spellcasting ability modifier at the start of each of its turns. When the spell ends, the target loses any remaining temporary hit points from this spell.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, you can target one additional creature for each slot level above 1st.'),
('Hex', 'Enchantment', 1, 'Bonus Action', 90, 600, 'TRUE', 'FALSE', 'You place a curse on a creature that you can see within range. Until the spell ends, you deal an extra 1d6 necrotic damage to the target whenever you hit it with an attack. Also, choose one ability when you cast the spell. The target has disadvantage on ability checks made with the chosen ability.

If the target drops to 0 hit points before this spell ends, you can use a bonus action on a subsequent turn of yours to curse a new creature.

A Remove Curse cast on the target ends this spell early.

At Higher Levels: When you cast this spell using a spell slot of 3rd or 4th level, you can maintain your concentration on the spell for up to 8 hours. When you use a spell slot of 5th level or higher, you can maintain your concentration on the spell for up to 24 hours.'),
('Hold Monster', 'Enchantment', 5, 'Action', 90, 10, 'TRUE', 'FALSE', 'Choose a creature that you can see within range. The target must succeed on a Wisdom saving throw or be paralyzed for the duration. This spell has no effect on undead. At the end of each of its turns, the target can make another Wisdom saving throw. On a success, the spell ends on the target.

At Higher Levels: When you cast this spell using a spell slot of 6th level or higher, you can target one additional creature for each slot level above 5th. The creatures must be within 30 feet of each other when you target them.'),
('Hold Person', 'Enchantment', 2, 'Action', 60, 10, 'TRUE', 'FALSE', 'Choose a humanoid that you can see within range. The target must succeed on a Wisdom saving throw or be paralyzed for the duration. At the end of each of its turns, the target can make another Wisdom saving throw. On a success, the spell ends on the target.

At Higher Levels: When you cast this spell using a spell slot of 3rd level or higher, you can target one additional humanoid for each slot level above 2nd. The humanoids must be within 30 feet of each other when you target them.'),
('Holy Aura', 'Abjuration', 8, 'Action', 0, 10, 'TRUE', 'FALSE', 'Divine light washes out from you and coalesces in a soft radiance in a 30-foot radius around you. Creatures of your choice in that radius when you cast this spell shed dim light in a 5-foot radius and have advantage on all saving throws, and other creatures have disadvantage on attack rolls against them until the spell ends. In addition, when a fiend or an undead hits an affected creature with a melee attack, the aura flashes with brilliant light. The attacker must succeed on a Constitution saving throw or be blinded until the spell ends.'),
('Hunger Of Hadar', 'Conjuration', 3, 'Action', 150, 10, 'TRUE', 'FALSE', 'You open a gateway to the dark between the stars, a region infested with unknown horrors. A 20-foot-radius sphere of blackness and bitter cold appears, centered on a point within range and lasting for the duration. This void is filled with a cacophony of soft whispers and slurping noises that can be heard up to 30 feet away. No light, magical or otherwise, can illuminate the area, and creatures fully within the area are blinded.

The void creates a warp in the fabric of space, and the area is difficult terrain. Any creature that starts its turn in the area takes 2d6 cold damage. Any creature that ends its turn in the area must succeed on a Dexterity saving throw or take 2d6 acid damage as milky, otherworldly tentacles rub against it.'),
('Hunter''s Mark', 'Divination', 1, 'Bonus Action', 90, 600, 'TRUE', 'FALSE', 'You choose a creature you can see within range and mystically mark it as your quarry. Until the spell ends, you deal an extra 1d6 damage to the target whenever you hit it with a weapon attack, and you have advantage on any Wisdom (Perception) or Wisdom (Survival) check you make to find it.

If the target drops to 0 hit points before this spell ends, you can use a bonus action on a subsequent turn of yours to mark a new creature.

At Higher Levels: When you cast this spell using a spell slot of 3rd or 4th level, you can maintain your concentration on the spell for up to 8 hours. When you use a spell slot of 5th level or higher, you can maintain your concentration on the spell for up to 24 hours.'),
('Hypnotic Pattern', 'Illusion', 3, 'Action', 120, 10, 'TRUE', 'FALSE', 'You create a twisting pattern of colors that weaves through the air inside a 30-foot cube within range. The pattern appears for a moment and vanishes. Each creature in the area who sees the pattern must make a Wisdom saving throw. On a failed save, the creature becomes charmed for the duration. While charmed by this spell, the creature is incapacitated and has a speed of 0.

The spell ends for an affected creature if it takes any damage or if someone else uses an action to shake the creature out of its stupor.'),
('Ice Storm', 'Evocation', 4, 'Action', 300, 0, 'FALSE', 'FALSE', 'A hail of rock-hard ice pounds to the ground in a 20-foot-radius, 40-foot-high cylinder centered on a point within range. Each creature in the cylinder must make a Dexterity saving throw. A creature takes 2d8 bludgeoning damage and 4d6 cold damage on a failed save, or half as much damage on a successful one.

Hailstones turn the storm''s area of effect into difficult terrain until the end of your next turn.

At Higher Levels: When you cast this spell using a spell slot of 5th level or higher, the bludgeoning damage increases by 1d8 for each slot level above 4th.'),
('Identify', 'Divination', 1, '1 minute', 5, 0, 'FALSE', 'TRUE', 'You choose one object that you must touch throughout the casting of the spell. If it is a magic item or some other magic-imbued object, you learn its properties and how to use them, whether it requires attunement to use, and how many charges it has, if any. You learn whether any spells are affecting the item and what they are. If the item was created by a spell, you learn which spell created it.

If you instead touch a creature throughout the casting, you learn what spells, if any, are currently affecting it.'),
('Illusory Script', 'Illusion', 1, '1 minute', 5, 144000, 'FALSE', 'TRUE', 'You write on parchment, paper, or some other suitable writing material and imbue it with a potent illusion that lasts for the duration.

To you and any creatures you designate when you cast the spell, the writing appears normal, written in your hand, and conveys whatever meaning you intended when you wrote the text. To all others, the writing appears as if it were written in an unknown or magical script that is unintelligible. Alternatively, you can cause the writing to appear to be an entirely different message, written in a different hand and language, though the language must be one you know.

Should the spell be dispelled, the original script and the illusion both disappear. A creature with truesight can read the hidden message.'),
('Imprisonment', 'Abjuration', 9, '1 minute', 30, 0, 'FALSE', 'FALSE', 'You create a magical restraint to hold a creature that you can see within range. The target must succeed on a Wisdom saving throw or be bound by the spell; if it succeeds, it is immune to this spell if you cast it again. While affected by this spell, the creature doesn''t need to breathe, eat, or drink, and it doesn''t age. Divination spells can''t locate or perceive the target.

During the casting of the spell, in any of its versions, you can specify a condition that will cause the spell to end and release the target. The condition can be as specific or as elaborate as you choose, but the DM must agree that the condition is reasonable and has a likelihood of coming to pass. The conditions can be based on a creature''s name, identity, or deity but otherwise must be based on observable actions or qualities and not based on intangibles such as level, class, or hit points.

A Dispel Magic spell can end the spell only if it is cast as a 9th-level spell, targeting either the prison or the special component used to create it.

You can use a particular special component to create only one prison at a time. If you cast the spell again using the same component, the target of the first casting is immediately freed from its binding.

When you cast the spell, you choose one of the following forms of imprisonment:

- Burial. The target is entombed far beneath the earth in a sphere of magical force that is just large enough to contain the target. Nothing can pass through the sphere, nor can any creature teleport or use planar travel to get into or out of it.
The special component for this version of the spell is a small mithral orb.
- Chaining. Heavy chains, firmly rooted in the ground, hold the target in place. The target is restrained until the spell ends, and it can''t move or be moved by any means until then.
The special component for this version of the spell is a fine chain of precious metal.
- Hedged Prison. The spell transports the target into a tiny demiplane that is warded against teleportation and planar travel. The demiplane can be a labyrinth, a cage, a tower, or any similar confined structure or area of your choice.
The special component for this version of the spell is a miniature representation of the prison made from jade.
- Minimus Containment. The target shrinks to a height of 1 inch and is imprisoned inside a gemstone or similar object. Light can pass through the gemstone normally (allowing the target to see out and other creatures to see in), but nothing else can pass through, even by means of teleportation or planar travel. The gemstone can''t be cut or broken while the spell remains in effect.
The special component for this version of the spell is a large, transparent gemstone, such as a corundum, diamond, or ruby.
- Slumber. The target falls asleep and can''t be awoken.
The special component for this version of the spell consists of rare soporific herbs.'),
('Incendiary Cloud', 'Conjuration', 8, 'Action', 150, 10, 'TRUE', 'FALSE', 'A swirling cloud of smoke shot through with white-hot embers appears in a 20-foot-radius sphere centered on a point within range. The cloud spreads around corners and is heavily obscured. It lasts for the duration or until a wind of moderate or greater speed (at least 10 miles per hour) disperses it.

When the cloud appears, each creature in it must make a Dexterity saving throw. A creature takes 10d8 fire damage on a failed save, or half as much damage on a successful one. A creature must also make this saving throw when it enters the spell''s area for the first time on a turn or ends its turn there.

The cloud moves 10 feet directly away from you in a direction that you choose at the start of each of your turns.'),
('Inflict Wounds', 'Necromancy', 1, 'Action', 5, 0, 'FALSE', 'FALSE', 'Make a melee spell attack against a creature you can reach. On a hit, the target takes 3d10 necrotic damage.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d10 for each slot level above 1st.'),
('Insect Plague', 'Conjuration', 5, 'Action', 300, 100, 'TRUE', 'FALSE', 'Swarming, biting locusts fill a 20-foot-radius sphere centered on a point you choose within range. The sphere spreads around corners. The sphere remains for the duration, and its area is lightly obscured. The sphere''s area is difficult terrain.

When the area appears, each creature in it must make a Constitution saving throw. A creature takes 4d10 piercing damage on a failed save, or half as much damage on a successful one. A creature must also make this saving throw when it enters the spell''s area for the first time on a turn or ends its turn there.

At Higher Levels: When you cast this spell using a spell slot of 6th level or higher, the damage increases by 1d10 for each slot level above 5th.'),
('Invisibility', 'Illusion', 2, 'Action', 5, 600, 'TRUE', 'FALSE', 'A creature you touch becomes invisible until the spell ends. Anything the target is wearing or carrying is invisible as long as it is on the target''s person. The spell ends for a target that attacks or casts a spell.

At Higher Levels: When you cast this spell using a spell slot of 3rd level or higher, you can target one additional creature for each slot level above 2nd.'),
('Jump', 'Transmutation', 1, 'Action', 5, 10, 'FALSE', 'FALSE', 'You touch a creature. The creature''s jump distance is tripled until the spell ends.'),
('Knock', 'Transmutation', 2, 'Action', 60, 0, 'FALSE', 'FALSE', 'Choose an object that you can see within range. The object can be a door, a box, a chest, a set of manacles, a padlock, or another object that contains a mundane or magical means that prevents access.

A target that is held shut by a mundane lock or that is stuck or barred becomes unlocked, unstuck, or unbarred. If the object has multiple locks, only one of them is unlocked.

If you choose a target that is held shut with Arcane Lock, that spell is suppressed for 10 minutes, during which time the target can be opened and shut normally.

When you cast the spell, a loud knock, audible from as far away as 300 feet, emanates from the target object.'),
('Legend Lore', 'Divination', 5, '10 minutes', 0, 0, 'FALSE', 'FALSE', 'Name or describe a person, place, or object. The spell brings to your mind a brief summary of the significant lore about the thing you named. The lore might consist of current tales, forgotten stories, or even secret lore that has never been widely known. If the thing you named isn''t of legendary importance, you gain no information. The more information you already have about the thing, the more precise and detailed the information you receive is.

The information you learn is accurate but might be couched in figurative language. For example, if you have a mysterious magic axe on hand, the spell might yield this information: Woe to the evildoer whose hand touches the axe, for even the haft slices the hand of the evil ones. Only a true Child of Stone, lover and beloved of Moradin, may awaken the true powers of the axe, and only with the sacred word Rudnogg on the lips.'),
('Leomund''s Secret Chest', 'Conjuration', 4, 'Action', 5, 0, 'FALSE', 'FALSE', 'You hide a chest, and all its contents, on the Ethereal Plane. You must touch the chest and the miniature replica that serves as a material component for the spell. The chest can contain up to 12 cubic feet of nonliving material (3 feet by 2 feet by 2 feet).

While the chest remains on the Ethereal Plane, you can use an action and touch the replica to recall the chest. It appears in an unoccupied space on the ground within 5 feet of you. You can send the chest back to the Ethereal Plane by using an action and touching both the chest and the replica.

After 60 days, there is a cumulative 5 percent chance per day that the spell''s effect ends. This effect ends if you cast this spell again, if the smaller replica chest is destroyed, or if you choose to end the spell as an action. If the spell ends and the larger chest is on the Ethereal Plane, it is irretrievably lost.'),
('Leomund''s Tiny Hut', 'Evocation', 3, '1 minute', 0, 4800, 'FALSE', 'TRUE', 'A 10-foot-radius immobile dome of force springs into existence around and above you and remains stationary for the duration. The spell ends if you leave its area.

Nine creatures of Medium size or smaller can fit inside the dome with you. The spell fails if its area includes a larger creature or more than nine creatures. Creatures and objects within the dome when you cast this spell can move through it freely. All other creatures and objects are barred from passing through it. Spells and other magical effects can''t extend through the dome or be cast through it. The atmosphere inside the space is comfortable and dry, regardless of the weather outside.

Until the spell ends, you can command the interior to become dimly lit or dark. The dome is opaque from the outside, of any color you choose, but it is transparent from the inside.'),
('Lesser Restoration', 'Abjuration', 2, 'Action', 5, 0, 'FALSE', 'FALSE', 'You touch a creature and can end either one disease or one condition afflicting it. The condition can be blinded, deafened, paralyzed, or poisoned.'),
('Levitate', 'Transmutation', 2, 'Action', 60, 100, 'TRUE', 'FALSE', 'One creature or loose object of your choice that you can see within range rises vertically, up to 20 feet, and remains suspended there for the duration. The spell can levitate a target that weighs up to 500 pounds. An unwilling creature that succeeds on a Constitution saving throw is unaffected.

The target can move only by pushing or pulling against a fixed object or surface within reach (such as a wall or a ceiling), which allows it to move as if it were climbing. You can change the target''s altitude by up to 20 feet in either direction on your turn. If you are the target, you can move up or down as part of your move. Otherwise, you can use your action to move the target, which must remain within the spell''s range.

When the spell ends, the target floats gently to the ground if it is still aloft.'),
('Light', 'Evocation', 0, 'Action', 5, 600, 'FALSE', 'FALSE', 'You touch one object that is no larger than 10 feet in any dimension. Until the spell ends, the object sheds bright light in a 20-foot radius and dim light for an additional 20 feet. The light can be colored as you like. Completely covering the object with something opaque blocks the light. The spell ends if you cast it again or dismiss it as an action.

If you target an object held or worn by a hostile creature, that creature must succeed on a Dexterity saving throw to avoid the spell.'),
('Lightning Arrow', 'Transmutation', 3, 'Bonus Action', 0, 10, 'TRUE', 'FALSE', 'The next time you make a ranged weapon attack during the spell''s duration, the weapon''s ammunition, or the weapon itself if it''s a thrown weapon, transforms into a bolt of lightning. Make the attack roll as normal. The target takes 4d8 lightning damage on a hit, or half as much damage on a miss, instead of the weapon''s normal damage.

Whether you hit or miss, each creature within 10 feet of the target must make a Dexterity saving throw. Each of these creatures takes 2d8 lightning damage on a failed save, or half as much damage on a successful one.

The piece of ammunition or weapon then returns to its normal form.

At Higher Levels: When you cast this spell using a spell slot of 4th level or higher, the damage for both effects of the spell increases by 1d8 for each slot level above 3rd.'),
('Lightning Bolt', 'Evocation', 3, 'Action', 100, 0, 'FALSE', 'FALSE', 'A stroke of lightning forming a line of 100 feet long and 5 feet wide blasts out from you in a direction you choose. Each creature in the line must make a Dexterity saving throw. A creature takes 8d6 lightning damage on a failed save, or half as much damage on a successful one.

The lightning ignites flammable objects in the area that aren''t being worn or carried.

At Higher Levels: When you cast this spell using a spell slot of 4th level or higher, the damage increases by 1d6 for each slot level above 3rd.'),
('Locate Animals or Plants', 'Divination', 2, 'Action', 0, 0, 'FALSE', 'TRUE', 'Describe or name a specific kind of beast or plant. Concentrating on the voice of nature in your surroundings, you learn the direction and distance to the closest creature or plant of that kind within 5 miles, if any are present.'),
('Locate Creature', 'Divination', 4, 'Action', 0, 600, 'TRUE', 'FALSE', 'Describe or name a creature that is familiar to you. You sense the direction to the creature''s location, as long as that creature is within 1,000 feet of you. If the creature is moving, you know the direction of its movement.

The spell can locate a specific creature known to you, or the nearest creature of a specific kind (such as a human or a unicorn), so long as you have seen such a creature up close – within 30 feet – at least once. If the creature you described or named is in a different form, such as being under the effects of a polymorph spell, this spell doesn''t locate the creature.

This spell can''t locate a creature if running water at least 10 feet wide blocks a direct path between you and the creature.'),
('Locate Object', 'Divination', 2, 'Action', 0, 100, 'TRUE', 'FALSE', 'Describe or name an object that is familiar to you. You sense the direction to the object''s location, as long as that object is within 1,000 feet of you. If the object is in motion, you know the direction of its movement.

The spell can locate a specific object known to you, as long as you have seen it up close – within 30 feet – at least once. Alternatively, the spell can locate the nearest object of a particular kind, such as a certain kind of apparel, jewelry, furniture, tool, or weapon.

This spell can''t locate an object if any thickness of lead, even a thin sheet, blocks a direct path between you and the object.'),
('Longstrider', 'Transmutation', 1, 'Action', 5, 600, 'FALSE', 'FALSE', 'You touch a creature. The target''s speed increases by 10 feet until the spell ends.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, you can target one additional creature for each slot level above 1st.'),
('Mage Armor', 'Abjuration', 1, 'Action', 5, 4800, 'FALSE', 'FALSE', 'You touch a willing creature who isn''t wearing armor, and a protective magical force surrounds it until the spell ends. The target''s base AC becomes 13 + its Dexterity modifier. The spell ends if the target dons armor or if you dismiss the spell as an action.'),
('Mage Hand', 'Conjuration', 0, 'Action', 30, 10, 'FALSE', 'FALSE', 'A spectral, floating hand appears at a point you choose within range. The hand lasts for the duration or until you dismiss it as an action. The hand vanishes if it is ever more than 30 feet away from you or if you cast this spell again.

You can use your action to control the hand. You can use the hand to manipulate an object, open an unlocked door or container, stow or retrieve an item from an open container, or pour the contents out of a vial. You can move the hand up to 30 feet each time you use it.

The hand can''t attack, activate magical items, or carry more than 10 pounds.'),
('Magic Circle', 'Abjuration', 3, '1 minute', 10, 600, 'FALSE', 'FALSE', 'You create a 10-foot-radius, 20-foot-tall cylinder of magical energy centered on a point on the ground that you can see within range. Glowing runes appear wherever the cylinder intersects with the floor or other surface.

Choose one or more of the following types of creatures: celestials, elementals, fey, fiends, or undead. The circle affects a creature of the chosen type in the following ways:

The creature can''t willingly enter the cylinder by nonmagical means. If the creature tries to use teleportation or interplanar travel to do so, it must first succeed on a Charisma saving throw.
The creature has disadvantage on attack rolls against targets within the cylinder.
Targets within the cylinder can''t be charmed, frightened, or possessed by the creature.
When you cast this spell, you can elect to cause its magic to operate in the reverse direction, preventing a creature of the specified type from leaving the cylinder and protecting targets outside it.

At Higher Levels: When you cast this spell using a spell slot of 4th level or higher, the duration increases by 1 hour for each slot level above 3rd.'),
('Magic Jar', 'Necromancy', 6, '1 minute', 0, 0, 'FALSE', 'FALSE', 'Your body falls into a catatonic state as your soul leaves it and enters the container you used for the spell''s material component. While your soul inhabits the container, you are aware of your surroundings as if you were in the container''s space. You can''t move or use reactions. The only action you can take is to project your soul up to 100 feet out of the container, either returning to your living body (and ending the spell) or attempting to possess a humanoids body.

You can attempt to possess any humanoid within 100 feet of you that you can see (creatures warded by a protection from evil and good or magic circle spells can''t be possessed). The target must make a Charisma saving throw. On a failure, your soul moves into the target''s body, and the target''s soul becomes trapped in the container. On a success, the target resists your efforts to possess it, and you can''t attempt to possess it again for 24 hours.

Once you possess a creature''s body, you control it. Your game statistics are replaced by the statistics of the creature though you retain your alignment and your Intelligence, Wisdom, and Charisma scores. You retain the benefit of your own class features. If the target has any class levels, you can''t use any of its class features.

Meanwhile, the possessed creature''s soul can perceive from the container using its own senses, but it can''t move or take actions at all.

While possessing a body, you can use your action to return from the host body to the container if it is within 100 feet of you, returning the host creature''s soul to its body. If the host body dies while you''re in it, the creature dies, and you must make a Charisma saving throw against your own spellcasting DC. On a success, you return to the container if it is within 100 feet of you. Otherwise, you die.

If the container is destroyed or the spell ends, your soul immediately returns to your body. If your body is more than 100 feet away from you, or if your body is dead when you attempt to return to it, you die. If another creature''s soul is in the container when it is destroyed, the creature''s soul returns to its body if the body is alive and within 100 feet. Otherwise, that creature dies.

When the spell ends, the container is destroyed.'),
('Magic Missile', 'Evocation', 1, 'Action', 120, 0, 'FALSE', 'FALSE', 'You create three glowing darts of magical force. Each dart hits a creature of your choice that you can see within range. A dart deals 1d4 + 1 force damage to its target. The darts all strike simultaneously and you can direct them to hit one creature or several.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, the spell creates one more dart for each slot level above 1st.'),
('Magic Mouth', 'Illusion', 2, '1 minute', 30, 0, 'FALSE', 'TRUE', 'You implant a message within an object in range, a message that is uttered when a trigger condition is met. Choose an object that you can see and that isn''t being worn or carried by another creature. Then speak the message, which must be 25 words or less, though it can be delivered over as long as 10 minutes. Finally, determine the circumstance that will trigger the spell to deliver your message.

When that circumstance occurs, a magical mouth appears on the object and recites the message in your voice and at the same volume you spoke. If the object you chose has a mouth or something that looks like a mouth (for example, the mouth of a statue), the magical mouth appears there so that words appear to come from the object''s mouth. When you cast this spell, you can have the spell end after it delivers its message, or it can remain and repeats its message whenever the trigger occurs.

The triggering circumstance can be as general or as detailed as you like, though it must be based on visual or audible conditions that occur within 30 feet of the object. For example, you could instruct the mouth to speak when any creature moves within 30 feet of the object or when a silver bell rings within 30 feet of it.'),
('Magic Weapon', 'Transmutation', 2, 'Bonus Action', 5, 600, 'TRUE', 'FALSE', 'You touch a nonmagical weapon. Until the spell ends, that weapon becomes a magic weapon with a +1 bonus to attack rolls and damage rolls.

At Higher Levels: When you cast this spell using a spell slot of 4th level or higher, the bonus increases to +2. When you use a spell slot of 6th level or higher, the bonus increases to +3.'),
('Major Image', 'Illusion', 3, 'Action', 120, 100, 'TRUE', 'FALSE', 'You create the image of an object, a creature, or some other visible phenomenon that is no larger than a 20-foot cube. The image appears at a spot that you can see within range and lasts for the duration. It seems completely real, including sounds, smells, and temperature appropriate to the thing depicted. You can''t create sufficient heat or cold to cause damage, a sound loud enough to deal thunder damage or deafen a creature, or a smell that might sicken a creature (like a troglodyte''s stench).

As long as you are within range of the illusion, you can use your action to cause the image to move to any other spot within range. As the image changes location, you can alter its appearance so that its movements appear natural for the image. For example, if you create an image of a creature and move it, you can alter the image so that it appears to be walking. Similarly, you can cause the illusion to make different sounds at different times, even making it carry on a conversation, for example.

Physical interaction with the image reveals it to be an illusion, because things can pass through it. A creature that uses its action to examine the image can determine that it is an illusion with a successful Intelligence (Investigation) check against your spell save DC. If a creature discerns the illusion for what it is, the creature can see through the image, and its other sensory qualities become faint to the creature.

At Higher Levels: When you cast this spell using a spell slot of 6th level or higher, the spell lasts until dispelled, without requiring your concentration. In this form it is sometimes considered a different spell, known as Permanent Image.'),
('Mass Cure Wounds', 'Evocation', 5, 'Action', 60, 0, 'FALSE', 'FALSE', 'A wave of healing energy washes out from a point of your choice within range. Choose up to six creatures in a 30-foot-radius sphere centered on that point. Each target regains hit points equal to 3d8 + your spellcasting ability modifier. This spell has no effect on undead or constructs.

At Higher Levels: When you cast this spell using a spell slot of 6th level or higher, the healing increases by 1d8 for each slot level above 5th.'),
('Mass Heal', 'Evocation', 9, 'Action', 60, 0, 'FALSE', 'FALSE', 'A flood of healing energy flows from you into injured creatures around you. You restore up to 700 hit points, divided as you choose among any number of creatures that you can see within range. Creatures healed by this spell are also cured of all diseases and any effect making them blinded or deafened. This spell has no effect on undead or constructs.'),
('Mass Healing Word', 'Evocation', 3, 'Bonus Action', 60, 0, 'FALSE', 'FALSE', 'As you call out words of restoration, up to six creatures of your choice that you can see within range regain hit points equal to 1d4 + your spellcasting ability modifier. This spell has no effect on undead or constructs.

At Higher Levels: When you cast this spell using a spell slot of 4th level or higher, the healing increases by 1d4 for each slot level above 3rd.'),
('Mass Suggestion', 'Enchantment', 6, 'Action', 60, 14400, 'FALSE', 'FALSE', 'You suggest a course of activity (limited to a sentence or two) and magically influence up to twelve creatures of your choice that you can see within range and that can hear and understand you. Creatures that can''t be charmed are immune to this effect. The suggestion must be worded in such a manner as to make the course of action sound reasonable. Asking the creature to stab itself, throw itself onto a spear, immolate itself, or do some other obviously harmful act automatically negates the effect of the spell.

Each target must make a Wisdom saving throw. On a failed save, it pursues the course of action you described to the best of its ability. The suggested course of action can continue for the entire duration. If the suggested activity can be completed in a shorter time, the spell ends when the subject finishes what it was asked to do.

You can also specify conditions that will trigger a special activity during the duration. For example, you might suggest that a group of soldiers give all their money to the first beggar they meet. If the condition isn''t met before the spell ends, the activity isn''t performed.

If you or any of your companions damage a creature affected by this spell, the spell ends for that creature.

At Higher Levels: When you cast this spell using a 7th-level spell slot, the duration is 10 days. When you use an 8th-level spell slot, the duration is 30 days. When you use a 9th-level spell slot, the duration is a year and a day.'),
('Maze', 'Conjuration', 8, 'Action', 60, 100, 'TRUE', 'FALSE', 'You banish a creature that you can see within range into a labyrinthine demiplane. The target remains there for the duration or until it escapes the maze.

The target can use its action to attempt to escape. When it does so, it makes a DC 20 Intelligence check. If it succeeds, it escapes, and the spell ends (a minotaur or goristro demon automatically succeeds).

When the spell ends, the target reappears in the space it left or, if that space is occupied, in the nearest unoccupied space.'),
('Meld into Stone', 'Transmutation', 3, 'Action', 5, 4800, 'FALSE', 'TRUE', 'You step into a stone object or surface large enough to fully contain your body, melding yourself and all the equipment you carry with the stone for the duration. Using your movement, you step into the stone at a point you can touch. Nothing of your presence remains visible or otherwise detectable by nonmagical senses.

While merged with the stone, you can''t see what occurs outside it, and any Wisdom (Perception) checks you make to hear sounds outside it are made with disadvantage. You remain aware of the passage of time and can cast spells on yourself while merged in the stone. You can use your movement to leave the stone where you entered it, which ends the spell. You otherwise can''t move.

Minor physical damage to the stone doesn''t harm you, but its partial destruction or a change in its shape (to the extent that you no longer fit within it) expels you and deals 6d6 bludgeoning damage to you. The stone''s complete destruction (or transmutation into a different substance) expels you and deals 50 bludgeoning damage to you. If expelled, you fall prone in an unoccupied space closest to where you first entered.'),
('Melf''s Acid Arrow', 'Evocation', 2, 'Action', 90, 0, 'FALSE', 'FALSE', 'A shimmering green arrow streaks toward a target within range and bursts in a spray of acid. Make a ranged spell attack against the target. On a hit, the target takes 4d4 acid damage immediately and 2d4 acid damage at the end of its next turn. On a miss, the arrow splashes the target with acid for half as much of the initial damage and no damage at the end of its next turn.

At Higher Levels: When you cast this spell using a spell slot of 3rd level or higher, the damage (both initial and later) increases by 1d4 for each slot level above 2nd.'),
('Mending', 'Transmutation', 0, '1 minute', 5, 0, 'FALSE', 'FALSE', 'This spell repairs a single break or tear in an object you touch, such as a broken chain link, two halves of a broken key, a torn cloak, or a leaking wineskin. As long as the break or tear is no larger than 1 foot in any dimension, you mend it, leaving no trace of the former damage.

This spell can physically repair a magic item or construct, but the spell can''t restore magic to such an object.'),
('Message', 'Transmutation', 0, 'Action', 120, 1, 'FALSE', 'FALSE', 'You point your finger toward a creature within range and whisper a message. The target (and only the target) hears the message and can reply in a whisper that only you can hear.

You can cast this spell through solid objects if you are familiar with the target and know it is beyond the barrier. Magical silence, 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood blocks the spell. The spell doesn''t have to follow a straight line and can travel freely around corners or through openings.'),
('Meteor Swarm', 'Evocation', 9, 'Action', 5280, 0, 'FALSE', 'FALSE', 'Blazing orbs of fire plummet to the ground at four different points you can see within range. Each creature in a 40-foot-radius sphere centered on each point you choose must make a Dexterity saving throw. The sphere spreads around corners. A creature takes 20d6 fire damage and 20d6 bludgeoning damage on a failed save, or half as much damage on a successful one. A creature in the area of more than one fiery burst is affected only once.

The spell damages objects in the area and ignites flammable objects that aren''t being worn or carried.'),
('Mind Blank', 'Abjuration', 8, 'Action', 5, 14400, 'FALSE', 'FALSE', 'Until the spell ends, one willing creature you touch is immune to psychic damage, any effect that would sense its emotions or read its thoughts, divination spells, and the charmed condition. The spell even foils wish spells and spells or effects of similar power used to affect the target''s mind or to gain information about the target.'),
('Minor Illusion', 'Illusion', 0, 'Action', 30, 10, 'FALSE', 'FALSE', 'You create a sound or an image of an object within range that lasts for the duration. The illusion also ends if you dismiss it as an action or cast this spell again.

If you create a sound, its volume can range from a whisper to a scream. It can be your voice, someone else''s voice, a lion''s roar, a beating of drums, or any other sound you choose. The sound continues unabated throughout the duration, or you can make discrete sounds at different times before the spell ends.

If you create an image of an object—such as a chair, muddy footprints, or a small chest—it must be no larger than a 5-foot cube. The image can''t create sound, light, smell, or any other sensory effect. Physical interaction with the image reveals it to be an illusion, because things can pass through it.

If a creature uses its action to examine the sound or image, the creature can determine that it is an illusion with a successful Intelligence (Investigation) check against your spell save DC. If a creature discerns the illusion for what it is, the illusion becomes faint to the creature.'),
('Mirage Arcane', 'Illusion', 7, '10 minutes', 5280, 144000, 'FALSE', 'FALSE', 'You make terrain in an area up to 1 mile square look, sound, smell, and even feel like some other sort of terrain. The terrain''s general shape remains the same, however. Open fields or a road could be made to resemble a swamp, hill, crevasse, or some other difficult or impassable terrain. A pond can be made to seem like a grassy meadow, a precipice like a gentle slope, or a rock-strewn gully like a wide and smooth road.

Similarly, you can alter the appearance of structures, or add them where none are present. The spell doesn''t disguise, conceal, or add creatures.

The illusion includes audible, visual, tactile, and olfactory elements, so it can turn clear ground into difficult terrain (or vice versa) or otherwise impede movement through the area. Any piece of the illusory terrain (such as a rock or stick) that is removed from the spell''s area disappears immediately.

Creatures with truesight can see through the illusion to the terrain''s true form; however, all other elements of the illusion remain, so while the creature is aware of the illusion''s presence, the creature can still physically interact with the illusion.'),
('Mirror Image', 'Illusion', 2, 'Action', 0, 10, 'FALSE', 'FALSE', 'Three illusory duplicates of yourself appear in your space. Until the spell ends, the duplicates move with you and mimic your actions, shifting position so it''s impossible to track which image is real. You can use your action to dismiss the illusory duplicates.

Each time a creature targets you with an attack during the spell''s duration, roll a d20 to determine whether the attack instead targets one of your duplicates.

If you have three duplicates, you must roll a 6 or higher to change the attack''s target to a duplicate. With two duplicates, you must roll an 8 or higher. With one duplicate, you must roll an 11 or higher.

A duplicate''s AC equals 10 + your Dexterity modifier. If an attack hits a duplicate, the duplicate is destroyed. A duplicate can be destroyed only by an attack that hits it. It ignores all other damage and effects. The spell ends when all three duplicates are destroyed.

A creature is unaffected by this spell if it can''t see, if it relies on senses other than sight, such as blindsight, or if it can perceive illusions as false, as with truesight.'),
('Mislead', 'Illusion', 5, 'Action', 0, 600, 'TRUE', 'FALSE', 'You become invisible at the same time that an illusory double of you appears where you are standing. The double lasts for the duration, but the invisibility ends if you attack or cast a spell.

You can use your action to move your illusory double up to twice your speed and make it gesture, speak, and behave in whatever way you choose.

You can see through its eyes and hear through its ears as if you were located where it is. On each of your turns as a bonus action, you can switch from using its senses to using your own, or back again. While you are using its senses, you are blinded and deafened in regard to your own surroundings.'),
('Misty Step', 'Conjuration', 2, 'Bonus Action', 0, 0, 'FALSE', 'FALSE', 'Briefly surrounded by silvery mist, you teleport up to 30 feet to an unoccupied space that you can see.'),
('Modify Memory', 'Enchantment', 5, 'Action', 30, 10, 'TRUE', 'FALSE', 'You attempt to reshape another creature''s memories. One creature that you can see must make a Wisdom saving throw. If you are fighting the creature, it has advantage on the saving throw. On a failed save, the target becomes charmed by you for the duration. The charmed target is incapacitated and unaware of its surroundings, though it can still hear you. If it takes any damage or is targeted by another spell, this spell ends, and none of the target''s memories are modified.

While this charm lasts, you can affect the target''s memory of an event that it experienced within the last 24 hours and that lasted no more than 10 minutes. You can permanently eliminate all memory of the event, allow the target to recall the event with perfect clarity and exacting detail, change its memory of the details of the event, or create a memory of some other event.

You must speak to the target to describe how its memories are affected, and it must be able to understand your language for the modified memories to take root. Its mind fills in any gaps in the details of your description. If the spell ends before you have finished describing the modified memories, the creature''s memory isn''t altered. Otherwise, the modified memories take hold when the spell ends.

A modified memory doesn''t necessarily affect how a creature behaves, particularly if the memory contradicts the creature''s natural inclinations, alignment, or beliefs. An illogical modified memory, such as implanting a memory of how much the creature enjoyed dousing itself in acid, is dismissed, perhaps as a bad dream. The DM might deem a modified memory too nonsensical to affect a creature in a significant manner.

A Remove Curse or Greater Restoration spell cast on the target restores the creature''s true memory.

At Higher Levels: If you cast this spell using a spell slot of 6th level or higher, you can alter the target''s memories of an event that took place up to 7 days ago (6th level), 30 days ago (7th level), 1 year ago (8th level), or any time in the creature''s past (9th level).'),
('Moonbeam', 'Evocation', 2, 'Action', 120, 10, 'TRUE', 'FALSE', 'A silvery beam of pale light shines down in a 5-foot radius, 40-foot-high cylinder centered on a point within range. Until the spell ends, dim light fills the cylinder.

When a creature enters the spell''s area for the first time on a turn or starts its turn there, it is engulfed in ghostly flames that cause searing pain, and it must make a Constitution saving throw. It takes 2d10 radiant damage on a failed save, or half as much damage on a successful one.

A shapechanger makes its saving throw with disadvantage. If it fails, it also instantly reverts to its original form and can''t assume a different form until it leaves the spell''s light.

On each of your turns after you cast this spell, you can use an action to move the beam up to 60 feet in any direction.

At Higher Levels: When you cast this spell using a spell slot of 3rd level or higher, the damage increases by 1d10 for each slot level above 2nd.'),
('Mordenkainen''s Faithful Hound', 'Conjuration', 4, 'Action', 30, 4800, 'FALSE', 'FALSE', 'You conjure a phantom watchdog in an unoccupied space that you can see within range, where it remains for the duration, until you dismiss it as an action, or until you move more than 100 feet away from it.

The hound is invisible to all creatures except you and can''t be harmed. When a Small or larger creature comes within 30 feet of it without first speaking the password that you specify when you cast this spell, the hound starts barking loudly. The hound sees invisible creatures and can see into the Ethereal Plane. It ignores illusions.

At the start of each of your turns, the hound attempts to bite one creature within 5 feet of it that is hostile to you. The hound''s attack bonus is equal to your spellcasting ability modifier + your proficiency bonus. On a hit, it deals 4d8 piercing damage.'),
('Mordenkainen''s Magnificent Mansion', 'Conjuration', 7, '1 minute', 300, 14400, 'FALSE', 'FALSE', 'You conjure an extradimensional dwelling in range that lasts for the duration. You choose where its one entrance is located. The entrance shimmers faintly and is 5 feet wide and 10 feet tall. You and any creature you designate when you cast the spell can enter the extradimensional dwelling as long as the portal remains open. You can open or close the portal if you are within 30 feet of it. While closed, the portal is invisible.

Beyond the portal is a magnificent foyer with numerous chambers beyond. The atmosphere is clean, fresh, and warm.

You can create any floor plan you like, but the space can''t exceed 50 cubes, each cube being 10 feet on each side. The place is furnished and decorated as you choose. It contains sufficient food to serve a nine-course banquet for up to 100 people. A staff of 100 near-transparent servants attends all who enter. You decide the visual appearance of these servants and their attire. They are completely obedient to your orders. Each servant can perform any task a normal human servant could perform, but they can''t attack or take any action that would directly harm another creature. Thus the servants can fetch things, clean, mend, fold clothes, light fires, serve food, pour wine, and so on. The servants can go anywhere in the mansion but can''t leave it. Furnishings and other objects created by this spell dissipate into smoke if removed from the mansion. When the spell ends, any creatures or objects inside the extradimensional space are expelled into the open spaces nearest to the entrance.'),
('Mordenkainen''s Private Sanctum', 'Abjuration', 4, 'Action', 120, 14400, 'FALSE', 'FALSE', 'You make an area within range magically secure. The area is a cube that can be as small as 5 feet to as large as 100 feet on each side. The spell lasts for the duration or until you use an action to dismiss it.

When you cast the spell, you decide what sort of security the spell provides, choosing any or all of the following properties:

Sound can''t pass through the barrier at the edge of the warded area.
The barrier of the warded area appears dark and foggy, preventing vision (including darkvision) through it.
Sensors created by divination spells can''t appear inside the protected area or pass through the barrier at its perimeter.
Creatures in the area can''t be targeted by divination spells.
Nothing can teleport into or out of the warded area.
Planar travel is blocked within the warded area.
Casting this spell on the same spot every day for a year makes this effect permanent.

At Higher Levels: When you cast this spell using a spell slot of 5th level or higher, you can increase the size of the cube by 100 feet for each slot level beyond 4th. Thus you could protect a cube that can be up to 200 feet on one side by using a spell slot of 5th level.'),
('Mordenkainen''s Sword', 'Evocation', 7, 'Action', 60, 10, 'TRUE', 'FALSE', 'You create a sword-shaped plane of force that hovers within range. It lasts for the duration.

When the sword appears, you make a melee spell attack against a target of your choice within 5 feet of the sword. On a hit. the target takes 3d10 force damage. Until the spell ends, you can use a bonus action on each of your turns to move the sword up to 20 feet to a spot you can see and repeat this attack against the same target or a different one.'),
('Move Earth', 'Transmutation', 6, 'Action', 120, 1200, 'TRUE', 'FALSE', 'Choose an area of terrain no larger than 40 feet on a side within range. You can reshape dirt, sand, or clay in the area in any manner you choose for the duration. You can raise or lower the area''s elevation, create or fill in a trench, erect or flatten a wall, or form a pillar. The extent of any such changes can''t exceed half the area''s largest dimension. So, if you affect a 40-foot square, you can create a pillar up to 20 feet high, raise or lower the square''s elevation by up to 20 feet, dig a trench up to 20 feet deep, and so on. It takes 10 minutes for these changes to complete.

At the end of every 10 minutes you spend concentrating on the spell, you can choose a new area of terrain to affect.

Because the terrain''s transformation occurs slowly, creatures in the area can''t usually be trapped or injured by the ground''s movement.

This spell can''t manipulate natural stone or stone construction. Rocks and structures shift to accommodate the new terrain. If the way you shape the terrain would make a structure unstable, it might collapse.

Similarly, this spell doesn''t directly affect plant growth. The moved earth carries any plants along with it.'),
('Nondetection', 'Abjuration', 3, 'Action', 5, 4800, 'FALSE', 'FALSE', 'For the duration, you hide a target that you touch from divination magic. The target can be a willing creature or a place or an object no larger than 10 feet in any dimension. The target can''t be targeted by any divination magic or perceived through magical scrying sensors.'),
('Nystul''s Magic Aura', 'Illusion', 2, 'Action', 5, 14400, 'FALSE', 'FALSE', 'You place an illusion on a creature or an object you touch so that divination spells reveal false information about it. The target can be a willing creature or an object that isn''t being carried or worn by another creature.

When you cast the spell, choose one or both of the following effects. The effect lasts for the duration. If you cast this spell on the same creature or object every day for 30 days, placing the same effect on it each time, the illusion lasts until it is dispelled.

False Aura: You change the way the target appears to spells and magical effects, such as Detect Magic, that detect magical auras. You can make a nonmagical object appear magical, a magical object appear nonmagical, or change the object''s magical aura so that it appears to belong to a specific school of magic that you choose. When you use this effect on an object, you can make the false magic apparent to any creature that handles the item.

Mask: You change the way the target appears to spells and magical effects that detect creature types, such as a paladin''s Divine Sense or the trigger of a symbol spell. You choose a creature type and other spells and magical effects treat the target as if it were a creature of that type or of that alignment.'),
('Otiluke''s Freezing Sphere', 'Evocation', 6, 'Action', 300, 0, 'FALSE', 'FALSE', 'A frigid globe of cold energy streaks from your fingertips to a point of your choice within range, where it explodes in a 60-foot-radius sphere. Each creature within the area must make a Constitution saving throw. On a failed save, a creature takes 10d6 cold damage. On a successful save, it takes half as much damage.

If the globe strikes a body of water or a liquid that is principally water (not including water-based creatures), it freezes the liquid to a depth of 6 inches over an area 30 feet square. This ice lasts for 1 minute. Creatures that were swimming on the surface of frozen water are trapped in the ice. A trapped creature can use an action to make a Strength check against your spell save DC to break free.

You can refrain from firing the globe after completing the spell, if you wish. A small globe about the size of a sling stone, cool to the touch, appears in your hand. At any time, you or a creature you give the globe to can throw the globe (to a range of 40 feet) or hurl it with a sling (to the sling''s normal range). It shatters on impact, with the same effect as the normal casting of the spell. You can also set the globe down without shattering it. After 1 minute, if the globe hasn''t already shattered, it explodes.

At Higher Levels: When you cast this spell using a spell slot of 7th level or higher, the damage increases by 1d6 for each slot level above 6th.'),
('Otiluke''s Resilient Sphere', 'Evocation', 4, 'Action', 30, 10, 'TRUE', 'FALSE', 'A sphere of shimmering force encloses a creature or object of Large size or smaller within range. An unwilling creature must make a Dexterity saving throw. On a failed save, the creature is enclosed for the duration.

Nothing – not physical objects, energy, or other spell effects – can pass through the barrier, in or out, though a creature in the sphere can breathe there. The sphere is immune to all damage, and a creature or object inside can''t be damaged by attacks or effects originating from outside, nor can a creature inside the sphere damage anything outside it.

The sphere is weightless and just large enough to contain the creature or object inside. An enclosed creature can use its action to push against the sphere''s walls and thus roll the sphere at up to half the creature''s speed. Similarly, the globe can be picked up and moved by other creatures.

A Disintegrate spell targeting the globe destroys it without harming anything inside it.'),
('Otto''s Irresistible Dance', 'Enchantment', 6, 'Action', 30, 10, 'TRUE', 'FALSE', 'Choose one creature that you can see within range. The target begins a comic dance in place: shuffling, tapping its feet, and capering for the duration. Creatures that can''t be charmed are immune to this spell.

A dancing creature must use all its movement to dance without leaving its space and has disadvantage on Dexterity saving throws and attack rolls. While the target is affected by this spell, other creatures have advantage on attack rolls against it. As an action, a dancing creature makes a Wisdom saving throw to regain control of itself. On a successful save, the spell ends.'),
('Pass Without Trace', 'Abjuration', 2, 'Action', 0, 600, 'TRUE', 'FALSE', 'A veil of shadows and silence radiates from you, masking you and your companions from detection. For the duration, each creature you choose within 30 feet of you (including you) has a +10 bonus to Dexterity (Stealth) checks and can''t be tracked except by magical means. A creature that receives this bonus leaves behind no tracks or other traces of its passage.'),
('Passwall', 'Transmutation', 5, 'Action', 30, 600, 'FALSE', 'FALSE', 'A passage appears at a point of your choice that you can see on a wooden, plaster, or stone surface (such as a wall, a ceiling, or a floor) within range, and lasts for the duration. You choose the opening''s dimensions: up to 5 feet wide, 8 feet tall, and 20 feet deep. The passage creates no instability in a structure surrounding it.

When the opening disappears, any creatures or objects still in the passage created by the spell are safely ejected to an unoccupied space nearest to the surface on which you cast the spell.'),
('Phantasmal Force', 'Illusion', 2, 'Action', 60, 10, 'TRUE', 'FALSE', 'You craft an illusion that takes root in the mind of a creature that you can see within range. The target must make an Intelligence saving throw. On a failed save, you create a phantasmal object, creature, or other visible phenomenon of your choice that is no larger than a 10-foot cube and that is perceivable only to the target for the duration. This spell has no effect on undead or constructs.

The phantasm includes sound, temperature, and other stimuli, also evident only to the creature.

The target can use its action to examine the phantasm with an Intelligence (Investigation) check against your spell save DC. If the check succeeds, the target realizes that the phantasm is an illusion, and the spell ends.

While a target is affected by the spell, the target treats the phantasm as if it were real. The target rationalizes any illogical outcomes from interacting with the phantasm. For example, a target attempting to walk across a phantasmal bridge that spans a chasm falls once it steps onto the bridge. If the target survives the fall, it still believes that the bridge exists and comes up with some other explanation for its fall; it was pushed, it slipped, or a strong wind might have knocked it off.

An affected target is so convinced of the phantasm''s reality that it can even take damage from the illusion. A phantasm created to appear as a creature can attack the target. Similarly, a phantasm created to appear as fire, a pool of acid, or lava can burn the target. Each round on your turn, the phantasm can deal 1d6 psychic damage to the target if it is in the phantasm''s area or within 5 feet of the phantasm, provided that the illusion is of a creature or hazard that could logically deal damage, such as by attacking. The target perceives the damage as a type appropriate to the illusion.'),
('Phantasmal Killer', 'Illusion', 4, 'Action', 120, 10, 'TRUE', 'FALSE', 'You tap into the nightmares of a creature you can see within range and create an illusory manifestation of its deepest fears, visible only to that creature.

The target must make a Wisdom saving throw. On a failed save, the target becomes frightened for the duration. At the end of each of the target''s turns before the spell ends, the target must succeed on a Wisdom saving throw or take 4d10 psychic damage. On a successful save, the spell ends.

At Higher Levels: When you cast this spell using a spell slot of 5th level or higher, the damage increases by 1d10 for each slot level above 4th.'),
('Phantom Steed', 'Illusion', 3, '1 minute', 30, 600, 'FALSE', 'TRUE', 'A Large quasi-real, horselike creature appears on the ground in an unoccupied space of your choice within range. You decide the creature''s appearance, but it is equipped with a saddle, bit, and bridle. Any of the equipment created by the spell vanishes in a puff of smoke if it is carried more than 10 feet away from the steed.

For the duration, you or a creature you choose can ride the steed. The creature uses the statistics for a riding horse, except it has a speed of 100 feet and can travel 10 miles in an hour, or 13 miles at a fast pace. When the spell ends, the steed gradually fades, giving the rider 1 minute to dismount. The spell ends if you use an action to dismiss it or if the steed takes any damage.'),
('Planar Ally', 'Conjuration', 6, 'Action', 60, 0, 'FALSE', 'FALSE', 'You beseech an otherworldly entity for aid. The being must be known to you: a god, a primordial, a demon prince, or some other being of cosmic power. That entity sends a celestial, an elemental, or a fiend loyal to it to aid you, making the creature appear in an unoccupied space within range. If you know a specific creature''s name, you can speak that name when you cast this spell to request that creature, though you might get a different creature anyway (DM''s choice).

When the creature appears, it is under no compulsion to behave in any particular way. You can ask the creature to perform a service in exchange for payment, but it isn''t obliged to do so. The requested task could range from simple (fly us across the chasm, or help us fight a battle) to complex (spy on our enemies, or protect us during our foray into the dungeon). You must be able to communicate with the creature to bargain for its services.

Payment can take a variety of forms. A celestial might require a sizable donation of gold or magic items to an allied temple, while a fiend might demand a living sacrifice or a gift of treasure. Some creatures might exchange their service for a quest undertaken by you.

As a rule of thumb, a task that can be measured in minutes requires a payment worth 100 gp per minute. A task measured in hours requires 1,000 gp per hour. And a task measured in days (up to 10 days) requires 10,000 gp per day. The DM can adjust these payments based on the circumstances under which you cast the spell. If the task is aligned with the creature''s ethos, the payment might be halved or even waived. Nonhazardous tasks typically require only half the suggested payment, while especially dangerous tasks might require a greater gift. Creatures rarely accept tasks that seem suicidal.

After the creature completes the task, or when the agreed-upon duration of service expires, the creature returns to its home plane after reporting back to you, if appropriate to the task and if possible. If you are unable to agree on a price for the creature''s service, the creature immediately returns to its home plane.

A creature enlisted to join your group counts as a member of it, receiving a full share of experience points awarded.'),
('Planar Binding', 'Abjuration', 5, '1 hour', 60, 14400, 'FALSE', 'FALSE', 'With this spell, you attempt to bind a celestial, an elemental, a fey, or a fiend to your service. The creature must be within range for the entire casting of the spell. (Typically, the creature is first summoned into the center of an inverted Magic Circle in order to keep it trapped while this spell is cast.) At the completion of the casting, the target must make a Charisma saving throw. On a failed save, it is bound to serve you for the duration. If the creature was summoned or created by another spell, that spell''s duration is extended to match the duration of this spell.

A bound creature must follow your instructions to the best of its ability. You might command the creature to accompany you on an adventure, to guard a location, or to deliver a message. The creature obeys the letter of your instructions, but if the creature is hostile to you, it strives to twist your words to achieve its own objectives. If the creature carries out your instructions completely before the spell ends, it travels to you to report this fact if you are on the same plane of existence. If you are on a different plane of existence, it returns to the place where you bound it and remains there until the spell ends.

At Higher Levels: When you cast this spell using a spell slot of a higher level, the duration increases to 10 days with a 6th-level slot, 30 days with a 7th-level slot, 180 days with an 8th-level slot, or 1 year and 1 day with a 9th-level spell slot.'),
('Plane Shift', 'Conjuration', 7, 'Action', 5, 0, 'FALSE', 'FALSE', 'You and up to eight willing creatures who link hands in a circle are transported to a different plane of existence. You can specify a target destination in general terms, such as the City of Brass on the Elemental Plane of Fire or the palace of Dispater on the second level of the Nine Hells, and you appear in or near that destination. If you are trying to reach the City of Brass, for example, you might arrive in its Street of Steel, before its Gate of Ashes, or looking at the city from across the Sea of Fire, at the DM''s discretion.

Alternatively, if you know the sigil sequence of a teleportation circle on another plane of existence, this spell can take you to that circle. If the teleportation circle is too small to hold all the creatures you transported, they appear in the closest unoccupied spaces next to the circle.

You can use this spell to banish an unwilling creature to another plane. Choose a creature within your reach and make a melee spell attack against it. On a hit, the creature must make a Charisma saving throw. If the creature fails the save, it is transported to a random location on the plane of existence you specify. A creature so transported must find its own way back to your current plane of existence.'),
('Plant Growth', 'Transmutation', 3, 'Action', 150, 0, 'FALSE', 'FALSE', 'This spell channels vitality into plants within a specific area. There are two possible uses for the spell, granting either immediate or long-term benefits.

If you cast this spell using 1 action, choose a point within range. All normal plants in a 100-foot radius centered on that point become thick and overgrown. A creature moving through the area must spend 4 feet of movement for every 1 foot it moves.

You can exclude one or more areas of any size within the spell''s area from being affected.

If you cast this spell over 8 hours, you enrich the land. All plants in a half-mile radius centered on a point within range become enriched for 1 year. The plants yield twice the normal amount of food when harvested.'),
('Poison Spray', 'Conjuration', 0, 'Action', 10, 0, 'FALSE', 'FALSE', 'You extend your hand toward a creature you can see within range and project a puff of noxious gas from your palm. The creature must succeed on a Constitution saving throw or take 1d12 poison damage.

At Higher Levels: This spell''s damage increases by 1d12 when you reach 5th level (2d12), 11th level (3d12), and 17th level (4d12).'),
('Polymorph', 'Transmutation', 4, 'Action', 60, 600, 'TRUE', 'FALSE', 'This spell transforms a creature that you can see within range into a new form. An unwilling creature must make a Wisdom saving throw to avoid the effect. A shapechanger automatically succeeds on this saving throw.

The transformation lasts for the duration, or until the target drops to 0 hit points or dies. The new form can be any beast whose challenge rating is equal to or less than the target''s (or the target''s level, if it doesn''t have a challenge rating). The target''s game statistics, including mental ability scores, are replaced by the statistics of the chosen beast. It retains its alignment and personality.

The target assumes the hit points of its new form. When it reverts to its normal form, the creature returns to the number of hit points it had before it transformed. If it reverts as a result of dropping to 0 hit points, any excess damage carries over to its normal form. As long as the excess damage doesn''t reduce the creature''s normal form to 0 hit points, it isn''t knocked unconscious.

The creature is limited in the actions it can perform by the nature of its new form, and it can''t speak, cast spells, or take any other action that requires hands or speech.

The target''s gear melds into the new form. The creature can''t activate, use, wield, or otherwise benefit from any of its equipment. This spell can''t affect a target that has 0 hit points.'),
('Power Word: Heal', 'Evocation', 9, 'Action', 5, 0, 'FALSE', 'FALSE', 'A wave of healing energy washes over a creature you touch. The target regains all its hit points. If the creature is charmed, frightened, paralyzed, or stunned, the condition ends. If the creature is prone, it can use its reaction to stand up. This spell has no effect on undead or constructs.'),
('Power Word: Kill', 'Enchantment', 9, 'Action', 60, 0, 'FALSE', 'FALSE', 'You utter a word of power that can compel one creature you can see within range to die instantly. If the creature you chose has 100 hit points or fewer, it dies. Otherwise, the spell has no effect.'),
('Power Word: Stun', 'Enchantment', 8, 'Action', 60, 0, 'FALSE', 'FALSE', 'You speak a word of power that can overwhelm the mind of one creature you can see within range, leaving it dumbfounded. If the target has 150 hit points or fewer, it is stunned. Otherwise, the spell has no effect. The stunned target must make a Constitution saving throw at the end of each of its turns. On a successful save, this stunning effect ends.'),
('Prayer of Healing', 'Evocation', 2, '10 minutes', 30, 0, 'FALSE', 'FALSE', 'Up to six creatures of your choice that you can see within range each regain hit points equal to 2d8 + your spellcasting ability modifier. This spell has no effect on undead or constructs.

At Higher Levels: When you cast this spell using a spell slot of 3rd level or higher, the healing increases by 1d8 for each slot level above 2nd.'),
('Prestidigitation', 'Transmutation', 0, 'Action', 10, 600, 'FALSE', 'FALSE', 'This spell is a minor magical trick that novice spellcasters use for practice. You create one of the following magical effects within range:

- You create an instantaneous, harmless sensory effect, such as a shower of sparks, a puff of wind, faint musical notes, or an odd odor.
- You instantaneously light or snuff out a candle, a torch, or a small campfire.
- You instantaneously clean or soil an object no larger than 1 cubic foot.
- You chill, warm, or flavor up to 1 cubic foot of nonliving material for 1 hour.
- You make a color, a small mark, or a symbol appear on an object or a surface for 1 hour.
- You create a nonmagical trinket or an illusory image that can fit in your hand and that lasts until the end of your next turn.

If you cast this spell multiple times, you can have up to three of its non-instantaneous effects active at a time, and you can dismiss such an effect as an action.'),
('Prismatic Spray', 'Evocation', 7, 'Action', 60, 0, 'FALSE', 'FALSE', 'Eight multicolored rays of light flash from your hand. Each ray is a different color and has a different power and purpose. Each creature in a 60-foot cone must make a Dexterity saving throw. For each target, roll a d8 to determine which color ray affects it.

1: Red -The target takes 10d6 fire damage on a failed save, or half as much damage on a successful one.
2: Orange - The target takes 10d6 acid damage on a failed save, or half as much damage on a successful one.
3: Yellow - The target takes 10d6 lightning damage on a failed save, or half as much damage on a successful one.
4: Green - The target takes 10d6 poison damage on a failed save, or half as much damage on a successful one.
5: Blue - The target takes 10d6 cold damage on a failed save, or half as much damage on a successful one.
6: Indigo - On a failed save, the target is restrained. It must then make a Constitution saving throw at the end of each of its turns. If it successfully saves three times, the spell ends. If it fails its save three times, it permanently turns to stone and is subjected to the petrified condition. The successes and failures don''t need to be consecutive; keep track of both until the target collects three of a kind.
7: Violet - On a failed save, the target is blinded. It must then make a Wisdom saving throw at the start of your next turn. A successful save ends the blindness. If it fails that save, the creature is transported to another plane of existence of the DM''s choosing and is no longer blinded. (Typically, a creature that is on a plane that isn''t its home plane is banished home, while other creatures are usually cast into the Astral or Ethereal planes.)
8: Special - The target is struck by two rays. Roll twice more, rerolling any 8.'),
('Prismatic Wall', 'Abjuration', 9, 'Action', 60, 100, 'FALSE', 'FALSE', 'A shimmering, multicolored plane of light forms a vertical opaque wall – up to 90 feet long, 30 feet high, and 1 inch thick – centered on a point you can see within range. Alternatively, you can shape the wall into a sphere up to 30 feet in diameter centered on a point you choose within range. The wall remains in place for the duration. If you position the wall so that it passes through a space occupied by a creature, the spell fails, and your action and the spell slot are wasted.

The wall sheds bright light out to a range of 100 feet and dim light for an additional 100 feet. You and creatures you designate at the time you cast the spell can pass through and remain near the wall without harm. If another creature that can see the wall moves to within 20 feet of it or starts its turn there, the creature must succeed on a Constitution saving throw or become blinded for 1 minute.

The wall consists of seven layers, each with a different color. When a creature attempts to reach into or pass through the wall, it does so one layer at a time through all the wall''s layers. As it passes or reaches through each layer, the creature must make a Dexterity saving throw or be affected by that layer''s properties as described below.

The wall can be destroyed, also one layer at a time, in order from red to violet, by means specific to each layer. Once a layer is destroyed, it remains so for the duration of the spell. An Antimagic Field has no effect on it.

Red - The creature takes 10d6 fire damage on a failed save, or half as much damage on a successful one. While this layer is in place, nonmagical ranged attacks can''t pass through the wall. The layer can be destroyed by dealing at least 25 cold damage to it.

Orange - The creature takes 10d6 acid damage on a failed save, or half as much damage on a successful one. While this layer is in place, magical ranged attacks can''t pass through the wall. The layer is destroyed by a strong wind.

Yellow - The creature takes 10d6 lightning damage on a failed save, or half as much damage on a successful one. This layer can be destroyed by dealing at least 60 force damage to it.

Green - The creature takes 10d6 poison damage on a failed save, or half as much damage on a successful one. A Passwall spell, or another spell of equal or greater level that can open a portal on a solid surface, destroys this layer.

Blue - The creature takes 10d6 cold damage on a failed save, or half as much damage on a successful one. This layer can be destroyed by dealing at least 25 fire damage to it.

Indigo - On a failed save, the creature is restrained. It must then make a Constitution saving throw at the end of each of its turns. If it successfully saves three times, the spell ends. If it fails its save three times, it permanently turns to stone and is subjected to the petrified condition. The successes and failures don''t need to be consecutive; keep track of both until the creature collects three of a kind. While this layer is in place, spells can''t be cast through the wall. The layer is destroyed by bright light shed by a Daylight spell or a similar spell of equal or higher level.

Violet - On a failed save, the creature is blinded. It must then make a Wisdom saving throw at the start of your next turn. A successful save ends the blindness. If it fails that save, the creature is transported to another plane of the DM''s choosing and is no longer blinded. (Typically, a creature that is on a plane that isn''t its home plane is banished home, while other creatures are usually cast into the Astral or Ethereal planes.) This layer is destroyed by a Dispel Magic spell or similar spell of equal or higher level that can end spells and magical effects.'),
('Produce Flame', 'Conjuration', 0, 'Action', 0, 100, 'FALSE', 'FALSE', 'A flickering flame appears in your hand. The flame remains there for the duration and harms neither you nor your equipment. The flame sheds bright light in a 10-foot radius and dim light for an additional 10 feet. The spell ends if you dismiss it as an action or if you cast it again.

You can also attack with the flame, although doing so ends the spell. When you cast this spell, or as an action on a later turn, you can hurl the flame at a creature within 30 feet of you. Make a ranged spell attack. On a hit, the target takes 1d8 fire damage.

At Higher Levels: This spell''s damage increases by 1d8 when you reach 5th level (2d8), 11th level (3d8), and 17th level (4d8).'),
('Programmed Illusion', 'Illusion', 6, 'Action', 120, 0, 'FALSE', 'FALSE', 'You create an illusion of an object, a creature, or some other visible phenomenon within range that activates when a specific condition occurs. The illusion is imperceptible until then. It must be no larger than a 30-foot cube, and you decide when you cast the spell how the illusion behaves and what sounds it makes. This scripted performance can last up to 5 minutes.

When the condition you specify occurs, the illusion springs into existence and performs in the manner you described. Once the illusion finishes performing, it disappears and remains dormant for 10 minutes. After this time, the illusion can be activated again.

The triggering condition can be as general or as detailed as you like, though it must be based on visual or audible conditions that occur within 30 feet of the area. For example, you could create an illusion of yourself to appear and warn off others who attempt to open a trapped door, or you could set the illusion to trigger only when a creature says the correct word or phrase.

Physical interaction with the image reveals it to be an illusion, because things can pass through it. A creature that uses its action to examine the image can determine that it is an illusion with a successful Intelligence (Investigation) check against your spell save DC. If a creature discerns the illusion for what it is, the creature can see through the image, and any noise it makes sounds hollow to the creature.'),
('Project Image', 'Illusion', 7, 'Action', 2640000, 14400, 'TRUE', 'FALSE', 'You create an illusory copy of yourself that lasts for the duration. The copy can appear at any location within range that you have seen before, regardless of intervening obstacles. The illusion looks and sounds like you but is intangible. If the illusion takes any damage, it disappears, and the spell ends.

You can use your action to move this illusion up to twice your speed, and make it gesture, speak, and behave in whatever way you choose. It mimics your mannerisms perfectly.

You can see through its eyes and hear through its ears as if you were in its space. On your turn as a bonus action, you can switch from using its senses to using your own, or back again. While you are using its senses, you are blinded and deafened in regard to your own surroundings.

Physical interaction with the image reveals it to be an illusion, because things can pass through it. A creature that uses its action to examine the image can determine that it is an illusion with a successful Intelligence (Investigation) check against your spell save DC. If a creature discerns the illusion for what it is, the creature can see through the image, and any noise it makes sounds hollow to the creature.'),
('Protection from Energy', 'Abjuration', 3, 'Action', 5, 600, 'TRUE', 'FALSE', 'For the duration, the willing creature you touch has resistance to one damage type of your choice: acid, cold, fire, lightning, or thunder.'),
('Protection from Evil and Good', 'Abjuration', 1, 'Action', 5, 100, 'TRUE', 'FALSE', 'Until the spell ends, one willing creature you touch is protected against certain types of creatures: aberrations, celestials, elementals, fey, fiends, and undead.

The protection grants several benefits. Creatures of those types have disadvantage on attack rolls against the target. The target also can''t be charmed, frightened, or possessed by them. If the target is already charmed, frightened, or possessed by such a creature, the target has advantage on any new saving throw against the relevant effect.'),
('Protection from Poison', 'Abjuration', 2, 'Action', 5, 600, 'FALSE', 'FALSE', 'You touch a creature. If it is poisoned, you neutralize the poison. If more than one poison afflicts the target, you neutralize one poison that you know is present, or you neutralize one at random.

For the duration, the target has advantage on saving throws against being poisoned, and it has resistance to poison damage.'),
('Purify Food and Drink', 'Transmutation', 1, 'Action', 10, 0, 'FALSE', 'TRUE', 'All nonmagical food and drink within a 5-foot-radius sphere centered on a point of your choice within range is purified and rendered free of poison and disease.'),
('Raise Dead', 'Necromancy', 5, 'Action', 5, 0, 'FALSE', 'FALSE', 'You return a dead creature you touch to life, provided that it has been dead no longer than 10 days. If the creature''s soul is both willing and at liberty to rejoin the body, the creature returns to life with 1 hit point.

This spell also neutralizes any poison and cures nonmagical diseases that affected the creature at the time it died. This spell doesn''t, however, remove magical diseases, curses, or similar effects; if these aren''t first removed prior to casting the spell, they take effect when the creature returns to life. The spell can''t return an undead creature to life.

This spell closes all mortal wounds, but it doesn''t restore missing body parts. If the creature is lacking body parts or organs integral for its survival – its head, for instance – the spell automatically fails.

Coming back from the dead is an ordeal. The target takes a -4 penalty to all attack rolls, saving throws, and ability checks. Every time the target finishes a long rest, the penalty is reduced by 1 until it disappears.'),
('Rary''s Telepathic Bond', 'Divination', 5, 'Action', 30, 600, 'FALSE', 'TRUE', 'You forge a telepathic link among up to eight willing creatures of your choice within range, psychically linking each creature to all the others for the duration. Creatures with Intelligence scores of 2 or less aren''t affected by this spell.

Until the spell ends, the targets can communicate telepathically through the bond whether or not they have a common language. The communication is possible over any distance, though it can''t extend to other planes of existence.'),
('Ray of Enfeeblement', 'Necromancy', 2, 'Action', 60, 10, 'TRUE', 'FALSE', 'A black beam of enervating energy springs from your finger toward a creature within range. Make a ranged spell attack against the target. On a hit, the target deals only half damage with weapon attacks that use Strength until the spell ends.

At the end of each of the target''s turns, it can make a Constitution saving throw against the spell. On a success, the spell ends.'),
('Ray of Frost', 'Evocation', 0, 'Action', 60, 0, 'FALSE', 'FALSE', 'A frigid beam of blue-white light streaks toward a creature within range. Make a ranged spell attack against the target. On a hit, it takes 1d8 cold damage, and its speed is reduced by 10 feet until the start of your next turn.

At Higher Levels: The spell''s damage increases by 1d8 when you reach 5th level (2d8), 11th level (3d8), and 17th level (4d8).'),
('Ray of Sickness', 'Necromancy', 1, 'Action', 60, 0, 'FALSE', 'FALSE', 'A ray of sickening greenish energy lashes out toward a creature within range. Make a ranged spell attack against the target. On a hit, the target takes 2d8 poison damage and must make a Constitution saving throw. On a failed save, it is also poisoned until the end of your next turn.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d8 for each slot level above 1st.'),
('Regenerate', 'Transmutation', 7, '1 minute', 5, 600, 'FALSE', 'FALSE', 'You touch a creature and stimulate its natural healing ability. The target regains 4d8 + 15 hit points. For the duration of the spell, the target regains 1 hit point at the start of each of its turns (10 hit points each minute).

The target''s severed body members (fingers, legs, tails, and so on), if any, are restored after 2 minutes. If you have the severed part and hold it to the stump, the spell instantaneously causes the limb to knit to the stump.'),
('Reincarnate', 'Transmutation', 5, 'Action', 5, 0, 'FALSE', 'FALSE', 'You touch a dead humanoid or a piece of a dead humanoid. Provided that the creature has been dead no longer than 10 days, the spell forms a new adult body for it and then calls the soul to enter that body. If the target''s soul isn''t free or willing to do so, the spell fails.

The magic fashions a new body for the creature to inhabit, which likely causes the creature''s race to change. The DM rolls a d100 and consults the following table to determine what form the creature takes when restored to life, or the DM chooses a form.

01-04:   Dragonborn
05-13:   Dwarf, hill
14-21:   Dwarf, mountain
22-25:   Elf, dark
26-34:   Elf, high
35-42:   Elf, wood
43-46:   Gnome, forest
47-52:   Gnome, rock
53-56:   Half-elf
57-60:   Half-orc
61-68:   Halfling, lightfoot
69-76:   Halfling, stout
77-96:   Human
97-00:   Tiefling

The reincarnated creature recalls its former life and experiences. It retains the capabilities it had in its original form, except it exchanges its original race for the new one and changes its racial traits accordingly.'),
('Remove Curse', 'Abjuration', 3, 'Action', 5, 0, 'FALSE', 'FALSE', 'At your touch, all curses affecting one creature or object end. If the object is a cursed magic item, its curse remains, but the spell breaks its owner''s attunement to the object so it can be removed or discarded.'),
('Resistance', 'Abjuration', 0, 'Action', 5, 10, 'TRUE', 'FALSE', 'You touch one willing creature. Once before the spell ends, the target can roll a d4 and add the number rolled to one saving throw of its choice. It can roll the die before or after the saving throw. The spell then ends.'),
('Resurrection', 'Necromancy', 7, '1 hour', 5, 0, 'FALSE', 'FALSE', 'You touch a dead creature that has been dead for no more than a century, that didn''t die of old age, and that isn''t undead. If its soul is free and willing, the target returns to life with all its hit points.

This spell neutralizes any poisons and cures normal diseases afflicting the creature when it died. It doesn''t, however, remove magical diseases, curses, and the like; if such affects aren''t removed prior to casting the spell, they afflict the target on its return to life.

This spell closes all mortal wounds and restores any missing body parts.

Coming back from the dead is an ordeal. The target takes a -4 penalty to all attack rolls, saving throws, and ability checks. Every time the target finishes a long rest, the penalty is reduced by 1 until it disappears.

Casting this spell to restore life to a creature that has been dead for one year or longer taxes you greatly. Until you finish a long rest, you can''t cast spells again, and you have disadvantage on all attack rolls, ability checks, and saving throws.'),
('Reverse Gravity', 'Transmutation', 7, 'Action', 100, 10, 'TRUE', 'FALSE', 'This spell reverses gravity in a 50-foot-radius, 100-foot high cylinder centered on a point within range. All creatures and objects that aren''t somehow anchored to the ground in the area fall upward and reach the top of the area when you cast this spell. A creature can make a Dexterity saving throw to grab onto a fixed object it can reach, thus avoiding the fall.

If some solid object (such as a ceiling) is encountered in this fall, falling objects and creatures strike it just as they would during a normal downward fall. If an object or creature reaches the top of the area without striking anything, it remains there, oscillating slightly, for the duration.

At the end of the duration, affected objects and creatures fall back down.'),
('Revivify', 'Necromancy', 3, 'Action', 5, 0, 'FALSE', 'FALSE', 'You touch a creature that has died within the last minute. That creature returns to life with 1 hit point. This spell can''t return to life a creature that has died of old age, nor can it restore any missing body parts.'),
('Rope Trick', 'Transmutation', 2, 'Action', 5, 600, 'FALSE', 'FALSE', 'You touch a length of rope that is up to 60 feet long. One end of the rope then rises into the air until the whole rope hangs perpendicular to the ground. At the upper end of the rope, an invisible entrance opens to an extradimensional space that lasts until the spell ends.

The extradimensional space can be reached by climbing to the top of the rope. The space can hold as many as eight Medium or smaller creatures. The rope can be pulled into the space, making the rope disappear from view outside the space.

Attacks and spells can''t cross through the entrance into or out of the extradimensional space, but those inside can see out of it as if through a 3-foot-by-5-foot window centered on the rope.

Anything inside the extradimensional space drops out when the spell ends.'),
('Sacred Flame', 'Evocation', 0, 'Action', 60, 0, 'FALSE', 'FALSE', 'Flame-like radiance descends on a creature that you can see within range. The target must succeed on a Dexterity saving throw or take 1d8 radiant damage. The target gains no benefit from cover for this saving throw.

At Higher Levels: The spell''s damage increases by 1d8 when you reach 5th level (2d8), 11th level (3d8), and 17th level (4d8).'),
('Sanctuary', 'Abjuration', 1, 'Bonus Action', 30, 10, 'FALSE', 'FALSE', 'You ward a creature within range against attack. Until the spell ends, any creature who targets the warded creature with an attack or a harmful spell must first make a Wisdom saving throw. On a failed save, the creature must choose a new target or lose the attack or spell. This spell doesn''t protect the warded creature from area effects, such as the explosion of a fireball.

If the warded creature makes an attack, casts a spell that affects an enemy, or deals damage to another creature, this spell ends.'),
('Scorching Ray', 'Evocation', 2, 'Action', 120, 0, 'FALSE', 'FALSE', 'You create three rays of fire and hurl them at targets within range. You can hurl them at one target or several. Make a ranged spell attack for each ray. On a hit, the target takes 2d6 fire damage.

At Higher Levels: When you cast this spell using a spell slot of 3rd level or higher, you create one additional ray for each slot level above 2nd.'),
('Scrying', 'Divination', 5, '10 minutes', 0, 100, 'TRUE', 'FALSE', 'You can see and hear a particular creature you choose that is on the same plane of existence as you. The target must make a Wisdom saving throw, which is modified by how well you know the target and the sort of physical connection you have to it. If a target knows you''re casting this spell, it can fail the saving throw voluntarily if it wants to be observed.

On a successful save, the target isn''t affected, and you can''t use this spell against it again for 24 hours.

On a failed save, the spell creates an invisible sensor within 10 feet of the target. You can see and hear through the sensor as if you w ere there. The sensor moves with the target, remaining within 10 feet of it for the duration. A creature that can see invisible objects sees the sensor as a luminous orb about the size of your fist.

Instead of targeting a creature, you can choose a location you have seen before as the target of this spell. When you do, the sensor appears at that location and doesn''t move.'),
('Searing Smite', 'Evocation', 1, 'Bonus Action', 0, 10, 'TRUE', 'FALSE', 'The next time you hit a creature with a melee weapon attack during the spell''s duration, your weapon flares with white-hot intensity, and the attack deals an extra 1d6 fire damage to the target and causes the target to ignite in flames.

At the start of each of its turns until the spell ends, the target must make a Constitution saving throw. On a failed save, it takes 1d6 fire damage. On a successful save, the spells ends. If the target or a creature within 5 feet of it uses an action to put out the flames, or if some other effect douses the flames (such as the target being submerged in water), the spell ends.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, the initial extra damage dealt by the attack increases by 1d6 for each slot.'),
('See Invisibility', 'Divination', 2, 'Action', 0, 600, 'FALSE', 'FALSE', 'For the duration, you see invisible creatures and objects as if they were visible, and you can see into the Ethereal Plane. Ethereal creatures and objects appear ghostly and translucent.'),
('Seeming', 'Illusion', 5, 'Action', 30, 4800, 'FALSE', 'FALSE', 'This spell allows you to change the appearance of any number of creatures that you can see within range. You give each target you choose a new, illusory appearance. An unwilling target can make a Charisma saving throw, and if it succeeds, it is unaffected by this spell.

The spell disguises physical appearances as well as clothing, armor, weapons, and equipment. You can make each creature seem 1 foot shorter or taller and appear thin, fat, or in-between. You can''t change a target''s body type, so you must choose a form that has the same basic arrangement of limbs. Otherwise, the extent of the illusion is up to you. The spell lasts for the duration, unless you use your action to dismiss it sooner.

The changes wrought by this spell fail to hold up to physical inspections. For example, if you use this spell to add a hat to a creature''s outfit, objects pass through the hat, and anyone who touches it would feel nothing or would feel the creature''s head and hair. If you use this spell to appear thinner then you are, the hand of someone who reaches out to touch you would bump into you while it was seemingly still in midair.

A creature can use its action to inspect a target and make an Intelligence (Investigation) check against your spell save DC. If it succeeds, it becomes aware that the target is disguised.'),
('Sending', 'Evocation', 3, 'Action', 0, 1, 'FALSE', 'FALSE', 'You send a short message of twenty-five words or less to a creature with which you are familiar. The creature hears the message in its mind, recognizes you as the sender if it knows you, and can answer in a like manner immediately. The spell enables creatures with Intelligence scores of at least 1 to understand the meaning of your message.

You can send the message across any distance and even to other planes of existence, but if the target is on a different plane than you, there is a 5 percent chance that the message doesn''t arrive.'),
('Sequester', 'Transmutation', 7, 'Action', 5, 0, 'FALSE', 'FALSE', 'By means of this spell, a willing creature or an object can be hidden away, safe from detection for the duration. When you cast the spell and touch the target, it becomes invisible and can''t be targeted by divination spells or perceived through scrying sensors created by the divination of spells.

If the target is a creature, it falls into a state of suspended animation. Time ceases to flow for it, and it doesn''t grow older.

You can set a condition for the spell to end early. The condition can be anything you choose, but it must occur or be visible within 1 mile of the target. Examples include ""after 1,000 years"" or ""when the tarrasque awakes."" This spells also ends if the target takes any damage.'),
('Shapechange', 'Transmutation', 9, 'Action', 0, 600, 'TRUE', 'FALSE', 'You assume the form of a different creature for the duration. The new form can be any creature with a challenge rating equal to your level or lower. The creature can''t be a construct or an undead, and you must have seen the sort of creature at least once. You transform into an average example of that creature, one without any class levels or the Spellcasting trait.

Your game statistics are replaced by the statistics of the chosen creature, though you retain your alignment and Intelligence, Wisdom, and Charisma scores. You also retain all of your skill and saving throw proficiencies, in addition to gaining those of the creature, If the creature has the same proficiency as you, and the bonus listed in its statistics is higher than yours, use the creature''s bonus in place of yours. You can''t use any legendary actions or lair actions of the new form.

You assume the hit points and Hit Dice of the new form. When you revert to your normal, you return to the number of hit points you had before you transformed. If you revert as a result of dropping to 0 hit points, any excess damage carries over to your normal form. As long as the excess damage doesn''t reduce your normal form to 0 hitpoints, you aren''t knocked unconscious.

You retain the benefit of any features from your class, race, or other source and can use them, provided that your new form is physically capable of doing so. You can''t use any special senses you have (for example, darkvision) unless your new form also has that sense. You can only speak if the creature can normally speak.

When you transform, you choose whether your equipment falls to the ground, merges into the new form, or is worn by it. Worn equipment functions as normal. The DM determines whether it is practical for the new form to wear a piece of equipment, based on the creature''s shape and size. Your equipment doesn''t change shape or size to match the new form, and any equipment that the new form can''t wear must either fall to the ground or merge into your new form. Equipment that merges has no effect in that state.

During this spell''s duration, you can use your action to assume a different form following the same restrictions and rules for the original form, with one exception: if your new form has more hit points than your current one, your hit points remain at their current value.'),
('Shatter', 'Evocation', 2, 'Action', 60, 0, 'FALSE', 'FALSE', 'A sudden loud ringing noise, painfully intense, erupts from a point of your choice within range. Each creature in a 10-foot-radius sphere centered on that point must make a Constitution saving throw. A creature takes 3d8 thunder damage on a failed save, or half as much damage on a successful one. A creature made of inorganic material such as stone, crystal, or metal has disadvantage on this saving throw.

A nonmagical object that isn''t being worn or carried also takes the damage if it''s in the spell''s area.

At Higher Levels: When you cast this spell using a spell slot of 3rd level or higher, the damage increases by 1d8 for each slot level above 2nd.'),
('Shield', 'Abjuration', 1, 'Reaction', 0, 1, 'FALSE', 'FALSE', 'An invisible barrier of magical force appears and protects you. Until the start of your next turn, you have a +5 bonus to AC, including against the triggering attack, and you take no damage from magic missile.'),
('Shield of Faith', 'Abjuration', 1, 'Bonus Action', 60, 100, 'TRUE', 'FALSE', 'A shimmering field appears and surrounds a creature of your choice within range, granting it a +2 bonus to AC for the duration.'),
('Shillelagh', 'Transmutation', 0, 'Bonus Action', 5, 10, 'FALSE', 'FALSE', 'The wood of a club or quarterstaff you are holding is imbued with nature''s power. For the duration, you can use your spellcasting ability instead of Strength for the attack and damage rolls of melee attacks using that weapon, and the weapon''s damage die becomes a d8. The weapon also becomes magical, if it isn''t already. The spell ends if you cast it again or if you let go of the weapon.'),
('Shocking Grasp', 'Evocation', 0, 'Action', 5, 0, 'FALSE', 'FALSE', 'Lightning springs from your hand to deliver a shock to a creature you try to touch. Make a melee spell attack against the target. You have advantage on the attack roll if the target is wearing armor made of metal. On a hit, the target takes 1d8 lightning damage, and it can''t take reactions until the start of its next turn.

At Higher Levels: The spell''s damage increases by 1d8 when you reach 5th level (2d8), 11th level (3d8), and 17th level (4d8).'),
('Silence', 'Illusion', 2, 'Action', 120, 100, 'TRUE', 'TRUE', 'For the duration, no sound can be created within or pass through a 20-foot-radius sphere centered on a point you choose within range. Any creature or object entirely inside the sphere is immune to thunder damage, and creatures are deafened while entirely inside it. Casting a spell that includes a verbal component is impossible there.'),
('Silent Image', 'Illusion', 1, 'Action', 60, 100, 'TRUE', 'FALSE', 'You create the image of an object, a creature, or some other visible phenomenon that is no larger than a 15-foot cube. The image appears at a spot within range and lasts for the duration. The image is purely visual; it isn''t accompanied by sound, smell, or other sensory effects.

You can use your action to cause the image to move to any spot within range. As the image changes location, you can alter its appearance so that its movements appear natural for the image. For example, if you create an image of a creature and move it, you can alter the image so that it appears to be walking.

Physical interaction with the image reveals it to be an illusion, because things can pass through it. A creature that uses its action to examine the image can determine that it is an illusion with a successful Intelligence (Investigation) check against your spell save DC. If a creature discerns the illusion for what it is, the creature can see through the image.'),
('Simulacrum', 'Illusion', 7, '12 hours', 5, 0, 'FALSE', 'FALSE', 'You shape an illusory duplicate of one beast or humanoid that is within range for the entire casting time of the spell. The duplicate is a creature, partially real and formed from ice or snow, and it can take actions and otherwise be affected as a normal creature. It appears to be the same as the original, but it has half the creature''s hit point maximum and is formed without any equipment. Otherwise, the illusion uses all the statistics of the creature it duplicates, except that it is a construct.

The simulacrum is friendly to you and creatures you designate. It obeys your spoken commands, moving and acting in accordance with your wishes and acting on your turn in combat. The simulacrum lacks the ability to learn or become more powerful, so it never increases its level or other abilities, nor can it regain expended spell slots.

If the simulacrum is damaged, you can repair it in an alchemical laboratory, using rare herbs and minerals worth 100 gp per hit point it regains. The simulacrum lasts until it drops to 0 hit points, at which point it reverts to snow and melts instantly.

If you cast this spell again, any currently active duplicates you created with this spell are instantly destroyed.'),
('Sleep', 'Enchantment', 1, 'Action', 90, 10, 'FALSE', 'FALSE', 'This spell sends creatures into a magical slumber. Roll 5d8, the total is how many hit points of creatures this spell can affect. Creatures within 20 feet of a point you choose within range are affected in ascending order of their current hit points (ignoring unconscious creatures).

Starting with the creature that has the lowest current hit points, each creature affected by this spell falls unconscious until the spell ends, the sleeper takes damage, or someone uses an action to shake or slap the sleeper awake. Subtract each creature''s hit points from the total before moving on to the creature with the next lowest hit points. A creature''s hit points must be equal to or less than the remaining total for that creature to be affected. Undead and creatures immune to being charmed aren''t affected by this spell.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, roll an additional 2d8 for each slot level above 1st.'),
('Sleet Storm', 'Conjuration', 3, 'Action', 120, 10, 'TRUE', 'FALSE', 'Until the spell ends, freezing rain and sleet fall in a 20-foot-tall cylinder with a 40-foot radius centered on a point you choose within range. The area is heavily obscured, and exposed flames in the area are doused.

The ground in the area is covered with slick ice, making it difficult terrain. When a creature enters the spell''s area for the first time on a turn or starts its turn there, it must make a Dexterity saving throw. On a failed save, it falls prone.

If a creature starts its turn in the spell''s area and is concentrating on a spell, the creature must make a successful Constitution saving throw against your spell save DC or lose concentration.'),
('Slow', 'Transmutation', 3, 'Action', 120, 10, 'TRUE', 'FALSE', 'You alter time around up to six creatures of your choice in a 40-foot cube within range. Each target must succeed on a Wisdom saving throw or be affected by this spell for the duration.

An affected target''s speed is halved, it takes a -2 penalty to AC and Dexterity saving throws, and it can''t use reactions. On its turn, it can use either an action or a bonus action, not both. Regardless of the creature''s abilities or magic items, it can''t make more than one melee or ranged attack during its turn.

If the creature attempts to cast a spell with a casting time of 1 action, roll a d20. On an 11 or higher, the spell doesn''t take effect until the creature''s next turn, and the creature must use its action on that turn to complete the spell. If it can''t, the spell is wasted.

A creature affected by this spell makes another Wisdom saving throw at the end of each of its turns. On a successful save, the effect ends for it.'),
('Spare the Dying', 'Necromancy', 0, 'Action', 5, 0, 'FALSE', 'FALSE', 'You touch a living creature that has 0 hit points. The creature becomes stable. This spell has no effect on undead or constructs.'),
('Speak with Animals', 'Divination', 1, 'Action', 0, 100, 'FALSE', 'TRUE', 'You gain the ability to comprehend and verbally communicate with beasts for the duration. The knowledge and awareness of many beasts is limited by their intelligence, but at minimum, beasts can give you information about nearby locations and monsters, including whatever they can perceive or have perceived within the past day. You might be able to persuade a beast to perform a small favor for you, at the DM''s discretion.'),
('Speak with Dead', 'Necromancy', 3, 'Action', 10, 100, 'FALSE', 'FALSE', 'You grant the semblance of life and intelligence to a corpse of your choice within range, allowing it to answer the questions you pose. The corpse must still have a mouth and can''t be undead. The spell fails if the corpse was the target of this spell within the last 10 days.

Until the spell ends, you can ask the corpse up to five questions. The corpse knows only what it knew in life, including the languages it knew. Answers are usually brief, cryptic, or repetitive, and the corpse is under no compulsion to offer a truthful answer if you are hostile to it or it recognizes you as an enemy. This spell doesn''t return the creature''s soul to its body, only its animating spirit. Thus, the corpse can''t learn new information, doesn''t comprehend anything that has happened since it died, and can''t speculate about future events.'),
('Speak with Plants', 'Transmutation', 3, 'Action', 0, 100, 'FALSE', 'FALSE', 'You imbue plants within 30 feet of you with limited sentience and animation, giving them the ability to communicate with you and follow your simple commands. You can question plants about events in the spell''s area within the past day, gaining information about creatures that have passed, weather, and other circumstances.

You can also turn difficult terrain caused by plant growth (such as thickets and undergrowth) into ordinary terrain that lasts for the duration. Or you can turn ordinary terrain where plants are present into difficult terrain that lasts for the duration, causing vines and branches to hinder pursuers, for example.

Plants might be able to perform other tasks on your behalf, at the DM''s discretion. The spell doesn''t enable plants to uproot themselves and move about, but they can freely move branches, tendrils, and stalks.

If a plant creature is in the area, you can communicate with it as if you share a common language, but you gain no magical ability to influence it.

This spell can cause the plants created by the entangle spell to release a restrained creature.'),
('Spider Climb', 'Transmutation', 2, 'Action', 5, 600, 'TRUE', 'FALSE', 'Until the spell ends, one willing creature you touch gains the ability to move up, down, and across vertical surfaces and upside down along ceilings, while leaving its hands free. The target also gains a climbing speed equal to its walking speed.'),
('Spike Growth', 'Transmutation', 2, 'Action', 150, 100, 'TRUE', 'FALSE', 'The ground in a 20-foot radius centered on a point within range twists and sprouts hard spikes and thorns. The area becomes difficult terrain for the duration. When a creature moves into or within the area, it takes 2d4 piercing damage for every 5 feet it travels.

The transformation of the ground is camouflaged to look natural. Any creature that can''t see the area at the time the spell is cast must make a Wisdom (Perception) check against your spell save DC to recognize the terrain as hazardous before entering it.'),
('Spirit Guardians', 'Conjuration', 3, 'Action', 0, 100, 'TRUE', 'FALSE', 'You call forth spirits to protect you. They flit around you to a distance of 15 feet for the duration. If you are good or neutral, their spectral form appears angelic or fey (your choice). If you are evil, they appear fiendish.

When you cast this spell, you can designate any number of creatures you can see to be unaffected by it. An affected creature''s speed is halved in the area, and when the creature enters the area for the first time on a turn or starts its turn there, it must make a Wisdom saving throw. On a failed save, the creature takes 3d8 radiant damage (if you are good or neutral) or 3d8 necrotic damage (if you are evil). On a successful save, the creature takes half as much damage.

At Higher Levels: When you cast this spell using a spell slot of 4th level or higher, the damage increases by 1d8 for each slot level above 3rd.'),
('Spiritual Weapon', 'Evocation', 2, 'Bonus Action', 60, 10, 'FALSE', 'FALSE', 'You create a floating, spectral weapon within range that lasts for the duration or until you cast this spell again.

When you cast the spell, you can make a melee spell attack against a creature within 5 feet of the weapon. On a hit, the target takes force damage equal to 1d8 + your spellcasting ability modifier.

As a bonus action on your turn, you can move the weapon up to 20 feet and repeat the attack against a creature within 5 feet of it.

The weapon can take whatever form you choose. Clerics of deities who are associated with a particular weapon (as St. Cuthbert is known for his mace and Thor for his hammer) make this spell''s effect resemble that weapon.

At Higher Levels: When you cast this spell using a spell slot of 3rd level or higher, the damage increases by 1d8 for every two slot levels above the 2nd.'),
('Staggering Smite', 'Evocation', 4, 'Bonus Action', 0, 10, 'TRUE', 'FALSE', 'The next time you hit a creature with a melee weapon attack during this spell''s duration, your weapon pierces both body and mind, and the attack deals an extra 4d6 psychic damage to the target. The target must make a Wisdom saving throw. On a failed save, it has disadvantage on attack rolls and ability checks, and can''t take reactions, until the end of its next turn.'),
('Stinking Cloud', 'Conjuration', 3, 'Action', 90, 10, 'TRUE', 'FALSE', 'You create a 20-foot-radius sphere of yellow, nauseating gas centered on a point within range. The cloud spreads around corners, and its area is heavily obscured. The cloud lingers in the air for the duration.

Each creature that is completely within the cloud at the start of its turn must make a Constitution saving throw against poison. On a failed save, the creature spends its action that turn retching and reeling. Creatures that don''t need to breathe or are immune to poison automatically succeed on this saving throw.

A moderate wind (at least 10 miles per hour) disperses the cloud after 4 rounds. A strong wind (at least 20 miles per hour) disperses it after 1 round.'),
('Stone Shape', 'Transmutation', 4, 'Action', 5, 0, 'FALSE', 'FALSE', 'You touch a stone object of Medium size or smaller or a section of stone no more than 5 feet in any dimension and form it into any shape that suits your purpose. So, for example, you could shape a large rock into a weapon, idol, or coffer, or make a small passage through a wall, as long as the wall is less than 5 feet thick. You could also shape a stone door or its frame to seal the door shut. The object you create can have up to two hinges and a latch, but finer mechanical detail isn''t possible.'),
('Stoneskin', 'Abjuration', 4, 'Action', 5, 600, 'TRUE', 'FALSE', 'This spell turns the flesh of a willing creature you touch as hard as stone. Until the spell ends, the target has resistance to nonmagical bludgeoning, piercing, and slashing damage.'),
('Storm of Vengeance', 'Conjuration', 9, 'Action', 0, 10, 'TRUE', 'FALSE', 'A churning storm cloud forms, centered on a point you can see and spreading to a radius of 360 feet. Lightning flashes in the area, thunder booms, and strong winds roar. Each creature under the cloud (no more than 5,000 feet beneath the cloud) when it appears must make a Constitution saving throw. On a failed save, a creature takes 2d6 thunder damage and becomes deafened for 5 minutes.

Each round you maintain concentration on this spell, the storm produces different effects on your turn.

Round 2: Acidic rain falls from the cloud. Each creature and object under the cloud takes 1d6 acid damage.
Round 3: You call six bolts of lightning from the cloud to strike six creatures or objects of your choice beneath the cloud. A given creature or object can''t be struck by more than one bolt. A struck creature must make a Dexterity saving throw. The creature takes 10d6 lightning damage on a failed save, or half as much damage on a successful one.
Round 4: Hailstones rain down from the cloud. Each creature under the cloud takes 2d6 bludgeoning damage.
Round 5-10: Gusts and freezing rain assail the area under the cloud. The area becomes difficult terrain and is heavily obscured. Each creature there takes 1d6 cold damage. Ranged weapon attacks in the area are impossible. The wind and rain count as a severe distraction for the purposes of maintaining concentration on spells. Finally, gusts of strong wind (ranging from 20 to 50 miles per hour) automatically disperse fog, mists, and similar phenomena in the area whether mundane or magical.'),
('Suggestion', 'Enchantment', 2, 'Action', 30, 4800, 'TRUE', 'FALSE', 'You suggest a course of activity (limited to a sentence or two) and magically influence a creature you can see within range that can hear and understand you. Creatures that can''t be charmed are immune to this effect. The suggestion must be worded in such a manner as to make the course of action sound reasonable. Asking the creature to stab itself, throw itself onto a spear, immolate itself, or do some other obviously harmful act ends the spell.

The target must make a Wisdom saving throw. On a failed save, it purses the course of action you described to the best of its ability. The suggested course of action can continue for the entire duration. If the suggested activity can be completed in a shorter time, the spell ends when the subject finishes what it was asked to do.

You can also specify conditions that will trigger a special activity during the duration. For example, you might suggest that a knight give her warhorse to the first beggar she meets. If the condition isn''t met before the spell expires, the activity isn''t preformed.

If you or any of your companions damage the target, the spell ends.'),
('Sunbeam', 'Evocation', 6, 'Action', 60, 10, 'TRUE', 'FALSE', 'A beam of brilliant light flashes out from your hand in a 5-foot-wide, 60-foot-line. Each creature in the line must make a Constitution saving throw. On a failed save, a creature takes 6d8 radiant damage and is blinded until your next turn. On a successful save, it takes half as much damage and isn''t blinded by this spell. Undead and oozes have disadvantage on this saving throw.

You can create a new line of radiance as your action on any turn until the spell ends.

For the duration, a mote of brilliant radiance shines in your hand. It sheds bright light in a 30-foot radius and dim light for an additional 30 feet. The light is sunlight.'),
('Sunburst', 'Evocation', 8, 'Action', 150, 0, 'FALSE', 'FALSE', 'Brilliant sunlight flashes in a 60-foot radius centered on a point you choose within range. Each creature in that light must make a Constitution saving throw. On a failed save, a creature takes 12d6 radiant damage and is blinded for 1 minute. On a successful save, it takes half as much damage and isn''t blinded by this spell. Undead and oozes have disadvantage on this saving throw.

A creature blinded by this spell makes another Constitution saving throw at the end of each of its turns. On a successful save, it is no longer blinded.

This spell dispels any darkness in its area that was created by a spell.'),
('Swift Quiver', 'Transmutation', 5, 'Bonus Action', 5, 10, 'TRUE', 'FALSE', 'You transmute your quiver so it produces an endless supply of nonmagical ammunition, which seems to leap into your hand when you reach for it.

On each of your turns until the spell ends, you can use a bonus action to make two attacks with a weapon that uses ammunition from the quiver. Each time you make such a ranged attack, your quiver magically replaces the piece of ammunition you used with a similar piece of nonmagical ammunition. Any pieces of ammunition created by this spell disintegrate when the spell ends. If the quiver leaves your possession, the spell ends.'),
('Symbol', 'Abjuration', 7, '1 minute', 5, 0, 'FALSE', 'FALSE', 'When you cast this spell, you inscribe a harmful glyph either on a surface (such as a section of floor, a wall, or a table) or within an object that can be closed to conceal the glyph (such as a book, a scroll, or a treasure chest). If you choose a surface, the glyph can cover an area of the surface no larger than 10 feet in diameter. If you choose an object, that object must remain in its place; if the object is moved more than 10 feet from where you cast this spell, the glyph is broken, and the spell ends without being triggered.

The glyph is nearly invisible, requiring an Intelligence (Investigation) check against your spell save DC to find it.

You decide what triggers the glyph when you cast the spell. For glyphs inscribed on a surface, the most typical triggers include touching or stepping on the glyph, removing another object covering it, approaching within a certain distance of it, or manipulating the object that holds it. For glyphs inscribed within an object, the most common triggers are opening the object, approaching within a certain distance of it, or seeing or reading the glyph.

You can further refine the trigger so the spell is activated only under certain circumstances or according to a creature''s physical characteristics (such as height or weight), or physical kind (for example, the ward could be set to affect hags or shapechangers). You can also specify creatures that don''t trigger the glyph, such as those who say a certain password.

When you inscribe the glyph, choose one of the options below for its effect. Once triggered, the glyph glows, filling a 60-foot-radius sphere with dim light for 10 minutes, after which time the spell ends. Each creature in the sphere when the glyph activates is targeted by its effect, as is a creature that enters the sphere for the first time on a turn or ends its turn there.

Death - Each target must make a Constitution saving throw, taking 10d10 necrotic damage on a failed save, or half as much damage on a successful save.
Discord - Each target must make a Constitution saving throw. On a failed save, a target bickers and argues with other creatures for 1 minute. During this time, it is incapable of meaningful communication and has disadvantage on attack rolls and ability checks.
Fear - Each target must make a Wisdom saving throw and becomes frightened for 1 minute on a failed save. While frightened, the target drops whatever it is holding and must move at least 20 feet away from the glyph on each of its turns, if able.
Hopelessness - Each target must make a Charisma saving throw. On a failed save, the target is overwhelmed with despair for 1 minute. During this time, it can''t attack or target any creature with harmful abilities, spells, or other magical effects.
Insanity - Each target must make an Intelligence saving throw. On a failed save, the target is driven insane for 1 minute. An insane creature can''t take actions, can''t understand what other creatures say, can''t read, and speaks only in gibberish. The DM controls its movement, which is erratic.
Pain - Each target must make a Constitution saving throw and becomes incapacitated with excruciating pain for 1 minute on a failed save.
Sleep - Each target must make a Wisdom saving throw and falls unconscious for 10 minutes on a failed save. A creature awakens if it takes damage or if someone uses an action to shake or slap it awake.
Stunning - Each target must make a Wisdom saving throw and becomes stunned for 1 minute on a failed save.'),
('Tasha''s Hideous Laughter', 'Enchantment', 1, 'Action', 30, 10, 'TRUE', 'FALSE', 'A creature of your choice that you can see within range perceives everything as hilariously funny and falls into fits of laughter if this spell affects it. The target must succeed on a Wisdom saving throw or fall prone, becoming incapacitated and unable to stand up for the duration. A creature with an Intelligence score of 4 or less isn''t affected.

At the end of each of its turns, and each time it takes damage, the target can make another Wisdom saving throw. The target has advantage on the saving throw if it''s triggered by damage. On a success, the spell ends.'),
('Telekinesis', 'Transmutation', 5, 'Action', 60, 100, 'TRUE', 'FALSE', 'You gain the ability to move or manipulate creatures or objects by thought. When you cast the spell, and as your action each round for the duration, you can exert your will on one creature or object that you can see within range, causing the appropriate effect below. You can affect the same target round after round, or choose a new one at any time. If you switch targets, the prior target is no longer affected by the spell.

Creature:
You can try to move a Huge or smaller creature. Make an ability check with your spellcasting ability contested by the creature''s Strength check. If you win the contest, you move the creature up to 30 feet in any direction, including upward but not beyond the range of this spell. Until the end of your next turn, the creature is restrained in your telekinetic grip. A creature lifted upward is suspended in mid-air.
On subsequent rounds, you can use your action to attempt to maintain your telekinetic grip on the creature by repeating the contest.

Object:
You can try to move an object that weighs up to 1,000 pounds. If the object isn''t being worn or carried, you automatically move it up to 30 feet in any direction, but not beyond the range of this spell.
If the object is worn or carried by a creature, you must make an ability check with your spellcasting ability contested by that creature''s Strength check. If you succeed, you pull the object away from that creature and can move it up to 30 feet in any direction but not beyond the range of this spell.
You can exert fine control on objects with your telekinetic grip, such as manipulating a simple tool, opening a door or a container, stowing or retrieving an item from an open container, or pouring the contents from a vial.'),
('Telepathy', 'Evocation', 8, 'Action', 0, 14400, 'FALSE', 'FALSE', 'You create a telepathic link between yourself and a willing creature with which you are familiar. The creature can be anywhere on the same plane of existence as you. The spell ends if you or the target are no longer on the same plane.

Until the spell ends, you and the target can instantaneously share words, images, sounds, and other sensory messages with one another through the link, and the target recognizes you as the creature it is communicating with. The spell enables a creature with an Intelligence score of at least 1 to understand the meaning of your words and take in the scope of any sensory messages you send to it.'),
('Teleport', 'Conjuration', 7, 'Action', 10, 0, 'FALSE', 'FALSE', 'This spell instantly transports you and up to eight willing creatures of your choice that you can see within range, or a single object that you can see within range, to a destination you select. If you target an object, it must be able to fit entirely inside a 10-foot cube, and it can''t be held or carried by an unwilling creature.

The destination you choose must be known to you, and it must be on the same plane of existence as you. Your familiarity with the destination determines whether you arrive there successfully.'),
('Teleportation Circle', 'Conjuration', 5, '1 minute', 10, 1, 'FALSE', 'FALSE', 'As you cast the spell, you draw a 10-foot-diameter circle on the ground inscribed with sigils that link your location to a permanent teleportation circle of your choice whose sigil sequence you know and that is on the same plane of existence as you.

A shimmering portal opens within the circle you drew and remains open until the end of your next turn. Any creature that enters the portal instantly appears within 5 feet of the destination circle or in the nearest unoccupied space if that space is occupied.

Many major temples, guilds, and other important places have permanent teleportation circles inscribed somewhere within their confines. Each such circle includes a unique sigil sequence – a string of magical runes arranged in a particular pattern. When you first gain the ability to cast this spell, you learn the sigil sequences for two destinations on the Material Plane, determined by the DM. You can learn additional sigil sequences during your adventures. You can commit a new sigil sequence to memory after studying it for 1 minute.

You can create a permanent teleportation circle by casting this spell in the same location every day for one year. You need not use the circle to teleport when you cast the spell in this way.'),
('Tenser''s Floating Disk', 'Conjuration', 1, 'Action', 30, 600, 'FALSE', 'TRUE', 'This spell creates a circular, horizontal plane of force, 3 feet in diameter and 1 inch thick, that floats 3 feet above the ground in an unoccupied space of your choice that you can see within range. The disk remains for the duration, and can hold up to 500 pounds. If more weight is placed on it, the spell ends, and everything on the disk falls to the ground.

The disk is immobile while you are within 20 feet of it. If you move more than 20 feet away from it, the disk follows you so that it remains within 20 feet of you. It can move across uneven terrain, up or down stairs, slopes, and the like, but it can''t cross an elevation change of 10 feet or more. For example, the disk can''t move across a 10-foot-deep pit, nor could it leave such a pit if it were created at the bottom.

If you move more than 100 feet from the disk (typically because it can''t move around an obstacle to follow you), the spell ends.'),
('Thaumaturgy', 'Transmutation', 0, 'Action', 30, 10, 'FALSE', 'FALSE', 'You manifest a minor wonder, a sign of supernatural power, within range. You create one of the following magical effects within range:

- Your voice booms up to three times as loud as normal for 1 minute.
- You cause flames to flicker, brighten, dim, or change color for 1 minute.
- You cause harmless tremors in the ground for 1 minute.
- You create an instantaneous sound that originates from a point of your choice within range, such as a rumble of thunder, the cry of a raven, or ominous whispers.
- You instantaneously cause an unlocked door or window to fly open or slam shut.
- You alter the appearance of your eyes for 1 minute.

If you cast this spell multiple times, you can have up to three of its 1-minute effects active at a time, and you can dismiss such an effect as an action.'),
('Thorn Whip', 'Transmutation', 0, 'Action', 30, 0, 'FALSE', 'FALSE', 'You create a long, vine-like whip covered in thorns that lashes out at your command toward a creature in range. Make a melee spell attack against the target. If the attack hits, the creature takes 1d6 piercing damage, and if the creature is Large or smaller, you pull the creature up to 10 feet closer to you.

At Higher Levels: This spell''s damage increases by 1d6 when you reach 5th level (2d6), 11th level (3d6), and 17th level (4d6).'),
('Thunderous Smite', 'Evocation', 1, 'Bonus Action', 0, 10, 'TRUE', 'FALSE', 'The first time you hit with a melee weapon attack during this spell''s duration, your weapon rings with thunder that is audible within 300 feet of you, and the attack deals an extra 2d6 thunder damage to the target. Additionally, if the target is a creature, it must succeed on a Strength saving throw or be pushed 10 feet away from you and knocked prone.'),
('Thunderwave', 'Evocation', 1, 'Action', 15, 0, 'FALSE', 'FALSE', 'A wave of thunderous force sweeps out from you. Each creature in a 15-foot cube originating from you must make a Constitution saving throw. On a failed save, a creature takes 2d8 thunder damage and is pushed 10 feet away from you. On a successful save, the creature takes half as much damage and isn''t pushed.

In addition, unsecured objects that are completely within the area of effect are automatically pushed 10 feet away from you by the spell''s effect, and the spell emits a thunderous boom audible out to 300 feet.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d8 for each slot level above 1st.'),
('Time Stop', 'Transmutation', 9, 'Action', 0, 0, 'FALSE', 'FALSE', 'You briefly stop the flow of time for everyone but yourself. No time passes for other creatures, while you take 1d4 + 1 turns in a row, during which you can use actions and move as normal.

This spell ends if one of the actions you use during this period, or any effects that you create during this period, affects a creature other than you or an object being worn or carried by someone other than you. In addition, the spell ends if you move to a place more than 1,000 feet from the location where you cast it.'),
('Tongues', 'Divination', 3, 'Action', 5, 600, 'FALSE', 'FALSE', 'This spell grants the creature you touch the ability to understand any spoken language it hears. Moreover, when the target speaks, any creature that knows at least one language and can hear the target understands what it says.'),
('Transport via Plants', 'Conjuration', 6, 'Action', 10, 1, 'FALSE', 'FALSE', 'This spell creates a magical link between a Large or larger inanimate plant within range and another plant, at any distance, on the same plane of existence. You must have seen or touched the destination plant at least once before. For the duration, any creature can step into the target plant and exit from the destination plant by using 5 feet of movement.'),
('Tree Stride', 'Conjuration', 5, 'Action', 0, 10, 'TRUE', 'FALSE', 'You gain the ability to enter a tree and move from inside it to inside another tree of the same kind within 500 feet.

Both trees must be living and at least the same size as you. You must use 5 feet of movement to enter a tree. You instantly know the location of all other trees of the same kind within 500 feet and, as part of the move used to enter the tree, can either pass into one of those trees or step out of the tree you''re in. You appear in a spot of your choice within 5 feet of the destination tree, using another 5 feet of movement. If you have no movement left, you appear within 5 feet of the tree you entered.

You can use this transportation ability once per round for the duration. You must end each turn outside a tree.'),
('True Polymorph', 'Transmutation', 9, 'Action', 30, 600, 'TRUE', 'FALSE', 'Choose one creature or nonmagical object that you can see within range. You transform the creature into a different creature, the creature into a nonmagical object, or the object into a creature (the object must be neither worn nor carried by another creature). The transformation lasts for the duration, or until the target drops to 0 hit points or dies. If you concentrate on this spell for the full duration, the transformation becomes permanent.

Shapechangers aren''t affected by this spell. An unwilling creature can make a Wisdom saving throw, and if it succeeds, it isn''t affected by this spell.

This spell can''t affect a target that has 0 hit points.

Creature into Creature:
- If you turn a creature into another kind of creature, the new form can be any kind you choose whose challenge rating is equal to or less than the target''s (or its level, if the target doesn''t have a challenge rating). The target''s game statistics, including mental ability scores, are replaced by the statistics of the new form. It retains its alignment and personality.
- The target assumes the hit points of its new form, and when it reverts to its normal form, the creature returns to the number of hit points it had before it transformed. If it reverts as a result of dropping to 0 hit points, any excess damage carries over to its normal form. As long as the excess damage doesn''t reduce the creature''s normal form to 0 hit points, it isn''t knocked unconscious.
- The creature is limited in the actions it can perform by the nature of its new form, and it can''t speak, cast spells, or take any other action that requires hands or speech unless its new form is capable of such actions.
- The target''s gear melds into the new form. The creature can''t activate, use, wield, or otherwise benefit from any of its equipment.

Object into Creature:
- You can turn an object into any kind of creature, as long as the creature''s size is no larger than the object''s size and the creature''s challenge rating is 9 or lower. The creature is friendly to you and your companions. It acts on each of your turns. You decide what action it takes and how it moves. The DM has the creature''s statistics and resolves all of its actions and movement.
- If the spell becomes permanent, you no longer control the creature. It might remain friendly to you, depending on how you have treated it.

Creature into Object:
- If you turn a creature into an object, it transforms along with whatever it is wearing and carrying into that form, as long as the object''s size is no larger than the creature''s size. The creature''s statistics become those of the object, and the creature has no memory of time spent in this form, after the spell ends and it returns to its normal form.'),
('True Resurrection', 'Necromancy', 9, '1 hour', 5, 0, 'FALSE', 'FALSE', 'You touch a creature that has been dead for no longer than 200 years and that died for any reason except old age. If the creature''s soul is free and willing, the creature is restored to life with all its hit points.

This spell closes all wounds, neutralizes any poison, cures all diseases, and lifts any curses affecting the creature when it died. The spell replaces damaged or missing organs or limbs. If the creature was undead, it is restored to its non-undead form.

The spell can even provide a new body if the original no longer exists, in which case you must speak the creature''s name. The creature then appears in an unoccupied space you choose within 10 feet of you.'),
('True Seeing', 'Divination', 6, 'Action', 5, 600, 'FALSE', 'FALSE', 'This spell gives the willing creature you touch the ability to see things as they actually are. For the duration, the creature has truesight, notices secret doors hidden by magic, and can see into the Ethereal Plane, all out to a range of 120 feet.'),
('True Strike', 'Divination', 0, 'Action', 30, 1, 'TRUE', 'FALSE', 'You extend your hand and point a finger at a target in range. Your magic grants you a brief insight into the target''s defenses. On your next turn, you gain advantage on your first attack roll against the target, provided that this spell hasn''t ended.'),
('Tsunami', 'Conjuration', 8, 'Action', 5280, 6, 'TRUE', 'FALSE', 'A wall of water springs into existence at a point you choose within range. You can make the wall up to 300 feet long, 300 feet high, and 50 feet thick. The wall lasts for the duration.

When the wall appears, each creature within its area must make a Strength saving throw. On a failed save, a creature takes 6d10 bludgeoning damage, or half as much damage on a successful save.

At the start of each of your turns after the wall appears, the wall, along with any creatures in it, moves 50 feet away from you. Any Huge or smaller creature inside the wall or whose space the wall enters when it moves must succeed on a Strength saving throw or take 5d10 bludgeoning damage. A creature can take this damage only once per round. At the end of the turn, the wall''s height is reduced by 50 feet, and the damage creatures take from the spell on subsequent rounds is reduced by 1d10. When the wall reaches 0 feet in height, the spell ends.

A creature caught in the wall can move by swimming. Because of the force of the wave, though, the creature must make a successful Strength (Athletics) check against your spell save DC in order to move at all. If it fails the check, it can''t move. A creature that moves out of the area falls to the ground.'),
('Unseen Servant', 'Conjuration', 1, 'Action', 60, 600, 'FALSE', 'TRUE', 'This spell creates an invisible, mindless, shapeless, Medium force that performs simple tasks at your command until the spell ends. The servant springs into existence in an unoccupied space on the ground within range. It has AC 10, 1 hit point, and a Strength of 2, and it can''t attack. If it drops to 0 hit points, the spell ends.

Once on each of your turns as a bonus action, you can mentally command the servant to move up to 15 feet and interact with an object. The servant can perform simple tasks that a human servant could do, such as fetching things, cleaning, mending, folding clothes, lighting fires, serving food, and pouring wine. Once you give the command, the servant performs the task to the best of its ability until it completes the task, then waits for your next command.

If you command the servant to perform a task that would move it more than 60 feet away from you, the spell ends.'),
('Vampiric Touch', 'Necromancy', 3, 'Action', 0, 10, 'TRUE', 'FALSE', 'The touch of your shadow-wreathed hand can siphon force from others to heal your wounds. Make a melee spell attack against a creature within your reach. On a hit, the target takes 3d6 necrotic damage, and you regain hit points equal to half the amount of necrotic damage dealt. Until the spell ends, you can make the attack again on each of your turns as an action.

At Higher Levels: When you cast this spell using a spell slot of 4th level or higher, the damage increases by 1d6 for each slot level above 3rd.'),
('Vicious Mockery', 'Enchantment', 0, 'Action', 60, 0, 'FALSE', 'FALSE', 'You unleash a string of insults laced with subtle enchantments at a creature you can see within range. If the target can hear you (though it need not understand you), it must succeed on a Wisdom saving throw or take 1d4 psychic damage and have disadvantage on the next attack roll it makes before the end of its next turn.

At Higher Levels: This spell''s damage increases by 1d4 when you reach 5th level (2d4), 11th level (3d4), and 17th level (4d4).'),
('Wall of Fire', 'Evocation', 4, 'Action', 120, 10, 'TRUE', 'FALSE', 'You create a wall of fire on a solid surface within range. You can make the wall up to 60 feet long, 20 feet high, and 1 foot thick, or a ringed wall up to 20 feet in diameter, 20 feet high, and 1 foot thick. The wall is opaque and lasts for the duration.

When the wall appears, each creature within its area must make a Dexterity saving throw. On a failed save, a creature takes 5d8 fire damage, or half as much damage on a successful save.

One side of the wall, selected by you when you cast this spell, deals 5d8 fire damage to each creature that ends its turn within 10 feet of that side or inside the wall. A creature takes the same damage when it enters the wall for the first time on a turn or ends its turn there. The other side of the wall deals no damage.

At Higher Levels: When you cast this spell using a spell slot of 5th level or higher, the damage increases by 1d8 for each slot level above 4th.'),
('Wall of Force', 'Evocation', 5, 'Action', 120, 100, 'TRUE', 'FALSE', 'An invisible wall of force springs into existence at a point you choose within range.
The wall appears in any orientation you choose, as a horizontal or vertical barrier or at an angle. It can be free floating or resting on a solid surface. You can form it into a hemispherical dome or a sphere with a radius of up to 10 feet, or you can shape a flat surface made up of ten 10-foot-by-10-foot panels. Each panel must be contiguous with another panel. In any form, the wall is 1/4 inch thick. It lasts for the duration. If the wall cuts through a creature''s space when it appears, the creature is pushed to one side of the wall (your choice which side).

Nothing can physically pass through the wall. It is immune to all damage and can''t be dispelled by dispel magic. A disintegrate spell destroys the wall instantly, however. The wall also extends into the Ethereal Plane, blocking ethereal travel through the wall.'),
('Wall of Ice', 'Evocation', 6, 'Action', 120, 100, 'TRUE', 'FALSE', 'You create a wall of ice on a solid surface within range. You can form it into a hemispherical dome or a sphere with radius of up to 10 feet, or you can shape a flat surface made up of ten 10-foot-square panels. Each panel must be contiguous with another panel. In any form, the wall is 1 foot thick and lasts for the duration.

If the wall cuts through a creature''s space when it appears, the creature within its area is pushed to one side of the wall and must make a Dexterity saving throw. On a failed save, the creature takes 10d6 cold damage, or half as much damage on a successful save.

The wall is an object that can be damaged and thus breached. It has AC 12 and 30 hit points per 10-foot section, and it is vulnerable to fire damage. Reducing a 10-foot section of wall to 0 hit points destroys it and leaves behind a sheet of frigid air in he space the wall occupied. A creature moving through the sheet of frigid air for the first time on a turn must make a Constitution saving throw. The creature takes 5d6 cold damage on a failed save, or half as much damage on a successful one.

At Higher Levels: When you cast this spell using a spell slot of 7th level or higher, the damage the wall deals when it appears increases by 2d6, and the damage from passing through the sheet of frigid air increases by 1d6, for each slot level above 6th.'),
('Wall of Stone', 'Evocation', 5, 'Action', 120, 100, 'TRUE', 'FALSE', 'A nonmagical wall of solid stone springs into existence at a point you choose within range. The wall is 6 inches thick and is composed of ten 10-foot-by-10-foot panels. Each panel must be contiguous with at least on other panel. Alternatively, you can create 10-foot-by-20-foot panels that are only 3 inches thick.

If the wall cuts through a creature''s space when it appears, the creature is pushed to one side of the wall (your choice). If a creature would be surrounded on all sides by the wall (or the wall and another solid surface), that creature can make a Dexterity saving throw. On a success, it can use its reaction to move up to its speed so that it is no longer enclosed by the wall.

The wall can have any shape you desire, though it can''t occupy the same space as a creature or object. the wall doesn''t need to be vertical or resting on any firm foundation. It must, however, merge with and be solidly supported by existing stone. Thus you can use this spell to bridge a chasm or create a ramp.

If you create a span greater than 20 feet in length, you must halve the size of each panel to create supports. You can crudely shape the wall to create crenelations, battlements, and so on.

The wall is an object made of stone that can be damaged and thus breached. Each panel has AC 15 and 30 hit points per inch of thickness. Reducing a panel to 0 hit points destroys it and might cause connected panels to collapse at the DM''s discretion.

If you maintain your concentration on this spell for its whole duration, the wall becomes permanent and can''t be dispelled. Otherwise, the wall disappears when the spell ends.'),
('Wall of Thorns', 'Conjuration', 6, 'Action', 120, 100, 'TRUE', 'FALSE', 'You create a wall of tough, pliable, tangled brush bristling with needle-sharp thorns. The wall appears within range on a solid surface and lasts for the duration. You choose to make the wall up to 60 feet long, 10 feet high, and 5 feet thick or a circle that has a 20-foot diameter and is up to 20 feet high and 5 feet thick. The wall blocks line of sight.

When the wall appears, each creature within its area must make a Dexterity saving throw. On a failed save, a creature takes 7d8 piercing damage, or half as much damage on a successful save.

A creature can move through the wall, albeit slowly and painfully. For every 1 foot a creature moves through the wall, it must spend 4 feet of movement. Furthermore, the first time a creature enters the wall on a turn or ends its turn there, the creature must make a Dexterity saving throw. It takes 7d8 slashing damage on a failed save, or half as much on a successful save.

At Higher Levels: When you cast this spell using a spell slot of 7th level or higher, both types of damage increase by 1d8 for each slot level above 6th.'),
('Warding Bond', 'Abjuration', 2, 'Action', 5, 600, 'FALSE', 'FALSE', 'This spell wards a willing creature you touch and creates a mystic connection between you and the target until the spell ends.

While the target is within 60 feet of you, it gains a +1 bonus to AC and saving throws, and it has resistance to all damage. Also, each time it takes damage, you take the same amount of damage.

The spell ends if you drop to 0 hit points or if you and the target become separated by more than 60 feet. It also ends if the spell is cast again on either of the connected creatures. You can also dismiss the spell as an action.'),
('Water Breathing', 'Transmutation', 3, 'Action', 30, 14400, 'FALSE', 'TRUE', 'This spell grants up to ten willing creatures you can see within range the ability to breathe underwater until the spell ends. Affected creatures also retain their normal mode of respiration.'),
('Water Walk', 'Transmutation', 3, 'Action', 30, 600, 'FALSE', 'TRUE', 'This spell grants the ability to move across any liquid surface – such as water, acid, mud, snow, quicksand, or lava – as if it were harmless solid ground (creatures crossing molten lava can still take damage from the heat). Up to ten willing creatures you can see within range gain this ability for the duration.

If you target a creature submerged in a liquid, the spell carries the target to the surface of the liquid at a rate of 60 feet per round.'),
('Web', 'Conjuration', 2, 'Action', 60, 600, 'TRUE', 'FALSE', 'You conjure a mass of thick, sticky webbing at a point of your choice within range. The webs fill a 20-foot cube from that point for the duration. The webs are difficult terrain and lightly obscure their area.

If the webs aren''t anchored between two solid masses (such as walls or trees) or layered across a floor, wall, or ceiling, the conjured web collapses on itself, and the spell ends at the start of your next turn. Webs layered over a flat surface have a depth of 5 feet.

Each creature that starts its turn in the webs or that enters them during its turn must make a Dexterity saving throw. On a failed save, the creature is restrained as long as it remains in the webs or until it breaks free.

A creature restrained by the webs can use its action to make a Strength check against your spell save DC. If it succeeds, it is no longer restrained.

The webs are flammable. Any 5-foot cube of webs exposed to fire burns away in 1 round, dealing 2d4 fire damage to any creature that starts its turn in the fire.'),
('Weird', 'Illusion', 9, 'Action', 120, 10, 'TRUE', 'FALSE', 'Drawing on the deepest fears of a group of creatures, you create illusory creatures in their minds, visible only to them.

Each creature in a 30-foot-radius sphere centered on a point of your choice within range must make a Wisdom saving throw. On a failed save, a creature becomes frightened for the duration.
The illusion calls on the creature''s deepest fears, manifesting its worst nightmares as an implacable threat. At the end of each of the frightened creature''s turns, it must succeed on a Wisdom saving throw or take 4d10 psychic damage. On a successful save, the spell ends for that creature.'),
('Wind Walk', 'Transmutation', 6, '1 minute', 30, 4800, 'FALSE', 'FALSE', 'You and up to ten willing creatures you can see within range assume a gaseous form for the duration, appearing as wisps of cloud. While in this cloud form, a creature has a flying speed of 300 feet and has resistance to damage from nonmagical weapons. The only actions a creature can take in this form are the Dash action or to revert to its normal form.

Reverting takes 1 minute, during which time a creature is incapacitated and can''t move. Until the spell ends, a creature can revert to cloud form, which also requires the 1-minute transformation.

If a creature is in cloud form and flying when the effect ends, the creature descends 60 feet per round for 1 minute until it lands, which it does safely. If it can''t land after 1 minute, the creature falls the remaining distance.'),
('Wind Wall', 'Evocation', 3, 'Action', 120, 10, 'TRUE', 'FALSE', 'A wall of strong wind rises from the ground at a point you choose within range. You can make the wall up to 50 feet long, 15 feet high, and 1 foot thick. You can shape the wall in any way you choose so long as it makes one continuous path along the ground. The wall lasts for the duration.

When the wall appears, each creature within its area must make a Strength saving throw. A creature takes 3d8 bludgeoning damage on a failed save, or half as much damage on a successful one.

The strong wind keeps fog, smoke, and other gases at bay. Small or smaller flying creatures or objects can''t pass through the wall. Loose, lightweight materials brought into the wall fly upward. Arrows, bolts, and other ordinary projectiles launched at targets behind the wall are deflected upward and automatically miss. (Boulders hurled by giants or siege engines, and similar projectiles, are unaffected.) Creatures in gaseous form can''t pass through it.'),
('Wish', 'Conjuration', 9, 'Action', 0, 0, 'FALSE', 'FALSE', 'Wish is the mightiest spell a mortal creature can cast. By simply speaking aloud, you can alter the very foundations of reality in accord with your desires.

The basic use of this spell is to duplicate any other spell of 8th level or lower. You don''t need to meet any requirements in that spell, including costly components. The spell simply takes effect.

Alternatively, you can create one of the following effects of your choice:

You create one object of up to 25,000 gp in value that isn''t a magic item. The object can be no more than 300 feet in any dimension, and it appears in an unoccupied space you can see on the ground.
You allow up to twenty creatures that you can see to regain all hit points, and you end all effects on them described in the greater restoration spell.
You grant up to ten creatures that you can see resistance to a damage type you choose.
You grant up to ten creatures you can see immunity to a single spell or other magical effect for 8 hours. For instance, you could make yourself and all your companions immune to a lich''s life drain attack.
You undo a single recent event by forcing a reroll of any roll made within the last round (including your last turn). Reality reshapes itself to accommodate the new result. For example, a wish spell could undo an opponent''s successful save, a foe''s critical hit, or a friend''s failed save. You can force the reroll to be made with advantage or disadvantage, and you can choose whether to use the reroll or the original roll.
You might be able to achieve something beyond the scope of the above examples. State your wish to the DM as precisely as possible. The DM has great latitude in ruling what occurs in such an instance; the greater the wish, the greater the likelihood that something goes wrong. This spell might simply fail, the effect you desire might only be partly achieved, or you might suffer some unforeseen consequence as a result of how you worded the wish. For example, wishing that a villain were dead might propel you forward in time to a period when that villain is no longer alive, effectively removing you from the game. Similarly, wishing for a legendary magic item or artifact might instantly transport you to the presence of the item''s current owner.

The stress of casting this spell to produce any effect other than duplicating another spell weakens you. After enduring that stress, each time you cast a spell until you finish a long rest, you take 1d10 necrotic damage per level of that spell. This damage can''t be reduced or prevented in any way. In addition, your Strength drops to 3, if it isn''t 3 or lower already, for 2d4 days. For each of those days that you spend resting and doing nothing more than light activity, your remaining recovery time decreases by 2 days. Finally, there is a 33 percent chance that you are unable to cast wish ever again if you suffer this stress.'),
('Witch Bolt', 'Evocation', 1, 'Action', 30, 10, 'TRUE', 'FALSE', 'A beam of crackling, blue energy lances out toward a creature within range, forming a sustained arc of lightning between you and the target. Make a ranged spell attack against that creature. On a hit, the target takes 1d12 lightning damage, and on each of your turns for the duration, you can use your action to deal 1d12 lightning damage to the target automatically. The spell ends if you use your action to do anything else. The spell also ends if the target is ever outside the spell''s range or if it has total cover from you.

At Higher Levels: When you cast this spell using a spell slot of 2nd level or higher, the initial damage increases by 1d12 for each slot level above 1st.'),
('Word of Recall', 'Conjuration', 6, 'Action', 5, 0, 'FALSE', 'FALSE', 'You and up to five willing creatures within 5 feet of you instantly teleport to a previously designated sanctuary. You and any creatures that teleport with you appear in the nearest unoccupied space to the spot you designated when you prepared your sanctuary (see below). If you cast this spell without first preparing a sanctuary, the spell has no effect.

You must designate a sanctuary by casting this spell within a location, such as a temple, dedicated to or strongly linked to your deity. If you attempt to cast the spell in this manner in an area that isn''t dedicated to your deity, the spell has no effect.'),
('Wrathful Smite', 'Evocation', 1, 'Bonus Action', 0, 10, 'TRUE', 'FALSE', 'The next time you hit with a melee weapon attack during this spell''s duration, your attack deals an extra 1d6 psychic damage. Additionally, if the target is a creature, it must make a Wisdom saving throw or be frightened of you until the spell ends. As an action, the creature can make a Wisdom check against your spell save DC to steel its resolve and end this spell.'),
('Zone of Truth', 'Enchantment', 2, 'Action', 60, 100, 'FALSE', 'FALSE', 'You create a magical zone that guards against deception in a 15-foot-radius sphere centered on a point of your choice within range. Until the spell ends, a creature that enters the spell''s area for the first time on a turn or starts its turn there must make a Charisma saving throw. On a failed save, a creature can''t speak a deliberate lie while in the radius. You know whether each creature succeeds or fails on its saving throw.

An affected creature is aware of the spell and can thus avoid answering questions to which it would normally respond with a lie. Such creatures can be evasive in its answers as long as it remains within the boundaries of the truth.');
end
if not exists (select 1 from dbo.[ClassSpells])
begin
	insert into dbo.[ClassSpells] ([ClassGroup], [SpellId])
	values ('Artificer', 1),
			('Sorcerer', 1),
			('Wizard', 1),
			('Artificer', 2),
			('Cleric', 2),
			('Paladin', 2),
			('Artificer', 3),
			('Ranger', 3),
			('Wizard', 3),
			('Artificer', 4),
			('Sorcerer', 4),
			('Wizard', 4),
			('Bard', 5),
			('Druid', 5),
			('Ranger', 5),
			('Bard', 6),
			('Druid', 6),
			('Ranger', 6),
			('Druid', 7),
			('Cleric', 8),
			('Wizard', 8),
			('Artificer', 9),
			('Bard', 9),
			('Sorcerer', 9),
			('Wizard', 9),
			('Druid', 10),
			('Cleric', 11),
			('Wizard', 11),
			('Druid', 12),
			('Wizard', 12),
			('Artificer', 13),
			('Wizard', 13),
			('Sorcerer', 14),
			('Warlock', 14),
			('Wizard', 14),
			('Artificer', 15),
			('Wizard', 15),
			('Warlock', 16),
			('Warlock', 17),
			('Cleric', 18),
			('Warlock', 18),
			('Wizard', 18),
			('Cleric', 19),
			('Paladin', 20),
			('Paladin', 21),
			('Paladin', 22),
			('Bard', 23),
			('Druid', 23),
			('Bard', 24),
			('Cleric', 24),
			('Paladin', 25),
			('Cleric', 26),
			('Paladin', 26),
			('Sorcerer', 26),
			('Warlock', 26),
			('Wizard', 26),
			('Druid', 27),
			('Ranger', 27),
			('Cleric', 28),
			('Druid', 29),
			('Ranger', 29),
			('Bard', 30),
			('Cleric', 30),
			('Wizard', 30),
			('Artificer', 31),
			('Wizard', 31),
			('Cleric', 32),
			('Bard', 33),
			('Sorcerer', 33),
			('Warlock', 33),
			('Wizard', 33),
			('Cleric', 34),
			('Paladin', 34),
			('Druid', 35),
			('Sorcerer', 35),
			('Warlock', 35),
			('Wizard', 35),
			('Paladin', 36),
			('Bard', 37),
			('Cleric', 37),
			('Sorcerer', 37),
			('Wizard', 37),
			('Artificer', 38),
			('Sorcerer', 38),
			('Wizard', 38),
			('Artificer', 39),
			('Sorcerer', 39),
			('Wizard', 39),
			('Paladin', 40),
			('Sorcerer', 41),
			('Wizard', 41),
			('Druid', 42),
			('Bard', 43),
			('Cleric', 43),
			('Sorcerer', 44),
			('Wizard', 44),
			('Bard', 45),
			('Druid', 45),
			('Sorcerer', 45),
			('Warlock', 45),
			('Wizard', 45),
			('Sorcerer', 46),
			('Warlock', 46),
			('Wizard', 46),
			('Sorcerer', 47),
			('Wizard', 47),
			('Sorcerer', 48),
			('Warlock', 48),
			('Wizard', 48),
			('Paladin', 49),
			('Bard', 50),
			('Cleric', 50),
			('Sorcerer', 50),
			('Wizard', 50),
			('Wizard', 51),
			('Bard', 52),
			('Sorcerer', 52),
			('Warlock', 52),
			('Wizard', 52),
			('Sorcerer', 53),
			('Wizard', 53),
			('Sorcerer', 54),
			('Wizard', 54),
			('Cleric', 55),
			('Paladin', 55),
			('Cleric', 56),
			('Druid', 57),
			('Ranger', 57),
			('Paladin', 58),
			('Bard', 59),
			('Sorcerer', 59),
			('Warlock', 59),
			('Wizard', 59),
			('Bard', 60),
			('Sorcerer', 61),
			('Wizard', 61),
			('Bard', 62),
			('Druid', 62),
			('Sorcerer', 62),
			('Wizard', 62),
			('Druid', 63),
			('Ranger', 63),
			('Ranger', 64),
			('Cleric', 65),
			('Druid', 66),
			('Wizard', 66),
			('Druid', 67),
			('Warlock', 67),
			('Druid', 68),
			('Wizard', 68),
			('Ranger', 69),
			('Druid', 70),
			('Ranger', 70),
			('Warlock', 71),
			('Wizard', 71),
			('Cleric', 72),
			('Druid', 72),
			('Wizard', 73),
			('Artificer', 74),
			('Cleric', 74),
			('Wizard', 74),
			('Cleric', 75),
			('Druid', 75),
			('Wizard', 75),
			('Cleric', 76),
			('Druid', 76),
			('Wizard', 76),
			('Ranger', 77),
			('Sorcerer', 78),
			('Warlock', 78),
			('Wizard', 78),
			('Artificer', 79),
			('Cleric', 79),
			('Paladin', 79),
			('Cleric', 80),
			('Druid', 80),
			('Cleric', 81),
			('Warlock', 81),
			('Wizard', 81),
			('Artificer', 82),
			('Sorcerer', 82),
			('Wizard', 82),
			('Bard', 83),
			('Sorcerer', 83),
			('Warlock', 83),
			('Wizard', 83),
			('Paladin', 84),
			('Artificer', 85),
			('Bard', 85),
			('Cleric', 85),
			('Druid', 85),
			('Paladin', 85),
			('Ranger', 85),
			('Artificer', 86),
			('Bard', 86),
			('Sorcerer', 86),
			('Wizard', 86),
			('Sorcerer', 87),
			('Warlock', 87),
			('Wizard', 87),
			('Artificer', 88),
			('Druid', 88),
			('Ranger', 88),
			('Sorcerer', 88),
			('Wizard', 88),
			('Cleric', 89),
			('Druid', 89),
			('Paladin', 89),
			('Ranger', 89),
			('Sorcerer', 89),
			('Cleric', 90),
			('Paladin', 90),
			('Sorcerer', 91),
			('Wizard', 91),
			('Warlock', 92),
			('Wizard', 92),
			('Paladin', 93),
			('Cleric', 94),
			('Paladin', 94),
			('Artificer', 95),
			('Bard', 95),
			('Cleric', 95),
			('Druid', 95),
			('Paladin', 95),
			('Ranger', 95),
			('Sorcerer', 95),
			('Wizard', 95),
			('Cleric', 96),
			('Druid', 96),
			('Paladin', 96),
			('Ranger', 96),
			('Bard', 97),
			('Sorcerer', 97),
			('Wizard', 97),
			('Bard', 98),
			('Sorcerer', 98),
			('Warlock', 98),
			('Wizard', 98),
			('Artificer', 99),
			('Bard', 99),
			('Sorcerer', 99),
			('Wizard', 99),
			('Sorcerer', 100),
			('Wizard', 100),
			('Cleric', 101),
			('Paladin', 101),
			('Artificer', 102),
			('Bard', 102),
			('Cleric', 102),
			('Druid', 102),
			('Paladin', 102),
			('Sorcerer', 102),
			('Warlock', 102),
			('Wizard', 102),
			('Bard', 103),
			('Cleric', 104),
			('Paladin', 105),
			('Cleric', 106),
			('Druid', 107),
			('Sorcerer', 107),
			('Bard', 108),
			('Sorcerer', 108),
			('Warlock', 108),
			('Wizard', 108),
			('Bard', 109),
			('Sorcerer', 109),
			('Wizard', 109),
			('Wizard', 110),
			('Bard', 111),
			('Warlock', 111),
			('Wizard', 111),
			('Druid', 112),
			('Cleric', 113),
			('Druid', 113),
			('Sorcerer', 113),
			('Warlock', 114),
			('Artificer', 115),
			('Paladin', 115),
			('Artificer', 116),
			('Bard', 116),
			('Cleric', 116),
			('Druid', 116),
			('Sorcerer', 116),
			('Artificer', 117),
			('Sorcerer', 117),
			('Wizard', 117),
			('Ranger', 118),
			('Druid', 119),
			('Bard', 120),
			('Warlock', 120),
			('Bard', 121),
			('Cleric', 121),
			('Sorcerer', 121),
			('Warlock', 121),
			('Wizard', 121),
			('Wizard', 122),
			('Artificer', 123),
			('Sorcerer', 123),
			('Warlock', 123),
			('Wizard', 123),
			('Bard', 124),
			('Sorcerer', 124),
			('Warlock', 124),
			('Wizard', 124),
			('Artificer', 125),
			('Wizard', 125),
			('Artificer', 126),
			('Bard', 126),
			('Druid', 126),
			('Artificer', 127),
			('Sorcerer', 127),
			('Wizard', 127),
			('Bard', 128),
			('Sorcerer', 128),
			('Warlock', 128),
			('Wizard', 128),
			('Artificer', 129),
			('Bard', 129),
			('Sorcerer', 129),
			('Wizard', 129),
			('Bard', 130),
			('Druid', 130),
			('Warlock', 130),
			('Wizard', 130),
			('Bard', 131),
			('Cleric', 131),
			('Druid', 131),
			('Wizard', 131),
			('Wizard', 132),
			('Paladin', 133),
			('Bard', 134),
			('Cleric', 134),
			('Druid', 134),
			('Cleric', 135),
			('Druid', 135),
			('Ranger', 135),
			('Sorcerer', 136),
			('Warlock', 136),
			('Wizard', 136),
			('Sorcerer', 137),
			('Wizard', 137),
			('Artificer', 138),
			('Sorcerer', 138),
			('Wizard', 138),
			('Wizard', 139),
			('Cleric', 140),
			('Druid', 140),
			('Sorcerer', 140),
			('Druid', 141),
			('Cleric', 142),
			('Druid', 143),
			('Wizard', 143),
			('Warlock', 144),
			('Wizard', 144),
			('Artificer', 145),
			('Sorcerer', 145),
			('Warlock', 145),
			('Wizard', 145),
			('Druid', 146),
			('Ranger', 146),
			('Sorcerer', 146),
			('Wizard', 146),
			('Cleric', 147),
			('Bard', 148),
			('Warlock', 148),
			('Wizard', 148),
			('Bard', 149),
			('Druid', 149),
			('Warlock', 149),
			('Wizard', 149),
			('Artificer', 150),
			('Bard', 150),
			('Cleric', 150),
			('Druid', 150),
			('Ranger', 150),
			('Bard', 151),
			('Sorcerer', 151),
			('Warlock', 151),
			('Wizard', 151),
			('Sorcerer', 152),
			('Warlock', 152),
			('Wizard', 152),
			('Cleric', 153),
			('Sorcerer', 153),
			('Wizard', 153),
			('Bard', 154),
			('Cleric', 154),
			('Druid', 154),
			('Paladin', 154),
			('Wizard', 154),
			('Cleric', 155),
			('Wizard', 155),
			('Druid', 156),
			('Bard', 157),
			('Warlock', 157),
			('Sorcerer', 158),
			('Wizard', 158),
			('Artificer', 159),
			('Bard', 159),
			('Cleric', 159),
			('Wizard', 159),
			('Druid', 160),
			('Ranger', 160),
			('Druid', 161),
			('Ranger', 161),
			('Artificer', 162),
			('Wizard', 162),
			('Bard', 163),
			('Sorcerer', 163),
			('Wizard', 163),
			('Artificer', 164),
			('Bard', 164),
			('Cleric', 164),
			('Druid', 164),
			('Cleric', 165),
			('Bard', 166),
			('Wizard', 166),
			('Artificer', 167),
			('Cleric', 167),
			('Druid', 167),
			('Cleric', 168),
			('Druid', 169),
			('Sorcerer', 169),
			('Wizard', 169),
			('Ranger', 170),
			('Cleric', 171),
			('Bard', 172),
			('Druid', 172),
			('Warlock', 172),
			('Wizard', 172),
			('Cleric', 173),
			('Artificer', 174),
			('Sorcerer', 174),
			('Wizard', 174),
			('Cleric', 175),
			('Druid', 175),
			('Bard', 176),
			('Cleric', 176),
			('Druid', 176),
			('Artificer', 177),
			('Bard', 177),
			('Druid', 177),
			('Warlock', 178),
			('Cleric', 179),
			('Druid', 179),
			('Bard', 180),
			('Paladin', 180),
			('Warlock', 181),
			('Bard', 182),
			('Sorcerer', 182),
			('Warlock', 182),
			('Wizard', 182),
			('Bard', 183),
			('Cleric', 183),
			('Druid', 183),
			('Sorcerer', 183),
			('Warlock', 183),
			('Wizard', 183),
			('Cleric', 184),
			('Warlock', 185),
			('Ranger', 186),
			('Bard', 187),
			('Sorcerer', 187),
			('Warlock', 187),
			('Wizard', 187),
			('Druid', 188),
			('Sorcerer', 188),
			('Wizard', 188),
			('Artificer', 189),
			('Bard', 189),
			('Wizard', 189),
			('Bard', 190),
			('Warlock', 190),
			('Wizard', 190),
			('Warlock', 191),
			('Wizard', 191),
			('Sorcerer', 192),
			('Wizard', 192),
			('Cleric', 193),
			('Cleric', 194),
			('Druid', 194),
			('Sorcerer', 194),
			('Artificer', 195),
			('Bard', 195),
			('Sorcerer', 195),
			('Warlock', 195),
			('Wizard', 195),
			('Artificer', 196),
			('Druid', 196),
			('Ranger', 196),
			('Sorcerer', 196),
			('Wizard', 196),
			('Bard', 197),
			('Sorcerer', 197),
			('Wizard', 197),
			('Bard', 198),
			('Cleric', 198),
			('Wizard', 198),
			('Artificer', 199),
			('Wizard', 199),
			('Bard', 200),
			('Wizard', 200),
			('Artificer', 201),
			('Bard', 201),
			('Cleric', 201),
			('Druid', 201),
			('Paladin', 201),
			('Ranger', 201),
			('Artificer', 202),
			('Sorcerer', 202),
			('Wizard', 202),
			('Artificer', 203),
			('Bard', 203),
			('Cleric', 203),
			('Sorcerer', 203),
			('Wizard', 203),
			('Ranger', 204),
			('Sorcerer', 205),
			('Wizard', 205),
			('Bard', 206),
			('Druid', 206),
			('Ranger', 206),
			('Bard', 207),
			('Cleric', 207),
			('Druid', 207),
			('Paladin', 207),
			('Ranger', 207),
			('Wizard', 207),
			('Bard', 208),
			('Cleric', 208),
			('Druid', 208),
			('Paladin', 208),
			('Ranger', 208),
			('Wizard', 208),
			('Artificer', 209),
			('Bard', 209),
			('Druid', 209),
			('Ranger', 209),
			('Wizard', 209),
			('Sorcerer', 210),
			('Wizard', 210),
			('Artificer', 211),
			('Bard', 211),
			('Sorcerer', 211),
			('Warlock', 211),
			('Wizard', 211),
			('Cleric', 212),
			('Paladin', 212),
			('Warlock', 212),
			('Wizard', 212),
			('Wizard', 213),
			('Sorcerer', 214),
			('Wizard', 214),
			('Artificer', 215),
			('Bard', 215),
			('Wizard', 215),
			('Artificer', 216),
			('Paladin', 216),
			('Wizard', 216),
			('Bard', 217),
			('Sorcerer', 217),
			('Warlock', 217),
			('Wizard', 217),
			('Bard', 218),
			('Cleric', 218),
			('Druid', 218),
			('Cleric', 219),
			('Cleric', 220),
			('Bard', 221),
			('Sorcerer', 221),
			('Warlock', 221),
			('Wizard', 221),
			('Wizard', 222),
			('Cleric', 223),
			('Druid', 223),
			('Wizard', 224),
			('Artificer', 225),
			('Bard', 225),
			('Cleric', 225),
			('Druid', 225),
			('Sorcerer', 225),
			('Wizard', 225),
			('Artificer', 226),
			('Bard', 226),
			('Sorcerer', 226),
			('Wizard', 226),
			('Sorcerer', 227),
			('Wizard', 227),
			('Bard', 228),
			('Wizard', 228),
			('Bard', 229),
			('Sorcerer', 229),
			('Warlock', 229),
			('Wizard', 229),
			('Bard', 230),
			('Druid', 230),
			('Wizard', 230),
			('Sorcerer', 231),
			('Warlock', 231),
			('Wizard', 231),
			('Bard', 232),
			('Wizard', 232),
			('Sorcerer', 233),
			('Warlock', 233),
			('Wizard', 233),
			('Bard', 234),
			('Wizard', 234),
			('Druid', 235),
			('Artificer', 236),
			('Wizard', 236),
			('Bard', 237),
			('Wizard', 237),
			('Artificer', 238),
			('Wizard', 238),
			('Bard', 239),
			('Warlock', 239),
			('Druid', 240),
			('Sorcerer', 240),
			('Wizard', 240),
			('Bard', 241),
			('Ranger', 241),
			('Wizard', 241),
			('Wizard', 242),
			('Wizard', 243),
			('Wizard', 244),
			('Artificer', 244),
			('Bard', 245),
			('Wizard', 245),
			('Druid', 246),
			('Ranger', 246),
			('Wizard', 247),
			('Bard', 248),
			('Sorcerer', 248),
			('Wizard', 248),
			('Wizard', 249),
			('Wizard', 250),
			('Cleric', 251),
			('Bard', 252),
			('Cleric', 252),
			('Druid', 252),
			('Wizard', 252),
			('Cleric', 253),
			('Druid', 253),
			('Sorcerer', 253),
			('Warlock', 253),
			('Wizard', 253),
			('Bard', 254),
			('Druid', 254),
			('Ranger', 254),
			('Artificer', 255),
			('Druid', 255),
			('Sorcerer', 255),
			('Warlock', 255),
			('Wizard', 255),
			('Bard', 256),
			('Druid', 256),
			('Sorcerer', 256),
			('Wizard', 256),
			('Bard', 257),
			('Bard', 258),
			('Sorcerer', 258),
			('Warlock', 258),
			('Wizard', 258),
			('Bard', 259),
			('Sorcerer', 259),
			('Warlock', 259),
			('Wizard', 259),
			('Cleric', 260),
			('Artificer', 261),
			('Bard', 261),
			('Sorcerer', 261),
			('Warlock', 261),
			('Wizard', 261),
			('Bard', 262),
			('Sorcerer', 262),
			('Wizard', 262),
			('Wizard', 263),
			('Druid', 264),
			('Bard', 265),
			('Wizard', 265),
			('Bard', 266),
			('Wizard', 266),
			('Artificer', 267),
			('Cleric', 267),
			('Druid', 267),
			('Ranger', 267),
			('Sorcerer', 267),
			('Wizard', 267),
			('Cleric', 268),
			('Paladin', 268),
			('Warlock', 268),
			('Wizard', 268),
			('Artificer', 269),
			('Cleric', 269),
			('Druid', 269),
			('Paladin', 269),
			('Ranger', 269),
			('Artificer', 270),
			('Cleric', 270),
			('Druid', 270),
			('Paladin', 270),
			('Bard', 271),
			('Cleric', 271),
			('Paladin', 271),
			('Wizard', 272),
			('Warlock', 273),
			('Wizard', 273),
			('Artificer', 274),
			('Sorcerer', 274),
			('Wizard', 274),
			('Sorcerer', 275),
			('Wizard', 275),
			('Bard', 276),
			('Cleric', 276),
			('Druid', 276),
			('Druid', 277),
			('Cleric', 278),
			('Paladin', 278),
			('Warlock', 278),
			('Wizard', 278),
			('Artificer', 279),
			('Cleric', 279),
			('Druid', 279),
			('Bard', 280),
			('Cleric', 280),
			('Druid', 281),
			('Sorcerer', 281),
			('Wizard', 281),
			('Artificer', 282),
			('Cleric', 282),
			('Paladin', 282),
			('Artificer', 283),
			('Wizard', 283),
			('Cleric', 284),
			('Artificer', 285),
			('Cleric', 285),
			('Sorcerer', 286),
			('Wizard', 286),
			('Bard', 287),
			('Cleric', 287),
			('Druid', 287),
			('Warlock', 287),
			('Wizard', 287),
			('Paladin', 288),
			('Artificer', 289),
			('Bard', 289),
			('Sorcerer', 289),
			('Wizard', 289),
			('Bard', 290),
			('Sorcerer', 290),
			('Wizard', 290),
			('Bard', 291),
			('Cleric', 291),
			('Wizard', 291),
			('Wizard', 292),
			('Druid', 293),
			('Warlock', 293),
			('Wizard', 293),
			('Bard', 294),
			('Sorcerer', 294),
			('Warlock', 294),
			('Wizard', 294),
			('Sorcerer', 295),
			('Wizard', 295),
			('Cleric', 296),
			('Paladin', 296),
			('Druid', 297),
			('Artificer', 298),
			('Sorcerer', 298),
			('Wizard', 298),
			('Bard', 299),
			('Cleric', 299),
			('Ranger', 299),
			('Bard', 300),
			('Sorcerer', 300),
			('Wizard', 300),
			('Wizard', 301),
			('Bard', 302),
			('Sorcerer', 302),
			('Wizard', 302),
			('Druid', 303),
			('Sorcerer', 303),
			('Wizard', 303),
			('Sorcerer', 304),
			('Wizard', 304),
			('Artificer', 305),
			('Cleric', 305),
			('Bard', 306),
			('Druid', 306),
			('Ranger', 306),
			('Bard', 307),
			('Cleric', 307),
			('Bard', 308),
			('Druid', 308),
			('Ranger', 308),
			('Artificer', 309),
			('Sorcerer', 309),
			('Warlock', 309),
			('Wizard', 309),
			('Druid', 310),
			('Ranger', 310),
			('Cleric', 311),
			('Cleric', 312),
			('Paladin', 313),
			('Bard', 314),
			('Sorcerer', 314),
			('Wizard', 314),
			('Artificer', 315),
			('Cleric', 315),
			('Druid', 315),
			('Wizard', 315),
			('Artificer', 316),
			('Druid', 316),
			('Ranger', 316),
			('Sorcerer', 316),
			('Wizard', 316),
			('Druid', 317),
			('Bard', 318),
			('Sorcerer', 318),
			('Warlock', 318),
			('Wizard', 318),
			('Druid', 319),
			('Sorcerer', 319),
			('Wizard', 319),
			('Druid', 320),
			('Sorcerer', 320),
			('Wizard', 320),
			('Ranger', 321),
			('Bard', 322),
			('Cleric', 322),
			('Wizard', 322),
			('Bard', 323),
			('Wizard', 323),
			('Sorcerer', 324),
			('Wizard', 324),
			('Wizard', 325),
			('Bard', 326),
			('Sorcerer', 326),
			('Wizard', 326),
			('Bard', 327),
			('Sorcerer', 327),
			('Wizard', 327),
			('Wizard', 328),
			('Cleric', 329),
			('Artificer', 330),
			('Druid', 330),
			('Paladin', 331),
			('Bard', 332),
			('Druid', 332),
			('Sorcerer', 332),
			('Wizard', 332),
			('Sorcerer', 333),
			('Wizard', 333),
			('Bard', 334),
			('Cleric', 334),
			('Sorcerer', 334),
			('Warlock', 334),
			('Wizard', 334),
			('Druid', 335),
			('Druid', 336),
			('Ranger', 336),
			('Bard', 337),
			('Warlock', 337),
			('Wizard', 337),
			('Cleric', 338),
			('Druid', 338),
			('Bard', 339),
			('Cleric', 339),
			('Sorcerer', 339),
			('Warlock', 339),
			('Wizard', 339),
			('Bard', 340),
			('Sorcerer', 340),
			('Warlock', 340),
			('Wizard', 340),
			('Druid', 341),
			('Bard', 342),
			('Warlock', 342),
			('Wizard', 342),
			('Wizard', 343),
			('Bard', 344),
			('Druid', 345),
			('Sorcerer', 345),
			('Wizard', 345),
			('Wizard', 346),
			('Wizard', 347),
			('Artificer', 348),
			('Druid', 348),
			('Sorcerer', 348),
			('Wizard', 348),
			('Druid', 349),
			('Cleric', 350),
			('Artificer', 351),
			('Druid', 351),
			('Ranger', 351),
			('Sorcerer', 351),
			('Wizard', 351),
			('Artificer', 352),
			('Cleric', 352),
			('Druid', 352),
			('Ranger', 352),
			('Sorcerer', 352),
			('Artificer', 353),
			('Sorcerer', 353),
			('Wizard', 353),
			('Wizard', 354),
			('Druid', 355),
			('Druid', 356),
			('Ranger', 356),
			('Sorcerer', 357),
			('Wizard', 357),
			('Sorcerer', 358),
			('Warlock', 358),
			('Wizard', 358),
			('Cleric', 359),
			('Paladin', 360),
			('Bard', 361),
			('Cleric', 361),
			('Paladin', 361);
end
if not exists (select 1 from dbo.[ClassLevels])
begin
	insert into dbo.[ClassLevels] ([BaseClass], [Subclass], [Level], [HitDie], [SpellcastingAbility], [SpellcastingProgression])
	values ('Barbarian', '', 1, 12, '', ''),
			('Barbarian', '', 2, 12, '', ''),
			('Barbarian', 'Berserker', 3, 12, '', ''),
			('Barbarian', 'Berserker', 4, 12, '', ''),
			('Barbarian', 'Berserker', 5, 12, '', ''),
			('Barbarian', 'Berserker', 6, 12, '', ''),
			('Barbarian', 'Berserker', 7, 12, '', ''),
			('Barbarian', 'Berserker', 8, 12, '', ''),
			('Barbarian', 'Berserker', 9, 12, '', ''),
			('Barbarian', 'Berserker', 10, 12, '', ''),
			('Barbarian', 'Berserker', 11, 12, '', ''),
			('Barbarian', 'Berserker', 12, 12, '', ''),
			('Barbarian', 'Berserker', 13, 12, '', ''),
			('Barbarian', 'Berserker', 14, 12, '', ''),
			('Barbarian', 'Berserker', 15, 12, '', ''),
			('Barbarian', 'Berserker', 16, 12, '', ''),
			('Barbarian', 'Berserker', 17, 12, '', ''),
			('Barbarian', 'Berserker', 18, 12, '', ''),
			('Barbarian', 'Berserker', 19, 12, '', ''),
			('Barbarian', 'Berserker', 20, 12, '', ''),
			('Barbarian', 'Totem Warrior', 3, 12, '', ''),
			('Barbarian', 'Totem Warrior', 4, 12, '', ''),
			('Barbarian', 'Totem Warrior', 5, 12, '', ''),
			('Barbarian', 'Totem Warrior', 6, 12, '', ''),
			('Barbarian', 'Totem Warrior', 7, 12, '', ''),
			('Barbarian', 'Totem Warrior', 8, 12, '', ''),
			('Barbarian', 'Totem Warrior', 9, 12, '', ''),
			('Barbarian', 'Totem Warrior', 10, 12, '', ''),
			('Barbarian', 'Totem Warrior', 11, 12, '', ''),
			('Barbarian', 'Totem Warrior', 12, 12, '', ''),
			('Barbarian', 'Totem Warrior', 13, 12, '', ''),
			('Barbarian', 'Totem Warrior', 14, 12, '', ''),
			('Barbarian', 'Totem Warrior', 15, 12, '', ''),
			('Barbarian', 'Totem Warrior', 16, 12, '', ''),
			('Barbarian', 'Totem Warrior', 17, 12, '', ''),
			('Barbarian', 'Totem Warrior', 18, 12, '', ''),
			('Barbarian', 'Totem Warrior', 19, 12, '', ''),
			('Barbarian', 'Totem Warrior', 20, 12, '', ''),
			('Barbarian', 'Wild Magic', 3, 12, '', ''),
			('Barbarian', 'Wild Magic', 4, 12, '', ''),
			('Barbarian', 'Wild Magic', 5, 12, '', ''),
			('Barbarian', 'Wild Magic', 6, 12, '', ''),
			('Barbarian', 'Wild Magic', 7, 12, '', ''),
			('Barbarian', 'Wild Magic', 8, 12, '', ''),
			('Barbarian', 'Wild Magic', 9, 12, '', ''),
			('Barbarian', 'Wild Magic', 10, 12, '', ''),
			('Barbarian', 'Wild Magic', 11, 12, '', ''),
			('Barbarian', 'Wild Magic', 12, 12, '', ''),
			('Barbarian', 'Wild Magic', 13, 12, '', ''),
			('Barbarian', 'Wild Magic', 14, 12, '', ''),
			('Barbarian', 'Wild Magic', 15, 12, '', ''),
			('Barbarian', 'Wild Magic', 16, 12, '', ''),
			('Barbarian', 'Wild Magic', 17, 12, '', ''),
			('Barbarian', 'Wild Magic', 18, 12, '', ''),
			('Barbarian', 'Wild Magic', 19, 12, '', ''),
			('Barbarian', 'Wild Magic', 20, 12, '', ''),
			('Bard', '', 1, 8, 'Charisma', 6),
			('Bard', '', 2, 8, 'Charisma', 6),
			('Bard', 'Lore', 3, 8, 'Charisma', 6),
			('Bard', 'Lore', 4, 8, 'Charisma', 6),
			('Bard', 'Lore', 5, 8, 'Charisma', 6),
			('Bard', 'Lore', 6, 8, 'Charisma', 6),
			('Bard', 'Lore', 7, 8, 'Charisma', 6),
			('Bard', 'Lore', 8, 8, 'Charisma', 6),
			('Bard', 'Lore', 9, 8, 'Charisma', 6),
			('Bard', 'Lore', 10, 8, 'Charisma', 6),
			('Bard', 'Lore', 11, 8, 'Charisma', 6),
			('Bard', 'Lore', 12, 8, 'Charisma', 6),
			('Bard', 'Lore', 13, 8, 'Charisma', 6),
			('Bard', 'Lore', 14, 8, 'Charisma', 6),
			('Bard', 'Lore', 15, 8, 'Charisma', 6),
			('Bard', 'Lore', 16, 8, 'Charisma', 6),
			('Bard', 'Lore', 17, 8, 'Charisma', 6),
			('Bard', 'Lore', 18, 8, 'Charisma', 6),
			('Bard', 'Lore', 19, 8, 'Charisma', 6),
			('Bard', 'Lore', 20, 8, 'Charisma', 6),
			('Bard', 'Swords', 3, 8, 'Charisma', 6),
			('Bard', 'Swords', 4, 8, 'Charisma', 6),
			('Bard', 'Swords', 5, 8, 'Charisma', 6),
			('Bard', 'Swords', 6, 8, 'Charisma', 6),
			('Bard', 'Swords', 7, 8, 'Charisma', 6),
			('Bard', 'Swords', 8, 8, 'Charisma', 6),
			('Bard', 'Swords', 9, 8, 'Charisma', 6),
			('Bard', 'Swords', 10, 8, 'Charisma', 6),
			('Bard', 'Swords', 11, 8, 'Charisma', 6),
			('Bard', 'Swords', 12, 8, 'Charisma', 6),
			('Bard', 'Swords', 13, 8, 'Charisma', 6),
			('Bard', 'Swords', 14, 8, 'Charisma', 6),
			('Bard', 'Swords', 15, 8, 'Charisma', 6),
			('Bard', 'Swords', 16, 8, 'Charisma', 6),
			('Bard', 'Swords', 17, 8, 'Charisma', 6),
			('Bard', 'Swords', 18, 8, 'Charisma', 6),
			('Bard', 'Swords', 19, 8, 'Charisma', 6),
			('Bard', 'Swords', 20, 8, 'Charisma', 6),
			('Bard', 'Valor', 3, 8, 'Charisma', 6),
			('Bard', 'Valor', 4, 8, 'Charisma', 6),
			('Bard', 'Valor', 5, 8, 'Charisma', 6),
			('Bard', 'Valor', 6, 8, 'Charisma', 6),
			('Bard', 'Valor', 7, 8, 'Charisma', 6),
			('Bard', 'Valor', 8, 8, 'Charisma', 6),
			('Bard', 'Valor', 9, 8, 'Charisma', 6),
			('Bard', 'Valor', 10, 8, 'Charisma', 6),
			('Bard', 'Valor', 11, 8, 'Charisma', 6),
			('Bard', 'Valor', 12, 8, 'Charisma', 6),
			('Bard', 'Valor', 13, 8, 'Charisma', 6),
			('Bard', 'Valor', 14, 8, 'Charisma', 6),
			('Bard', 'Valor', 15, 8, 'Charisma', 6),
			('Bard', 'Valor', 16, 8, 'Charisma', 6),
			('Bard', 'Valor', 17, 8, 'Charisma', 6),
			('Bard', 'Valor', 18, 8, 'Charisma', 6),
			('Bard', 'Valor', 19, 8, 'Charisma', 6),
			('Bard', 'Valor', 20, 8, 'Charisma', 6),
			('Cleric', 'Knowledge', 1, 8, 'Wisdom', 6),
			('Cleric', 'Knowledge', 2, 8, 'Wisdom', 6),
			('Cleric', 'Knowledge', 3, 8, 'Wisdom', 6),
			('Cleric', 'Knowledge', 4, 8, 'Wisdom', 6),
			('Cleric', 'Knowledge', 5, 8, 'Wisdom', 6),
			('Cleric', 'Knowledge', 6, 8, 'Wisdom', 6),
			('Cleric', 'Knowledge', 7, 8, 'Wisdom', 6),
			('Cleric', 'Knowledge', 8, 8, 'Wisdom', 6),
			('Cleric', 'Knowledge', 9, 8, 'Wisdom', 6),
			('Cleric', 'Knowledge', 10, 8, 'Wisdom', 6),
			('Cleric', 'Knowledge', 11, 8, 'Wisdom', 6),
			('Cleric', 'Knowledge', 12, 8, 'Wisdom', 6),
			('Cleric', 'Knowledge', 13, 8, 'Wisdom', 6),
			('Cleric', 'Knowledge', 14, 8, 'Wisdom', 6),
			('Cleric', 'Knowledge', 15, 8, 'Wisdom', 6),
			('Cleric', 'Knowledge', 16, 8, 'Wisdom', 6),
			('Cleric', 'Knowledge', 17, 8, 'Wisdom', 6),
			('Cleric', 'Knowledge', 18, 8, 'Wisdom', 6),
			('Cleric', 'Knowledge', 19, 8, 'Wisdom', 6),
			('Cleric', 'Knowledge', 20, 8, 'Wisdom', 6),
			('Cleric', 'Life', 1, 8, 'Wisdom', 6),
			('Cleric', 'Life', 2, 8, 'Wisdom', 6),
			('Cleric', 'Life', 3, 8, 'Wisdom', 6),
			('Cleric', 'Life', 4, 8, 'Wisdom', 6),
			('Cleric', 'Life', 5, 8, 'Wisdom', 6),
			('Cleric', 'Life', 6, 8, 'Wisdom', 6),
			('Cleric', 'Life', 7, 8, 'Wisdom', 6),
			('Cleric', 'Life', 8, 8, 'Wisdom', 6),
			('Cleric', 'Life', 9, 8, 'Wisdom', 6),
			('Cleric', 'Life', 10, 8, 'Wisdom', 6),
			('Cleric', 'Life', 11, 8, 'Wisdom', 6),
			('Cleric', 'Life', 12, 8, 'Wisdom', 6),
			('Cleric', 'Life', 13, 8, 'Wisdom', 6),
			('Cleric', 'Life', 14, 8, 'Wisdom', 6),
			('Cleric', 'Life', 15, 8, 'Wisdom', 6),
			('Cleric', 'Life', 16, 8, 'Wisdom', 6),
			('Cleric', 'Life', 17, 8, 'Wisdom', 6),
			('Cleric', 'Life', 18, 8, 'Wisdom', 6),
			('Cleric', 'Life', 19, 8, 'Wisdom', 6),
			('Cleric', 'Life', 20, 8, 'Wisdom', 6),
			('Cleric', 'Light', 1, 8, 'Wisdom', 6),
			('Cleric', 'Light', 2, 8, 'Wisdom', 6),
			('Cleric', 'Light', 3, 8, 'Wisdom', 6),
			('Cleric', 'Light', 4, 8, 'Wisdom', 6),
			('Cleric', 'Light', 5, 8, 'Wisdom', 6),
			('Cleric', 'Light', 6, 8, 'Wisdom', 6),
			('Cleric', 'Light', 7, 8, 'Wisdom', 6),
			('Cleric', 'Light', 8, 8, 'Wisdom', 6),
			('Cleric', 'Light', 9, 8, 'Wisdom', 6),
			('Cleric', 'Light', 10, 8, 'Wisdom', 6),
			('Cleric', 'Light', 11, 8, 'Wisdom', 6),
			('Cleric', 'Light', 12, 8, 'Wisdom', 6),
			('Cleric', 'Light', 13, 8, 'Wisdom', 6),
			('Cleric', 'Light', 14, 8, 'Wisdom', 6),
			('Cleric', 'Light', 15, 8, 'Wisdom', 6),
			('Cleric', 'Light', 16, 8, 'Wisdom', 6),
			('Cleric', 'Light', 17, 8, 'Wisdom', 6),
			('Cleric', 'Light', 18, 8, 'Wisdom', 6),
			('Cleric', 'Light', 19, 8, 'Wisdom', 6),
			('Cleric', 'Light', 20, 8, 'Wisdom', 6),
			('Cleric', 'Nature', 1, 8, 'Wisdom', 6),
			('Cleric', 'Nature', 2, 8, 'Wisdom', 6),
			('Cleric', 'Nature', 3, 8, 'Wisdom', 6),
			('Cleric', 'Nature', 4, 8, 'Wisdom', 6),
			('Cleric', 'Nature', 5, 8, 'Wisdom', 6),
			('Cleric', 'Nature', 6, 8, 'Wisdom', 6),
			('Cleric', 'Nature', 7, 8, 'Wisdom', 6),
			('Cleric', 'Nature', 8, 8, 'Wisdom', 6),
			('Cleric', 'Nature', 9, 8, 'Wisdom', 6),
			('Cleric', 'Nature', 10, 8, 'Wisdom', 6),
			('Cleric', 'Nature', 11, 8, 'Wisdom', 6),
			('Cleric', 'Nature', 12, 8, 'Wisdom', 6),
			('Cleric', 'Nature', 13, 8, 'Wisdom', 6),
			('Cleric', 'Nature', 14, 8, 'Wisdom', 6),
			('Cleric', 'Nature', 15, 8, 'Wisdom', 6),
			('Cleric', 'Nature', 16, 8, 'Wisdom', 6),
			('Cleric', 'Nature', 17, 8, 'Wisdom', 6),
			('Cleric', 'Nature', 18, 8, 'Wisdom', 6),
			('Cleric', 'Nature', 19, 8, 'Wisdom', 6),
			('Cleric', 'Nature', 20, 8, 'Wisdom', 6),
			('Cleric', 'Tempest', 1, 8, 'Wisdom', 6),
			('Cleric', 'Tempest', 2, 8, 'Wisdom', 6),
			('Cleric', 'Tempest', 3, 8, 'Wisdom', 6),
			('Cleric', 'Tempest', 4, 8, 'Wisdom', 6),
			('Cleric', 'Tempest', 5, 8, 'Wisdom', 6),
			('Cleric', 'Tempest', 6, 8, 'Wisdom', 6),
			('Cleric', 'Tempest', 7, 8, 'Wisdom', 6),
			('Cleric', 'Tempest', 8, 8, 'Wisdom', 6),
			('Cleric', 'Tempest', 9, 8, 'Wisdom', 6),
			('Cleric', 'Tempest', 10, 8, 'Wisdom', 6),
			('Cleric', 'Tempest', 11, 8, 'Wisdom', 6),
			('Cleric', 'Tempest', 12, 8, 'Wisdom', 6),
			('Cleric', 'Tempest', 13, 8, 'Wisdom', 6),
			('Cleric', 'Tempest', 14, 8, 'Wisdom', 6),
			('Cleric', 'Tempest', 15, 8, 'Wisdom', 6),
			('Cleric', 'Tempest', 16, 8, 'Wisdom', 6),
			('Cleric', 'Tempest', 17, 8, 'Wisdom', 6),
			('Cleric', 'Tempest', 18, 8, 'Wisdom', 6),
			('Cleric', 'Tempest', 19, 8, 'Wisdom', 6),
			('Cleric', 'Tempest', 20, 8, 'Wisdom', 6),
			('Cleric', 'Trickery', 1, 8, 'Wisdom', 6),
			('Cleric', 'Trickery', 2, 8, 'Wisdom', 6),
			('Cleric', 'Trickery', 3, 8, 'Wisdom', 6),
			('Cleric', 'Trickery', 4, 8, 'Wisdom', 6),
			('Cleric', 'Trickery', 5, 8, 'Wisdom', 6),
			('Cleric', 'Trickery', 6, 8, 'Wisdom', 6),
			('Cleric', 'Trickery', 7, 8, 'Wisdom', 6),
			('Cleric', 'Trickery', 8, 8, 'Wisdom', 6),
			('Cleric', 'Trickery', 9, 8, 'Wisdom', 6),
			('Cleric', 'Trickery', 10, 8, 'Wisdom', 6),
			('Cleric', 'Trickery', 11, 8, 'Wisdom', 6),
			('Cleric', 'Trickery', 12, 8, 'Wisdom', 6),
			('Cleric', 'Trickery', 13, 8, 'Wisdom', 6),
			('Cleric', 'Trickery', 14, 8, 'Wisdom', 6),
			('Cleric', 'Trickery', 15, 8, 'Wisdom', 6),
			('Cleric', 'Trickery', 16, 8, 'Wisdom', 6),
			('Cleric', 'Trickery', 17, 8, 'Wisdom', 6),
			('Cleric', 'Trickery', 18, 8, 'Wisdom', 6),
			('Cleric', 'Trickery', 19, 8, 'Wisdom', 6),
			('Cleric', 'Trickery', 20, 8, 'Wisdom', 6),
			('Cleric', 'War', 1, 8, 'Wisdom', 6),
			('Cleric', 'War', 2, 8, 'Wisdom', 6),
			('Cleric', 'War', 3, 8, 'Wisdom', 6),
			('Cleric', 'War', 4, 8, 'Wisdom', 6),
			('Cleric', 'War', 5, 8, 'Wisdom', 6),
			('Cleric', 'War', 6, 8, 'Wisdom', 6),
			('Cleric', 'War', 7, 8, 'Wisdom', 6),
			('Cleric', 'War', 8, 8, 'Wisdom', 6),
			('Cleric', 'War', 9, 8, 'Wisdom', 6),
			('Cleric', 'War', 10, 8, 'Wisdom', 6),
			('Cleric', 'War', 11, 8, 'Wisdom', 6),
			('Cleric', 'War', 12, 8, 'Wisdom', 6),
			('Cleric', 'War', 13, 8, 'Wisdom', 6),
			('Cleric', 'War', 14, 8, 'Wisdom', 6),
			('Cleric', 'War', 15, 8, 'Wisdom', 6),
			('Cleric', 'War', 16, 8, 'Wisdom', 6),
			('Cleric', 'War', 17, 8, 'Wisdom', 6),
			('Cleric', 'War', 18, 8, 'Wisdom', 6),
			('Cleric', 'War', 19, 8, 'Wisdom', 6),
			('Cleric', 'War', 20, 8, 'Wisdom', 6),
			('Druid', '', 1, 8, 'Wisdom', 6),
			('Druid', 'Land', 2, 8, 'Wisdom', 6),
			('Druid', 'Land', 3, 8, 'Wisdom', 6),
			('Druid', 'Land', 4, 8, 'Wisdom', 6),
			('Druid', 'Land', 5, 8, 'Wisdom', 6),
			('Druid', 'Land', 6, 8, 'Wisdom', 6),
			('Druid', 'Land', 7, 8, 'Wisdom', 6),
			('Druid', 'Land', 8, 8, 'Wisdom', 6),
			('Druid', 'Land', 9, 8, 'Wisdom', 6),
			('Druid', 'Land', 10, 8, 'Wisdom', 6),
			('Druid', 'Land', 11, 8, 'Wisdom', 6),
			('Druid', 'Land', 12, 8, 'Wisdom', 6),
			('Druid', 'Land', 13, 8, 'Wisdom', 6),
			('Druid', 'Land', 14, 8, 'Wisdom', 6),
			('Druid', 'Land', 15, 8, 'Wisdom', 6),
			('Druid', 'Land', 16, 8, 'Wisdom', 6),
			('Druid', 'Land', 17, 8, 'Wisdom', 6),
			('Druid', 'Land', 18, 8, 'Wisdom', 6),
			('Druid', 'Land', 19, 8, 'Wisdom', 6),
			('Druid', 'Land', 20, 8, 'Wisdom', 6),
			('Druid', 'Moon', 2, 8, 'Wisdom', 6),
			('Druid', 'Moon', 3, 8, 'Wisdom', 6),
			('Druid', 'Moon', 4, 8, 'Wisdom', 6),
			('Druid', 'Moon', 5, 8, 'Wisdom', 6),
			('Druid', 'Moon', 6, 8, 'Wisdom', 6),
			('Druid', 'Moon', 7, 8, 'Wisdom', 6),
			('Druid', 'Moon', 8, 8, 'Wisdom', 6),
			('Druid', 'Moon', 9, 8, 'Wisdom', 6),
			('Druid', 'Moon', 10, 8, 'Wisdom', 6),
			('Druid', 'Moon', 11, 8, 'Wisdom', 6),
			('Druid', 'Moon', 12, 8, 'Wisdom', 6),
			('Druid', 'Moon', 13, 8, 'Wisdom', 6),
			('Druid', 'Moon', 14, 8, 'Wisdom', 6),
			('Druid', 'Moon', 15, 8, 'Wisdom', 6),
			('Druid', 'Moon', 16, 8, 'Wisdom', 6),
			('Druid', 'Moon', 17, 8, 'Wisdom', 6),
			('Druid', 'Moon', 18, 8, 'Wisdom', 6),
			('Druid', 'Moon', 19, 8, 'Wisdom', 6),
			('Druid', 'Moon', 20, 8, 'Wisdom', 6),
			('Druid', 'Spores', 2, 8, 'Wisdom', 6),
			('Druid', 'Spores', 3, 8, 'Wisdom', 6),
			('Druid', 'Spores', 4, 8, 'Wisdom', 6),
			('Druid', 'Spores', 5, 8, 'Wisdom', 6),
			('Druid', 'Spores', 6, 8, 'Wisdom', 6),
			('Druid', 'Spores', 7, 8, 'Wisdom', 6),
			('Druid', 'Spores', 8, 8, 'Wisdom', 6),
			('Druid', 'Spores', 9, 8, 'Wisdom', 6),
			('Druid', 'Spores', 10, 8, 'Wisdom', 6),
			('Druid', 'Spores', 11, 8, 'Wisdom', 6),
			('Druid', 'Spores', 12, 8, 'Wisdom', 6),
			('Druid', 'Spores', 13, 8, 'Wisdom', 6),
			('Druid', 'Spores', 14, 8, 'Wisdom', 6),
			('Druid', 'Spores', 15, 8, 'Wisdom', 6),
			('Druid', 'Spores', 16, 8, 'Wisdom', 6),
			('Druid', 'Spores', 17, 8, 'Wisdom', 6),
			('Druid', 'Spores', 18, 8, 'Wisdom', 6),
			('Druid', 'Spores', 19, 8, 'Wisdom', 6),
			('Druid', 'Spores', 20, 8, 'Wisdom', 6),
			('Fighter', '', 1, 10, '', ''),
			('Fighter', '', 2, 10, '', ''),
			('Fighter', 'Battle Master', 3, 10, '', ''),
			('Fighter', 'Battle Master', 4, 10, '', ''),
			('Fighter', 'Battle Master', 5, 10, '', ''),
			('Fighter', 'Battle Master', 6, 10, '', ''),
			('Fighter', 'Battle Master', 7, 10, '', ''),
			('Fighter', 'Battle Master', 8, 10, '', ''),
			('Fighter', 'Battle Master', 9, 10, '', ''),
			('Fighter', 'Battle Master', 10, 10, '', ''),
			('Fighter', 'Battle Master', 11, 10, '', ''),
			('Fighter', 'Battle Master', 12, 10, '', ''),
			('Fighter', 'Battle Master', 13, 10, '', ''),
			('Fighter', 'Battle Master', 14, 10, '', ''),
			('Fighter', 'Battle Master', 15, 10, '', ''),
			('Fighter', 'Battle Master', 16, 10, '', ''),
			('Fighter', 'Battle Master', 17, 10, '', ''),
			('Fighter', 'Battle Master', 18, 10, '', ''),
			('Fighter', 'Battle Master', 19, 10, '', ''),
			('Fighter', 'Battle Master', 20, 10, '', ''),
			('Fighter', 'Champion', 3, 10, '', ''),
			('Fighter', 'Champion', 4, 10, '', ''),
			('Fighter', 'Champion', 5, 10, '', ''),
			('Fighter', 'Champion', 6, 10, '', ''),
			('Fighter', 'Champion', 7, 10, '', ''),
			('Fighter', 'Champion', 8, 10, '', ''),
			('Fighter', 'Champion', 9, 10, '', ''),
			('Fighter', 'Champion', 10, 10, '', ''),
			('Fighter', 'Champion', 11, 10, '', ''),
			('Fighter', 'Champion', 12, 10, '', ''),
			('Fighter', 'Champion', 13, 10, '', ''),
			('Fighter', 'Champion', 14, 10, '', ''),
			('Fighter', 'Champion', 15, 10, '', ''),
			('Fighter', 'Champion', 16, 10, '', ''),
			('Fighter', 'Champion', 17, 10, '', ''),
			('Fighter', 'Champion', 18, 10, '', ''),
			('Fighter', 'Champion', 19, 10, '', ''),
			('Fighter', 'Champion', 20, 10, '', ''),
			('Fighter', 'Eldritch Knight', 3, 10, 'Intelligence', 2),
			('Fighter', 'Eldritch Knight', 4, 10, 'Intelligence', 2),
			('Fighter', 'Eldritch Knight', 5, 10, 'Intelligence', 2),
			('Fighter', 'Eldritch Knight', 6, 10, 'Intelligence', 2),
			('Fighter', 'Eldritch Knight', 7, 10, 'Intelligence', 2),
			('Fighter', 'Eldritch Knight', 8, 10, 'Intelligence', 2),
			('Fighter', 'Eldritch Knight', 9, 10, 'Intelligence', 2),
			('Fighter', 'Eldritch Knight', 10, 10, 'Intelligence', 2),
			('Fighter', 'Eldritch Knight', 11, 10, 'Intelligence', 2),
			('Fighter', 'Eldritch Knight', 12, 10, 'Intelligence', 2),
			('Fighter', 'Eldritch Knight', 13, 10, 'Intelligence', 2),
			('Fighter', 'Eldritch Knight', 14, 10, 'Intelligence', 2),
			('Fighter', 'Eldritch Knight', 15, 10, 'Intelligence', 2),
			('Fighter', 'Eldritch Knight', 16, 10, 'Intelligence', 2),
			('Fighter', 'Eldritch Knight', 17, 10, 'Intelligence', 2),
			('Fighter', 'Eldritch Knight', 18, 10, 'Intelligence', 2),
			('Fighter', 'Eldritch Knight', 19, 10, 'Intelligence', 2),
			('Fighter', 'Eldritch Knight', 20, 10, 'Intelligence', 2),
			('Monk', '', 1, 8, '', ''),
			('Monk', '', 2, 8, '', ''),
			('Monk', 'Four Elements', 3, 8, '', ''),
			('Monk', 'Four Elements', 4, 8, '', ''),
			('Monk', 'Four Elements', 5, 8, '', ''),
			('Monk', 'Four Elements', 6, 8, '', ''),
			('Monk', 'Four Elements', 7, 8, '', ''),
			('Monk', 'Four Elements', 8, 8, '', ''),
			('Monk', 'Four Elements', 9, 8, '', ''),
			('Monk', 'Four Elements', 10, 8, '', ''),
			('Monk', 'Four Elements', 11, 8, '', ''),
			('Monk', 'Four Elements', 12, 8, '', ''),
			('Monk', 'Four Elements', 13, 8, '', ''),
			('Monk', 'Four Elements', 14, 8, '', ''),
			('Monk', 'Four Elements', 15, 8, '', ''),
			('Monk', 'Four Elements', 16, 8, '', ''),
			('Monk', 'Four Elements', 17, 8, '', ''),
			('Monk', 'Four Elements', 18, 8, '', ''),
			('Monk', 'Four Elements', 19, 8, '', ''),
			('Monk', 'Four Elements', 20, 8, '', ''),
			('Monk', 'Open Hand', 3, 8, '', ''),
			('Monk', 'Open Hand', 4, 8, '', ''),
			('Monk', 'Open Hand', 5, 8, '', ''),
			('Monk', 'Open Hand', 6, 8, '', ''),
			('Monk', 'Open Hand', 7, 8, '', ''),
			('Monk', 'Open Hand', 8, 8, '', ''),
			('Monk', 'Open Hand', 9, 8, '', ''),
			('Monk', 'Open Hand', 10, 8, '', ''),
			('Monk', 'Open Hand', 11, 8, '', ''),
			('Monk', 'Open Hand', 12, 8, '', ''),
			('Monk', 'Open Hand', 13, 8, '', ''),
			('Monk', 'Open Hand', 14, 8, '', ''),
			('Monk', 'Open Hand', 15, 8, '', ''),
			('Monk', 'Open Hand', 16, 8, '', ''),
			('Monk', 'Open Hand', 17, 8, '', ''),
			('Monk', 'Open Hand', 18, 8, '', ''),
			('Monk', 'Open Hand', 19, 8, '', ''),
			('Monk', 'Open Hand', 20, 8, '', ''),
			('Monk', 'Shadow', 3, 8, '', ''),
			('Monk', 'Shadow', 4, 8, '', ''),
			('Monk', 'Shadow', 5, 8, '', ''),
			('Monk', 'Shadow', 6, 8, '', ''),
			('Monk', 'Shadow', 7, 8, '', ''),
			('Monk', 'Shadow', 8, 8, '', ''),
			('Monk', 'Shadow', 9, 8, '', ''),
			('Monk', 'Shadow', 10, 8, '', ''),
			('Monk', 'Shadow', 11, 8, '', ''),
			('Monk', 'Shadow', 12, 8, '', ''),
			('Monk', 'Shadow', 13, 8, '', ''),
			('Monk', 'Shadow', 14, 8, '', ''),
			('Monk', 'Shadow', 15, 8, '', ''),
			('Monk', 'Shadow', 16, 8, '', ''),
			('Monk', 'Shadow', 17, 8, '', ''),
			('Monk', 'Shadow', 18, 8, '', ''),
			('Monk', 'Shadow', 19, 8, '', ''),
			('Monk', 'Shadow', 20, 8, '', ''),
			('Paladin', '', 1, 10, 'Charisma', 3),
			('Paladin', '', 2, 10, 'Charisma', 3),
			('Paladin', 'Ancients', 3, 10, 'Charisma', 3),
			('Paladin', 'Ancients', 4, 10, 'Charisma', 3),
			('Paladin', 'Ancients', 5, 10, 'Charisma', 3),
			('Paladin', 'Ancients', 6, 10, 'Charisma', 3),
			('Paladin', 'Ancients', 7, 10, 'Charisma', 3),
			('Paladin', 'Ancients', 8, 10, 'Charisma', 3),
			('Paladin', 'Ancients', 9, 10, 'Charisma', 3),
			('Paladin', 'Ancients', 10, 10, 'Charisma', 3),
			('Paladin', 'Ancients', 11, 10, 'Charisma', 3),
			('Paladin', 'Ancients', 12, 10, 'Charisma', 3),
			('Paladin', 'Ancients', 13, 10, 'Charisma', 3),
			('Paladin', 'Ancients', 14, 10, 'Charisma', 3),
			('Paladin', 'Ancients', 15, 10, 'Charisma', 3),
			('Paladin', 'Ancients', 16, 10, 'Charisma', 3),
			('Paladin', 'Ancients', 17, 10, 'Charisma', 3),
			('Paladin', 'Ancients', 18, 10, 'Charisma', 3),
			('Paladin', 'Ancients', 19, 10, 'Charisma', 3),
			('Paladin', 'Ancients', 20, 10, 'Charisma', 3),
			('Paladin', 'Devotion', 3, 10, 'Charisma', 3),
			('Paladin', 'Devotion', 4, 10, 'Charisma', 3),
			('Paladin', 'Devotion', 5, 10, 'Charisma', 3),
			('Paladin', 'Devotion', 6, 10, 'Charisma', 3),
			('Paladin', 'Devotion', 7, 10, 'Charisma', 3),
			('Paladin', 'Devotion', 8, 10, 'Charisma', 3),
			('Paladin', 'Devotion', 9, 10, 'Charisma', 3),
			('Paladin', 'Devotion', 10, 10, 'Charisma', 3),
			('Paladin', 'Devotion', 11, 10, 'Charisma', 3),
			('Paladin', 'Devotion', 12, 10, 'Charisma', 3),
			('Paladin', 'Devotion', 13, 10, 'Charisma', 3),
			('Paladin', 'Devotion', 14, 10, 'Charisma', 3),
			('Paladin', 'Devotion', 15, 10, 'Charisma', 3),
			('Paladin', 'Devotion', 16, 10, 'Charisma', 3),
			('Paladin', 'Devotion', 17, 10, 'Charisma', 3),
			('Paladin', 'Devotion', 18, 10, 'Charisma', 3),
			('Paladin', 'Devotion', 19, 10, 'Charisma', 3),
			('Paladin', 'Devotion', 20, 10, 'Charisma', 3),
			('Paladin', 'Venegance', 3, 10, 'Charisma', 3),
			('Paladin', 'Venegance', 4, 10, 'Charisma', 3),
			('Paladin', 'Venegance', 5, 10, 'Charisma', 3),
			('Paladin', 'Venegance', 6, 10, 'Charisma', 3),
			('Paladin', 'Venegance', 7, 10, 'Charisma', 3),
			('Paladin', 'Venegance', 8, 10, 'Charisma', 3),
			('Paladin', 'Venegance', 9, 10, 'Charisma', 3),
			('Paladin', 'Venegance', 10, 10, 'Charisma', 3),
			('Paladin', 'Venegance', 11, 10, 'Charisma', 3),
			('Paladin', 'Venegance', 12, 10, 'Charisma', 3),
			('Paladin', 'Venegance', 13, 10, 'Charisma', 3),
			('Paladin', 'Venegance', 14, 10, 'Charisma', 3),
			('Paladin', 'Venegance', 15, 10, 'Charisma', 3),
			('Paladin', 'Venegance', 16, 10, 'Charisma', 3),
			('Paladin', 'Venegance', 17, 10, 'Charisma', 3),
			('Paladin', 'Venegance', 18, 10, 'Charisma', 3),
			('Paladin', 'Venegance', 19, 10, 'Charisma', 3),
			('Paladin', 'Venegance', 20, 10, 'Charisma', 3),
			('Ranger', '', 1, 10, 'Wisdom', 3),
			('Ranger', '', 2, 10, 'Wisdom', 3),
			('Ranger', 'Beastmaster', 3, 10, 'Wisdom', 3),
			('Ranger', 'Beastmaster', 4, 10, 'Wisdom', 3),
			('Ranger', 'Beastmaster', 5, 10, 'Wisdom', 3),
			('Ranger', 'Beastmaster', 6, 10, 'Wisdom', 3),
			('Ranger', 'Beastmaster', 7, 10, 'Wisdom', 3),
			('Ranger', 'Beastmaster', 8, 10, 'Wisdom', 3),
			('Ranger', 'Beastmaster', 9, 10, 'Wisdom', 3),
			('Ranger', 'Beastmaster', 10, 10, 'Wisdom', 3),
			('Ranger', 'Beastmaster', 11, 10, 'Wisdom', 3),
			('Ranger', 'Beastmaster', 12, 10, 'Wisdom', 3),
			('Ranger', 'Beastmaster', 13, 10, 'Wisdom', 3),
			('Ranger', 'Beastmaster', 14, 10, 'Wisdom', 3),
			('Ranger', 'Beastmaster', 15, 10, 'Wisdom', 3),
			('Ranger', 'Beastmaster', 16, 10, 'Wisdom', 3),
			('Ranger', 'Beastmaster', 17, 10, 'Wisdom', 3),
			('Ranger', 'Beastmaster', 18, 10, 'Wisdom', 3),
			('Ranger', 'Beastmaster', 19, 10, 'Wisdom', 3),
			('Ranger', 'Beastmaster', 20, 10, 'Wisdom', 3),
			('Ranger', 'Gloom Stalker', 3, 10, 'Wisdom', 3),
			('Ranger', 'Gloom Stalker', 4, 10, 'Wisdom', 3),
			('Ranger', 'Gloom Stalker', 5, 10, 'Wisdom', 3),
			('Ranger', 'Gloom Stalker', 6, 10, 'Wisdom', 3),
			('Ranger', 'Gloom Stalker', 7, 10, 'Wisdom', 3),
			('Ranger', 'Gloom Stalker', 8, 10, 'Wisdom', 3),
			('Ranger', 'Gloom Stalker', 9, 10, 'Wisdom', 3),
			('Ranger', 'Gloom Stalker', 10, 10, 'Wisdom', 3),
			('Ranger', 'Gloom Stalker', 11, 10, 'Wisdom', 3),
			('Ranger', 'Gloom Stalker', 12, 10, 'Wisdom', 3),
			('Ranger', 'Gloom Stalker', 13, 10, 'Wisdom', 3),
			('Ranger', 'Gloom Stalker', 14, 10, 'Wisdom', 3),
			('Ranger', 'Gloom Stalker', 15, 10, 'Wisdom', 3),
			('Ranger', 'Gloom Stalker', 16, 10, 'Wisdom', 3),
			('Ranger', 'Gloom Stalker', 17, 10, 'Wisdom', 3),
			('Ranger', 'Gloom Stalker', 18, 10, 'Wisdom', 3),
			('Ranger', 'Gloom Stalker', 19, 10, 'Wisdom', 3),
			('Ranger', 'Gloom Stalker', 20, 10, 'Wisdom', 3),
			('Ranger', 'Hunter', 3, 10, 'Wisdom', 3),
			('Ranger', 'Hunter', 4, 10, 'Wisdom', 3),
			('Ranger', 'Hunter', 5, 10, 'Wisdom', 3),
			('Ranger', 'Hunter', 6, 10, 'Wisdom', 3),
			('Ranger', 'Hunter', 7, 10, 'Wisdom', 3),
			('Ranger', 'Hunter', 8, 10, 'Wisdom', 3),
			('Ranger', 'Hunter', 9, 10, 'Wisdom', 3),
			('Ranger', 'Hunter', 10, 10, 'Wisdom', 3),
			('Ranger', 'Hunter', 11, 10, 'Wisdom', 3),
			('Ranger', 'Hunter', 12, 10, 'Wisdom', 3),
			('Ranger', 'Hunter', 13, 10, 'Wisdom', 3),
			('Ranger', 'Hunter', 14, 10, 'Wisdom', 3),
			('Ranger', 'Hunter', 15, 10, 'Wisdom', 3),
			('Ranger', 'Hunter', 16, 10, 'Wisdom', 3),
			('Ranger', 'Hunter', 17, 10, 'Wisdom', 3),
			('Ranger', 'Hunter', 18, 10, 'Wisdom', 3),
			('Ranger', 'Hunter', 19, 10, 'Wisdom', 3),
			('Ranger', 'Hunter', 20, 10, 'Wisdom', 3),
			('Rogue', '', 1, 8, '', ''),
			('Rogue', '', 2, 8, '', ''),
			('Rogue', 'Arcane Trickster', 3, 8, 'Intelligence', 2),
			('Rogue', 'Arcane Trickster', 4, 8, 'Intelligence', 2),
			('Rogue', 'Arcane Trickster', 5, 8, 'Intelligence', 2),
			('Rogue', 'Arcane Trickster', 6, 8, 'Intelligence', 2),
			('Rogue', 'Arcane Trickster', 7, 8, 'Intelligence', 2),
			('Rogue', 'Arcane Trickster', 8, 8, 'Intelligence', 2),
			('Rogue', 'Arcane Trickster', 9, 8, 'Intelligence', 2),
			('Rogue', 'Arcane Trickster', 10, 8, 'Intelligence', 2),
			('Rogue', 'Arcane Trickster', 11, 8, 'Intelligence', 2),
			('Rogue', 'Arcane Trickster', 12, 8, 'Intelligence', 2),
			('Rogue', 'Arcane Trickster', 13, 8, 'Intelligence', 2),
			('Rogue', 'Arcane Trickster', 14, 8, 'Intelligence', 2),
			('Rogue', 'Arcane Trickster', 15, 8, 'Intelligence', 2),
			('Rogue', 'Arcane Trickster', 16, 8, 'Intelligence', 2),
			('Rogue', 'Arcane Trickster', 17, 8, 'Intelligence', 2),
			('Rogue', 'Arcane Trickster', 18, 8, 'Intelligence', 2),
			('Rogue', 'Arcane Trickster', 19, 8, 'Intelligence', 2),
			('Rogue', 'Arcane Trickster', 20, 8, 'Intelligence', 2),
			('Rogue', 'Assassin', 3, 8, '', ''),
			('Rogue', 'Assassin', 4, 8, '', ''),
			('Rogue', 'Assassin', 5, 8, '', ''),
			('Rogue', 'Assassin', 6, 8, '', ''),
			('Rogue', 'Assassin', 7, 8, '', ''),
			('Rogue', 'Assassin', 8, 8, '', ''),
			('Rogue', 'Assassin', 9, 8, '', ''),
			('Rogue', 'Assassin', 10, 8, '', ''),
			('Rogue', 'Assassin', 11, 8, '', ''),
			('Rogue', 'Assassin', 12, 8, '', ''),
			('Rogue', 'Assassin', 13, 8, '', ''),
			('Rogue', 'Assassin', 14, 8, '', ''),
			('Rogue', 'Assassin', 15, 8, '', ''),
			('Rogue', 'Assassin', 16, 8, '', ''),
			('Rogue', 'Assassin', 17, 8, '', ''),
			('Rogue', 'Assassin', 18, 8, '', ''),
			('Rogue', 'Assassin', 19, 8, '', ''),
			('Rogue', 'Assassin', 20, 8, '', ''),
			('Rogue', 'Thief', 3, 8, '', ''),
			('Rogue', 'Thief', 4, 8, '', ''),
			('Rogue', 'Thief', 5, 8, '', ''),
			('Rogue', 'Thief', 6, 8, '', ''),
			('Rogue', 'Thief', 7, 8, '', ''),
			('Rogue', 'Thief', 8, 8, '', ''),
			('Rogue', 'Thief', 9, 8, '', ''),
			('Rogue', 'Thief', 10, 8, '', ''),
			('Rogue', 'Thief', 11, 8, '', ''),
			('Rogue', 'Thief', 12, 8, '', ''),
			('Rogue', 'Thief', 13, 8, '', ''),
			('Rogue', 'Thief', 14, 8, '', ''),
			('Rogue', 'Thief', 15, 8, '', ''),
			('Rogue', 'Thief', 16, 8, '', ''),
			('Rogue', 'Thief', 17, 8, '', ''),
			('Rogue', 'Thief', 18, 8, '', ''),
			('Rogue', 'Thief', 19, 8, '', ''),
			('Rogue', 'Thief', 20, 8, '', ''),
			('Sorcerer', 'Draconic Bloodline', 1, 6, 'Charisma', 6),
			('Sorcerer', 'Draconic Bloodline', 2, 6, 'Charisma', 6),
			('Sorcerer', 'Draconic Bloodline', 3, 6, 'Charisma', 6),
			('Sorcerer', 'Draconic Bloodline', 4, 6, 'Charisma', 6),
			('Sorcerer', 'Draconic Bloodline', 5, 6, 'Charisma', 6),
			('Sorcerer', 'Draconic Bloodline', 6, 6, 'Charisma', 6),
			('Sorcerer', 'Draconic Bloodline', 7, 6, 'Charisma', 6),
			('Sorcerer', 'Draconic Bloodline', 8, 6, 'Charisma', 6),
			('Sorcerer', 'Draconic Bloodline', 9, 6, 'Charisma', 6),
			('Sorcerer', 'Draconic Bloodline', 10, 6, 'Charisma', 6),
			('Sorcerer', 'Draconic Bloodline', 11, 6, 'Charisma', 6),
			('Sorcerer', 'Draconic Bloodline', 12, 6, 'Charisma', 6),
			('Sorcerer', 'Draconic Bloodline', 13, 6, 'Charisma', 6),
			('Sorcerer', 'Draconic Bloodline', 14, 6, 'Charisma', 6),
			('Sorcerer', 'Draconic Bloodline', 15, 6, 'Charisma', 6),
			('Sorcerer', 'Draconic Bloodline', 16, 6, 'Charisma', 6),
			('Sorcerer', 'Draconic Bloodline', 17, 6, 'Charisma', 6),
			('Sorcerer', 'Draconic Bloodline', 18, 6, 'Charisma', 6),
			('Sorcerer', 'Draconic Bloodline', 19, 6, 'Charisma', 6),
			('Sorcerer', 'Draconic Bloodline', 20, 6, 'Charisma', 6),
			('Sorcerer', 'Storm', 1, 6, 'Charisma', 6),
			('Sorcerer', 'Storm', 2, 6, 'Charisma', 6),
			('Sorcerer', 'Storm', 3, 6, 'Charisma', 6),
			('Sorcerer', 'Storm', 4, 6, 'Charisma', 6),
			('Sorcerer', 'Storm', 5, 6, 'Charisma', 6),
			('Sorcerer', 'Storm', 6, 6, 'Charisma', 6),
			('Sorcerer', 'Storm', 7, 6, 'Charisma', 6),
			('Sorcerer', 'Storm', 8, 6, 'Charisma', 6),
			('Sorcerer', 'Storm', 9, 6, 'Charisma', 6),
			('Sorcerer', 'Storm', 10, 6, 'Charisma', 6),
			('Sorcerer', 'Storm', 11, 6, 'Charisma', 6),
			('Sorcerer', 'Storm', 12, 6, 'Charisma', 6),
			('Sorcerer', 'Storm', 13, 6, 'Charisma', 6),
			('Sorcerer', 'Storm', 14, 6, 'Charisma', 6),
			('Sorcerer', 'Storm', 15, 6, 'Charisma', 6),
			('Sorcerer', 'Storm', 16, 6, 'Charisma', 6),
			('Sorcerer', 'Storm', 17, 6, 'Charisma', 6),
			('Sorcerer', 'Storm', 18, 6, 'Charisma', 6),
			('Sorcerer', 'Storm', 19, 6, 'Charisma', 6),
			('Sorcerer', 'Storm', 20, 6, 'Charisma', 6),
			('Sorcerer', 'Wild Magic', 1, 6, 'Charisma', 6),
			('Sorcerer', 'Wild Magic', 2, 6, 'Charisma', 6),
			('Sorcerer', 'Wild Magic', 3, 6, 'Charisma', 6),
			('Sorcerer', 'Wild Magic', 4, 6, 'Charisma', 6),
			('Sorcerer', 'Wild Magic', 5, 6, 'Charisma', 6),
			('Sorcerer', 'Wild Magic', 6, 6, 'Charisma', 6),
			('Sorcerer', 'Wild Magic', 7, 6, 'Charisma', 6),
			('Sorcerer', 'Wild Magic', 8, 6, 'Charisma', 6),
			('Sorcerer', 'Wild Magic', 9, 6, 'Charisma', 6),
			('Sorcerer', 'Wild Magic', 10, 6, 'Charisma', 6),
			('Sorcerer', 'Wild Magic', 11, 6, 'Charisma', 6),
			('Sorcerer', 'Wild Magic', 12, 6, 'Charisma', 6),
			('Sorcerer', 'Wild Magic', 13, 6, 'Charisma', 6),
			('Sorcerer', 'Wild Magic', 14, 6, 'Charisma', 6),
			('Sorcerer', 'Wild Magic', 15, 6, 'Charisma', 6),
			('Sorcerer', 'Wild Magic', 16, 6, 'Charisma', 6),
			('Sorcerer', 'Wild Magic', 17, 6, 'Charisma', 6),
			('Sorcerer', 'Wild Magic', 18, 6, 'Charisma', 6),
			('Sorcerer', 'Wild Magic', 19, 6, 'Charisma', 6),
			('Sorcerer', 'Wild Magic', 20, 6, 'Charisma', 6),
			('Warlock', 'Archfey', 1, 8, 'Charisma', ''),
			('Warlock', 'Archfey', 2, 8, 'Charisma', ''),
			('Warlock', 'Archfey', 3, 8, 'Charisma', ''),
			('Warlock', 'Archfey', 4, 8, 'Charisma', ''),
			('Warlock', 'Archfey', 5, 8, 'Charisma', ''),
			('Warlock', 'Archfey', 6, 8, 'Charisma', ''),
			('Warlock', 'Archfey', 7, 8, 'Charisma', ''),
			('Warlock', 'Archfey', 8, 8, 'Charisma', ''),
			('Warlock', 'Archfey', 9, 8, 'Charisma', ''),
			('Warlock', 'Archfey', 10, 8, 'Charisma', ''),
			('Warlock', 'Archfey', 11, 8, 'Charisma', ''),
			('Warlock', 'Archfey', 12, 8, 'Charisma', ''),
			('Warlock', 'Archfey', 13, 8, 'Charisma', ''),
			('Warlock', 'Archfey', 14, 8, 'Charisma', ''),
			('Warlock', 'Archfey', 15, 8, 'Charisma', ''),
			('Warlock', 'Archfey', 16, 8, 'Charisma', ''),
			('Warlock', 'Archfey', 17, 8, 'Charisma', ''),
			('Warlock', 'Archfey', 18, 8, 'Charisma', ''),
			('Warlock', 'Archfey', 19, 8, 'Charisma', ''),
			('Warlock', 'Archfey', 20, 8, 'Charisma', ''),
			('Warlock', 'Fiend', 1, 8, 'Charisma', ''),
			('Warlock', 'Fiend', 2, 8, 'Charisma', ''),
			('Warlock', 'Fiend', 3, 8, 'Charisma', ''),
			('Warlock', 'Fiend', 4, 8, 'Charisma', ''),
			('Warlock', 'Fiend', 5, 8, 'Charisma', ''),
			('Warlock', 'Fiend', 6, 8, 'Charisma', ''),
			('Warlock', 'Fiend', 7, 8, 'Charisma', ''),
			('Warlock', 'Fiend', 8, 8, 'Charisma', ''),
			('Warlock', 'Fiend', 9, 8, 'Charisma', ''),
			('Warlock', 'Fiend', 10, 8, 'Charisma', ''),
			('Warlock', 'Fiend', 11, 8, 'Charisma', ''),
			('Warlock', 'Fiend', 12, 8, 'Charisma', ''),
			('Warlock', 'Fiend', 13, 8, 'Charisma', ''),
			('Warlock', 'Fiend', 14, 8, 'Charisma', ''),
			('Warlock', 'Fiend', 15, 8, 'Charisma', ''),
			('Warlock', 'Fiend', 16, 8, 'Charisma', ''),
			('Warlock', 'Fiend', 17, 8, 'Charisma', ''),
			('Warlock', 'Fiend', 18, 8, 'Charisma', ''),
			('Warlock', 'Fiend', 19, 8, 'Charisma', ''),
			('Warlock', 'Fiend', 20, 8, 'Charisma', ''),
			('Warlock', 'Great Old One', 1, 8, 'Charisma', ''),
			('Warlock', 'Great Old One', 2, 8, 'Charisma', ''),
			('Warlock', 'Great Old One', 3, 8, 'Charisma', ''),
			('Warlock', 'Great Old One', 4, 8, 'Charisma', ''),
			('Warlock', 'Great Old One', 5, 8, 'Charisma', ''),
			('Warlock', 'Great Old One', 6, 8, 'Charisma', ''),
			('Warlock', 'Great Old One', 7, 8, 'Charisma', ''),
			('Warlock', 'Great Old One', 8, 8, 'Charisma', ''),
			('Warlock', 'Great Old One', 9, 8, 'Charisma', ''),
			('Warlock', 'Great Old One', 10, 8, 'Charisma', ''),
			('Warlock', 'Great Old One', 11, 8, 'Charisma', ''),
			('Warlock', 'Great Old One', 12, 8, 'Charisma', ''),
			('Warlock', 'Great Old One', 13, 8, 'Charisma', ''),
			('Warlock', 'Great Old One', 14, 8, 'Charisma', ''),
			('Warlock', 'Great Old One', 15, 8, 'Charisma', ''),
			('Warlock', 'Great Old One', 16, 8, 'Charisma', ''),
			('Warlock', 'Great Old One', 17, 8, 'Charisma', ''),
			('Warlock', 'Great Old One', 18, 8, 'Charisma', ''),
			('Warlock', 'Great Old One', 19, 8, 'Charisma', ''),
			('Warlock', 'Great Old One', 20, 8, 'Charisma', ''),
			('Wizard', '', 1, 6, 'Intelligence', 6),
			('Wizard', 'Abjuration', 2, 6, 'Intelligence', 6),
			('Wizard', 'Abjuration', 3, 6, 'Intelligence', 6),
			('Wizard', 'Abjuration', 4, 6, 'Intelligence', 6),
			('Wizard', 'Abjuration', 5, 6, 'Intelligence', 6),
			('Wizard', 'Abjuration', 6, 6, 'Intelligence', 6),
			('Wizard', 'Abjuration', 7, 6, 'Intelligence', 6),
			('Wizard', 'Abjuration', 8, 6, 'Intelligence', 6),
			('Wizard', 'Abjuration', 9, 6, 'Intelligence', 6),
			('Wizard', 'Abjuration', 10, 6, 'Intelligence', 6),
			('Wizard', 'Abjuration', 11, 6, 'Intelligence', 6),
			('Wizard', 'Abjuration', 12, 6, 'Intelligence', 6),
			('Wizard', 'Abjuration', 13, 6, 'Intelligence', 6),
			('Wizard', 'Abjuration', 14, 6, 'Intelligence', 6),
			('Wizard', 'Abjuration', 15, 6, 'Intelligence', 6),
			('Wizard', 'Abjuration', 16, 6, 'Intelligence', 6),
			('Wizard', 'Abjuration', 17, 6, 'Intelligence', 6),
			('Wizard', 'Abjuration', 18, 6, 'Intelligence', 6),
			('Wizard', 'Abjuration', 19, 6, 'Intelligence', 6),
			('Wizard', 'Abjuration', 20, 6, 'Intelligence', 6),
			('Wizard', 'Conjuration', 2, 6, 'Intelligence', 6),
			('Wizard', 'Conjuration', 3, 6, 'Intelligence', 6),
			('Wizard', 'Conjuration', 4, 6, 'Intelligence', 6),
			('Wizard', 'Conjuration', 5, 6, 'Intelligence', 6),
			('Wizard', 'Conjuration', 6, 6, 'Intelligence', 6),
			('Wizard', 'Conjuration', 7, 6, 'Intelligence', 6),
			('Wizard', 'Conjuration', 8, 6, 'Intelligence', 6),
			('Wizard', 'Conjuration', 9, 6, 'Intelligence', 6),
			('Wizard', 'Conjuration', 10, 6, 'Intelligence', 6),
			('Wizard', 'Conjuration', 11, 6, 'Intelligence', 6),
			('Wizard', 'Conjuration', 12, 6, 'Intelligence', 6),
			('Wizard', 'Conjuration', 13, 6, 'Intelligence', 6),
			('Wizard', 'Conjuration', 14, 6, 'Intelligence', 6),
			('Wizard', 'Conjuration', 15, 6, 'Intelligence', 6),
			('Wizard', 'Conjuration', 16, 6, 'Intelligence', 6),
			('Wizard', 'Conjuration', 17, 6, 'Intelligence', 6),
			('Wizard', 'Conjuration', 18, 6, 'Intelligence', 6),
			('Wizard', 'Conjuration', 19, 6, 'Intelligence', 6),
			('Wizard', 'Conjuration', 20, 6, 'Intelligence', 6),
			('Wizard', 'Divination', 2, 6, 'Intelligence', 6),
			('Wizard', 'Divination', 3, 6, 'Intelligence', 6),
			('Wizard', 'Divination', 4, 6, 'Intelligence', 6),
			('Wizard', 'Divination', 5, 6, 'Intelligence', 6),
			('Wizard', 'Divination', 6, 6, 'Intelligence', 6),
			('Wizard', 'Divination', 7, 6, 'Intelligence', 6),
			('Wizard', 'Divination', 8, 6, 'Intelligence', 6),
			('Wizard', 'Divination', 9, 6, 'Intelligence', 6),
			('Wizard', 'Divination', 10, 6, 'Intelligence', 6),
			('Wizard', 'Divination', 11, 6, 'Intelligence', 6),
			('Wizard', 'Divination', 12, 6, 'Intelligence', 6),
			('Wizard', 'Divination', 13, 6, 'Intelligence', 6),
			('Wizard', 'Divination', 14, 6, 'Intelligence', 6),
			('Wizard', 'Divination', 15, 6, 'Intelligence', 6),
			('Wizard', 'Divination', 16, 6, 'Intelligence', 6),
			('Wizard', 'Divination', 17, 6, 'Intelligence', 6),
			('Wizard', 'Divination', 18, 6, 'Intelligence', 6),
			('Wizard', 'Divination', 19, 6, 'Intelligence', 6),
			('Wizard', 'Divination', 20, 6, 'Intelligence', 6),
			('Wizard', 'Enchantment', 2, 6, 'Intelligence', 6),
			('Wizard', 'Enchantment', 3, 6, 'Intelligence', 6),
			('Wizard', 'Enchantment', 4, 6, 'Intelligence', 6),
			('Wizard', 'Enchantment', 5, 6, 'Intelligence', 6),
			('Wizard', 'Enchantment', 6, 6, 'Intelligence', 6),
			('Wizard', 'Enchantment', 7, 6, 'Intelligence', 6),
			('Wizard', 'Enchantment', 8, 6, 'Intelligence', 6),
			('Wizard', 'Enchantment', 9, 6, 'Intelligence', 6),
			('Wizard', 'Enchantment', 10, 6, 'Intelligence', 6),
			('Wizard', 'Enchantment', 11, 6, 'Intelligence', 6),
			('Wizard', 'Enchantment', 12, 6, 'Intelligence', 6),
			('Wizard', 'Enchantment', 13, 6, 'Intelligence', 6),
			('Wizard', 'Enchantment', 14, 6, 'Intelligence', 6),
			('Wizard', 'Enchantment', 15, 6, 'Intelligence', 6),
			('Wizard', 'Enchantment', 16, 6, 'Intelligence', 6),
			('Wizard', 'Enchantment', 17, 6, 'Intelligence', 6),
			('Wizard', 'Enchantment', 18, 6, 'Intelligence', 6),
			('Wizard', 'Enchantment', 19, 6, 'Intelligence', 6),
			('Wizard', 'Enchantment', 20, 6, 'Intelligence', 6),
			('Wizard', 'Evocation', 2, 6, 'Intelligence', 6),
			('Wizard', 'Evocation', 3, 6, 'Intelligence', 6),
			('Wizard', 'Evocation', 4, 6, 'Intelligence', 6),
			('Wizard', 'Evocation', 5, 6, 'Intelligence', 6),
			('Wizard', 'Evocation', 6, 6, 'Intelligence', 6),
			('Wizard', 'Evocation', 7, 6, 'Intelligence', 6),
			('Wizard', 'Evocation', 8, 6, 'Intelligence', 6),
			('Wizard', 'Evocation', 9, 6, 'Intelligence', 6),
			('Wizard', 'Evocation', 10, 6, 'Intelligence', 6),
			('Wizard', 'Evocation', 11, 6, 'Intelligence', 6),
			('Wizard', 'Evocation', 12, 6, 'Intelligence', 6),
			('Wizard', 'Evocation', 13, 6, 'Intelligence', 6),
			('Wizard', 'Evocation', 14, 6, 'Intelligence', 6),
			('Wizard', 'Evocation', 15, 6, 'Intelligence', 6),
			('Wizard', 'Evocation', 16, 6, 'Intelligence', 6),
			('Wizard', 'Evocation', 17, 6, 'Intelligence', 6),
			('Wizard', 'Evocation', 18, 6, 'Intelligence', 6),
			('Wizard', 'Evocation', 19, 6, 'Intelligence', 6),
			('Wizard', 'Evocation', 20, 6, 'Intelligence', 6),
			('Wizard', 'Illusion', 2, 6, 'Intelligence', 6),
			('Wizard', 'Illusion', 3, 6, 'Intelligence', 6),
			('Wizard', 'Illusion', 4, 6, 'Intelligence', 6),
			('Wizard', 'Illusion', 5, 6, 'Intelligence', 6),
			('Wizard', 'Illusion', 6, 6, 'Intelligence', 6),
			('Wizard', 'Illusion', 7, 6, 'Intelligence', 6),
			('Wizard', 'Illusion', 8, 6, 'Intelligence', 6),
			('Wizard', 'Illusion', 9, 6, 'Intelligence', 6),
			('Wizard', 'Illusion', 10, 6, 'Intelligence', 6),
			('Wizard', 'Illusion', 11, 6, 'Intelligence', 6),
			('Wizard', 'Illusion', 12, 6, 'Intelligence', 6),
			('Wizard', 'Illusion', 13, 6, 'Intelligence', 6),
			('Wizard', 'Illusion', 14, 6, 'Intelligence', 6),
			('Wizard', 'Illusion', 15, 6, 'Intelligence', 6),
			('Wizard', 'Illusion', 16, 6, 'Intelligence', 6),
			('Wizard', 'Illusion', 17, 6, 'Intelligence', 6),
			('Wizard', 'Illusion', 18, 6, 'Intelligence', 6),
			('Wizard', 'Illusion', 19, 6, 'Intelligence', 6),
			('Wizard', 'Illusion', 20, 6, 'Intelligence', 6),
			('Wizard', 'Necromancy', 2, 6, 'Intelligence', 6),
			('Wizard', 'Necromancy', 3, 6, 'Intelligence', 6),
			('Wizard', 'Necromancy', 4, 6, 'Intelligence', 6),
			('Wizard', 'Necromancy', 5, 6, 'Intelligence', 6),
			('Wizard', 'Necromancy', 6, 6, 'Intelligence', 6),
			('Wizard', 'Necromancy', 7, 6, 'Intelligence', 6),
			('Wizard', 'Necromancy', 8, 6, 'Intelligence', 6),
			('Wizard', 'Necromancy', 9, 6, 'Intelligence', 6),
			('Wizard', 'Necromancy', 10, 6, 'Intelligence', 6),
			('Wizard', 'Necromancy', 11, 6, 'Intelligence', 6),
			('Wizard', 'Necromancy', 12, 6, 'Intelligence', 6),
			('Wizard', 'Necromancy', 13, 6, 'Intelligence', 6),
			('Wizard', 'Necromancy', 14, 6, 'Intelligence', 6),
			('Wizard', 'Necromancy', 15, 6, 'Intelligence', 6),
			('Wizard', 'Necromancy', 16, 6, 'Intelligence', 6),
			('Wizard', 'Necromancy', 17, 6, 'Intelligence', 6),
			('Wizard', 'Necromancy', 18, 6, 'Intelligence', 6),
			('Wizard', 'Necromancy', 19, 6, 'Intelligence', 6),
			('Wizard', 'Necromancy', 20, 6, 'Intelligence', 6),
			('Wizard', 'Transmutation', 2, 6, 'Intelligence', 6),
			('Wizard', 'Transmutation', 3, 6, 'Intelligence', 6),
			('Wizard', 'Transmutation', 4, 6, 'Intelligence', 6),
			('Wizard', 'Transmutation', 5, 6, 'Intelligence', 6),
			('Wizard', 'Transmutation', 6, 6, 'Intelligence', 6),
			('Wizard', 'Transmutation', 7, 6, 'Intelligence', 6),
			('Wizard', 'Transmutation', 8, 6, 'Intelligence', 6),
			('Wizard', 'Transmutation', 9, 6, 'Intelligence', 6),
			('Wizard', 'Transmutation', 10, 6, 'Intelligence', 6),
			('Wizard', 'Transmutation', 11, 6, 'Intelligence', 6),
			('Wizard', 'Transmutation', 12, 6, 'Intelligence', 6),
			('Wizard', 'Transmutation', 13, 6, 'Intelligence', 6),
			('Wizard', 'Transmutation', 14, 6, 'Intelligence', 6),
			('Wizard', 'Transmutation', 15, 6, 'Intelligence', 6),
			('Wizard', 'Transmutation', 16, 6, 'Intelligence', 6),
			('Wizard', 'Transmutation', 17, 6, 'Intelligence', 6),
			('Wizard', 'Transmutation', 18, 6, 'Intelligence', 6),
			('Wizard', 'Transmutation', 19, 6, 'Intelligence', 6),
			('Wizard', 'Transmutation', 20, 6, 'Intelligence', 6);
end
if not exists (select 1 from dbo.[Armor])
begin
	insert into dbo.[Armor] ([Name], [ArmorClass], [ArmorGroup], [StrengthRequirement], [StealthDisadvantage])
	values ('Padded', 11, 'Light', 0, 'TRUE'),
			('Leather', 11, 'Light', 0, 'FALSE'),
			('Studded leather', 12, 'Light', 0, 'FALSE'),
			('Hide', 12, 'Medium', 0, 'FALSE'),
			('Chain shirt', 13, 'Medium', 0, 'FALSE'),
			('Scale mail', 14, 'Medium', 0, 'TRUE'),
			('Breastplate', 14, 'Medium', 0, 'FALSE'),
			('Half plate', 15, 'Medium', 0, 'TRUE'),
			('Ring mail', 14, 'Heavy', 0, 'TRUE'),
			('Chain mail', 16, 'Heavy', 13, 'TRUE'),
			('Splint', 17, 'Heavy', 15, 'TRUE'),
			('Plate', 18, 'Heavy', 15, 'TRUE');
end
if not exists (select 1 from dbo.[ClassFeatures])
begin
	insert into dbo.[ClassFeatures] ([Name], [ClassLevelId], [Description], [ParentFeatureName], [SubfeatureSelections], [Tags])
	values ('Saving Throw Proficiency (Strength, Constitution)', 1, '', '', NULL, 'savingThrowProficiency,str|savingThrowProficiency,con'),
('Armor Proficiency (Light, Medium, Shield)', 1, '', '', NULL, 'armorProficiency,light|armorProficiency,medium'),
('Barbarian Weapon Proficiencies', 1, 'As a barbarian, you have proficiency with all simple and martial weapons.', '', NULL, 'weaponProficiency,all'),
('Skill Proficiency', 1, '', '', NULL, 'skillSelect,1,8,10,13,14,16|skillSelect,1,8,10,13,14,16'),
('Rage', 1, 'In battle, you fight with primal ferocity. On your turn, you can enter a rage as a bonus action.

While raging, you gain the following benefits if you aren''t wearing heavy armor:

- You have advantage on Strength checks and Strength saving throws.
- When you make a melee weapon attack using Strength, you gain a +2 bonus to the damage roll that increases to +3 at 9th level and +4 at 16th level.
- You have resistance to bludgeoning, piercing, and slashing damage.

If you are able to cast spells, you can''t cast them or concentrate on them while raging.

Your rage lasts for 1 minute. It ends early if you are knocked unconscious or if your turn ends and you haven''t attacked a hostile creature since your last turn or taken damage since then. You can also end your rage on your turn as a bonus action.

Once you have raged twice, you must finish a long rest before you can rage again. This number goes up as you gain barbarian levels.', '', NULL, ''),
('Unarmored Defense', 1, 'While you are not wearing any armor, your armor class equals 10 + your Dexterity modifier + your Constitution modifier. You can use a shield and still gain this benefit.', '', NULL, 'unarmoredDefense,con'),
('Reckless Attack', 2, 'Starting at 2nd level, you can throw aside all concern for defense to attack with fierce desperation. When you make your first attack on your turn, you can decide to attack recklessly. Doing so gives you advantage on melee weapon attack rolls using Strength during this turn, but attack rolls against you have advantage until your next turn.', '', NULL, ''),
('Danger Sense', 2, 'At 2nd level, you gain an uncanny sense of when things nearby aren''t as they should be, giving you an edge when you dodge away from danger. You have advantage on Dexterity saving throws against effects that you can see, such as traps and spells. To gain this benefit, you can''t be blinded, deafened, or incapacitated.', '', NULL, ''),
('Additional Rage Use', 3, 'You can rage one more time per long rest.', '', NULL, ''),
('Additional Rage Use', 6, 'You can rage one more time per long rest.', '', NULL, ''),
('Additional Rage Use', 12, 'You can rage one more time per long rest.', '', NULL, ''),
('Additional Rage Use', 17, 'You can rage one more time per long rest.', '', NULL, ''),
('Unlimited Rage Uses', 20, 'You can now rage an unlimited number of times.', '', NULL, ''),
('Feat', 4, '', '', NULL, 'feat'),
('Feat', 8, '', '', NULL, 'feat'),
('Feat', 12, '', '', NULL, 'feat'),
('Feat', 16, '', '', NULL, 'feat'),
('Feat', 19, '', '', NULL, 'feat'),
('Extra Attack', 5, 'Beginning at 5th level, you can attack twice, instead of once, whenever you take the Attack action on your turn.', '', NULL, 'extraAttack,1'),
('Fast Movement', 5, 'Starting at 5th level, your speed increases by 10 feet while you aren''t wearing heavy armor.', '', NULL, 'fastMovement'),
('Feral Instinct', 7, 'By 7th level, your instincts are so honed that you have advantage on initiative rolls.

Additionally, if you are surprised at the beginning of combat and aren''t incapacitated, you can act normally on your first turn, but only if you enter your rage before doing anything else on that turn.', '', NULL, ''),
('Brutal Critical', 9, 'Beginning at 9th level, you can roll one additional weapon damage die when determining the extra damage for a critical hit with a melee attack.

This increases to two additional dice at 13th level and three additional dice at 17th level.', '', NULL, ''),
('Relentless Rage', 11, 'Starting at 11th level, your rage can keep you fighting despite grievous wounds. If you drop to 0 hit points while you''re raging and don''t die outright, you can make a DC 10 Constitution saving throw. If you succeed, you drop to 1 hit point instead.

Each time you use this feature after the first, the DC increases by 5. When you finish a short or long rest, the DC resets to 10.', '', NULL, ''),
('Persistent Rage', 15, 'Beginning at 15th level, your rage is so fierce that it ends early only if you fall unconscious or if you choose to end it.', '', NULL, ''),
('Indomitable Might', 18, 'Beginning at 18th level, if your total for a Strength check is less than your Strength score, you can use that score in place of the total.', '', NULL, ''),
('Primal Champion', 20, 'At 20th level, you embody the power of the wilds. Your Strength and Constitution scores increase by 4. Your maximum for those scores is now 24.', '', NULL, 'abilityImprovement,str,4|abilityImprovement,con,4'),
('Frenzy', 3, 'Starting when you choose this path at 3rd level, you can go into a frenzy when you rage. If you do so, for the duration of your rage you can make a single melee weapon attack as a bonus action on each of your turns after this one. When your rage ends, you suffer one level of exhaustion.', '', NULL, ''),
('Mindless Rage', 6, 'Beginning at 6th level, you can''t be charmed or frightened while raging. If you are charmed or frightened when you enter your rage, the effect is suspended for the duration of the rage.', '', NULL, ''),
('Intimidating Presence', 10, 'Beginning at 10th level, you can use your action to frighten someone with your menacing presence. When you do so, choose one creature that you can see within 30 feet of you. If the creature can see or hear you, it must succeed on a Wisdom saving throw (DC equal to 8 + your proficiency bonus + your Charisma modifier) or be frightened of you until the end of your next turn. On subsequent turns, you can use your action to extend the duration of this effect on the frightened creature until the end of your next turn. This effect ends if the creature ends its turn out of line of sight or more than 60 feet away from you.

If the creature succeeds on its saving throw, you can''t use this feature on that creature again for 24 hours.', '', NULL, ''),
('Retaliation', 14, 'Starting at 14th level, when you take damage from a creature that is within 5 feet of you, you can use your reaction to make a melee weapon attack against that creature.', '', NULL, ''),
('Spirit Seeker', 21, 'Yours is a path that seeks attunement with the natural world, giving you a kinship with beasts. At 3rd level when you adopt this path, you gain the ability to cast the Beast Sense and Speak with Animals spells, but only as rituals.', '', NULL, ''),
('Totem Spirit', 21, 'At 3rd level, when you adopt this path, you choose a totem spirit and gain its feature. You must make or acquire a physical totem object – an amulet or similar adornment – that incorporates fur or feathers, claws, teeth, or bones of the totem animal. At your option, you also gain minor physical attributes that are reminiscent of your totem spirit. For example, if you have a bear totem spirit, you might be unusually hairy and thick-skinned, or if your totem is the eagle, your eyes turn bright yellow.

Your totem animal might be an animal related to those listed here but more appropriate to your homeland. For example, you could choose a hawk or vulture in place of an eagle.', '', 1, ''),
('Totem Spirit - Bear', NULL, 'Bear - While raging, you have resistance to all damage except psychic damage. The spirit of the bear makes you tough enough to stand up to any punishment.', 'Totem Spirit', NULL, ''),
('Totem Spirit - Eagle', NULL, 'Eagle - While you''re raging and aren''t wearing heavy armor, other creatures have disadvantage on opportunity attack rolls against you, and you can use the Dash action as a bonus action on your turn. The spirit of the eagle makes you into a predator who can weave through the fray with ease.', 'Totem Spirit', NULL, ''),
('Totem Spirit - Wolf', NULL, 'Wolf - While you''re raging, your friends have advantage on melee attack rolls against any creature within 5 feet of you that is hostile to you. The spirit of the wolf makes you a leader of hunters.', 'Totem Spirit', NULL, ''),
('Additional Rage Use', 21, 'You can rage one more time per long rest.', '', NULL, ''),
('Additional Rage Use', 24, 'You can rage one more time per long rest.', '', NULL, ''),
('Additional Rage Use', 30, 'You can rage one more time per long rest.', '', NULL, ''),
('Additional Rage Use', 35, 'You can rage one more time per long rest.', '', NULL, ''),
('Unlimited Rage Uses', 38, 'You can now rage an unlimited number of times.', '', NULL, ''),
('Feat', 22, '', '', NULL, 'feat'),
('Feat', 26, '', '', NULL, 'feat'),
('Feat', 30, '', '', NULL, 'feat'),
('Feat', 34, '', '', NULL, 'feat'),
('Feat', 37, '', '', NULL, 'feat'),
('Extra Attack', 23, 'Beginning at 5th level, you can attack twice, instead of once, whenever you take the Attack action on your turn.', '', NULL, 'extraAttack,1'),
('Fast Movement', 23, 'Starting at 5th level, your speed increases by 10 feet while you aren''t wearing heavy armor.', '', NULL, 'fastMovement'),
('Feral Instinct', 25, 'By 7th level, your instincts are so honed that you have advantage on initiative rolls.

Additionally, if you are surprised at the beginning of combat and aren''t incapacitated, you can act normally on your first turn, but only if you enter your rage before doing anything else on that turn.', '', NULL, ''),
('Brutal Critical', 27, 'Beginning at 9th level, you can roll one additional weapon damage die when determining the extra damage for a critical hit with a melee attack.

This increases to two additional dice at 13th level and three additional dice at 17th level.', '', NULL, ''),
('Relentless Rage', 29, 'Starting at 11th level, your rage can keep you fighting despite grievous wounds. If you drop to 0 hit points while you''re raging and don''t die outright, you can make a DC 10 Constitution saving throw. If you succeed, you drop to 1 hit point instead.

Each time you use this feature after the first, the DC increases by 5. When you finish a short or long rest, the DC resets to 10.', '', NULL, ''),
('Persistent Rage', 33, 'Beginning at 15th level, your rage is so fierce that it ends early only if you fall unconscious or if you choose to end it.', '', NULL, ''),
('Indomitable Might', 36, 'Beginning at 18th level, if your total for a Strength check is less than your Strength score, you can use that score in place of the total.', '', NULL, ''),
('Primal Champion', 38, 'At 20th level, you embody the power of the wilds. Your Strength and Constitution scores increase by 4. Your maximum for those scores is now 24.', '', NULL, 'abilityImprovement,str,4|abilityImprovement,con,4'),
('Aspect of the Beast', 24, 'At 6th level, you gain a magical benefit based on the totem animal of your choice. You can choose the same animal you selected at 3rd level or a different one.', '', 1, ''),
('Aspect of the Beast - Bear', NULL, 'Bear - You gain the might of a bear. Your carrying capacity (including maximum load and maximum lift) is doubled, and you have advantage on Strength checks made to push, pull, lift, or break objects.', 'Aspect of the Beast', NULL, ''),
('Aspect of the Beast - Eagle', NULL, 'Eagle - You gain the eyesight of an eagle. You can see up to 1 mile away with no difficulty, able to discern even fine details as though looking at something no more than 100 feet away from you. Additionally, dim light doesn''t impose disadvantage on your Wisdom (Perception) checks.', 'Aspect of the Beast', NULL, ''),
('Aspect of the Beast - Wolf', NULL, 'Wolf - You gain the hunting sensibilities of a wolf. You can track other creatures while traveling at a fast pace, and you can move stealthily while traveling at a normal pace.', 'Aspect of the Beast', NULL, ''),
('Spirit Walker', 28, 'At 10th level, you can cast the Commune with Nature spell, but only as a ritual. When you do so, a spiritual version of one of the animals you chose for Totem Spirit or Aspect of the Beast appears to you to convey the information you seek.', '', NULL, ''),
('Totemic Attunement', 32, 'At 14th level, you gain a magical benefit based on a totem animal of your choice. You can choose the same animal you selected previously or a different one.

Bear - While you''re raging, any creature within 5 feet of you that''s hostile to you has disadvantage on attack rolls against targets other than you or another character with this feature. An enemy is immune to this effect if it can''t see or hear you or if it can''t be frightened.

Eagle - While raging, you have a flying speed equal to your current walking speed. This benefit works only in short bursts; you fall if you end your turn in the air and nothing else is holding you aloft.

Wolf - While you''re raging, you can use a bonus action on your turn to knock a Large or smaller creature prone when you hit it with melee weapon attack.', '', 1, ''),
('Totemic Attunement - Bear', NULL, 'Bear - While you''re raging, any creature within 5 feet of you that''s hostile to you has disadvantage on attack rolls against targets other than you or another character with this feature. An enemy is immune to this effect if it can''t see or hear you or if it can''t be frightened.', 'Totemic Attunement', NULL, ''),
('Totemic Attunement - Eagle', NULL, 'Eagle - While raging, you have a flying speed equal to your current walking speed. This benefit works only in short bursts; you fall if you end your turn in the air and nothing else is holding you aloft.', 'Totemic Attunement', NULL, ''),
('Totemic Attunement - Wolf', NULL, 'Wolf - While you''re raging, you can use a bonus action on your turn to knock a Large or smaller creature prone when you hit it with melee weapon attack.', 'Totemic Attunement', NULL, ''),
('Magic Awareness', 39, 'When you choose this path at 3rd level, as an action, you can open your awareness to the presence of concentrated magic. Until the end of your next turn, you know the location of any spell or magic item within 60 feet of you that isn’t behind total cover. When you sense a spell, you learn which school of magic it belongs to.

You can use this feature a number of times equal to your proficiency bonus, and you regain all expended uses when you finish a long rest.', '', NULL, ''),
('Wild Surge', 39, 'Also at 3rd level, the magical energy roiling inside you sometimes erupts from you. When you enter your rage, roll on the Wild Magic table to determine the magical effect produced.

If the effect requires a saving throw, the DC equals 8 + your proficiency bonus + your Constitution modifier.

1:    Each creature of your choice that you can see within 30 feet of you must succeed on a Constitution saving throw or take 1d12 necrotic damage. You also gain temporary hit points equal to 1d12 plus your barbarian level.

2:    You teleport up to 30 feet to an unoccupied space you can see. Until your rage ends, you can use this effect again on each of your turns as a bonus action.

3:    An intangible spirit, which looks like a flumph or a pixie (your choice), appears within 5 feet of one creature of your choice that you can see within 30 feet of you. At the end of the current turn, the spirit explodes, and each creature within 5 feet of it must succeed on a Dexterity saving throw or take 1d6 force damage. Until your rage ends, you can use this effect again, summoning another spirit, on each of your turns as a bonus action.

4:    Magic infuses one weapon of your choice that you are holding. Until your rage ends, the weapon''s damage type changes to force, and it gains the light and thrown properties, with a normal range of 20 feet and a long range of 60 feet. If the weapon leaves your hand, the weapon reappears in your hand at the end of the current turn.

5:    Whenever a creature hits you with an attack roll before your rage ends, that creature takes 1d6 force damage, as magic lashes out in retribution.

6:    Until your rage ends, you are surrounded by multicolored, protective lights; you gain a +1 bonus to AC, and while within 10 feet of you, your allies gain the same bonus.

7:    Flowers and vines temporarily grow around you; until your rage ends, the ground within 15 feet of you is difficult terrain for your enemies.

8:    A bolt of light shoots from your chest. Another creature of your choice that you can see within 30 feet of you must succeed on a Constitution saving throw or take 1d6 radiant damage and be blinded until the start of your next turn. Until your rage ends, you can use this effect again on each of your turns as a bonus action.', '', NULL, ''),
('Additional Rage Use', 39, 'You can rage one more time per long rest.', '', NULL, ''),
('Additional Rage Use', 42, 'You can rage one more time per long rest.', '', NULL, ''),
('Additional Rage Use', 48, 'You can rage one more time per long rest.', '', NULL, ''),
('Additional Rage Use', 53, 'You can rage one more time per long rest.', '', NULL, ''),
('Unlimited Rage Uses', 56, 'You can now rage an unlimited number of times.', '', NULL, ''),
('Feat', 40, '', '', NULL, 'feat'),
('Feat', 44, '', '', NULL, 'feat'),
('Feat', 48, '', '', NULL, 'feat'),
('Feat', 52, '', '', NULL, 'feat'),
('Feat', 55, '', '', NULL, 'feat'),
('Extra Attack', 41, 'Beginning at 5th level, you can attack twice, instead of once, whenever you take the Attack action on your turn.', '', NULL, 'extraAttack,1'),
('Fast Movement', 41, 'Starting at 5th level, your speed increases by 10 feet while you aren''t wearing heavy armor.', '', NULL, 'fastMovement'),
('Feral Instinct', 43, 'By 7th level, your instincts are so honed that you have advantage on initiative rolls.

Additionally, if you are surprised at the beginning of combat and aren''t incapacitated, you can act normally on your first turn, but only if you enter your rage before doing anything else on that turn.', '', NULL, ''),
('Brutal Critical', 45, 'Beginning at 9th level, you can roll one additional weapon damage die when determining the extra damage for a critical hit with a melee attack.

This increases to two additional dice at 13th level and three additional dice at 17th level.', '', NULL, ''),
('Relentless Rage', 47, 'Starting at 11th level, your rage can keep you fighting despite grievous wounds. If you drop to 0 hit points while you''re raging and don''t die outright, you can make a DC 10 Constitution saving throw. If you succeed, you drop to 1 hit point instead.

Each time you use this feature after the first, the DC increases by 5. When you finish a short or long rest, the DC resets to 10.', '', NULL, ''),
('Persistent Rage', 51, 'Beginning at 15th level, your rage is so fierce that it ends early only if you fall unconscious or if you choose to end it.', '', NULL, ''),
('Indomitable Might', 54, 'Beginning at 18th level, if your total for a Strength check is less than your Strength score, you can use that score in place of the total.', '', NULL, ''),
('Primal Champion', 56, 'At 20th level, you embody the power of the wilds. Your Strength and Constitution scores increase by 4. Your maximum for those scores is now 24.', '', NULL, 'abilityImprovement,str,4|abilityImprovement,con,4'),
('Bolstering Magic', 42, 'Beginning at 6th level, you can harness your wild magic to bolster yourself or a companion. As an action, you can touch one creature (which can be yourself) and confer one of the following benefits of your choice to that creature:

For 10 minutes, the creature can roll a d3 whenever making an attack roll or an ability check and add the number rolled to the d20 roll.
Roll a d3. The creature regains one expended spell slot, the level of which equals the number rolled or lower (the creature’s choice). Once a creature receives this benefit, that creature can’t receive it again until after a long rest.
You can take this action a number of times equal to your proficiency bonus, and you regain all expended uses when you finish a long rest.', '', NULL, ''),
('Unstable Backlash', 46, 'At 10th level, when you are imperiled during your rage, the magic within you can lash out; immediately after you take damage or fail a saving throw while raging, you can use your reaction to roll on the Wild Magic table and immediately produce the effect rolled. This effect replaces your current Wild Magic effect.', '', NULL, ''),
('Controlled Surge', 50, 'At 14th level, whenever you roll on the Wild Magic table, you can roll the die twice and choose which of the two effects to unleash. If you roll the same number on both dice, you can ignore the number and choose any effect on the table.', '', NULL, ''),
('Saving Throw Proficiency (Dexterity, Charisma)', 57, '', '', NULL, 'savingThrowProficiency,dex|savingThrowProficiency,cha'),
('Armor Proficiency (Light)', 57, '', '', NULL, 'armorProficiency,light'),
('Bard Weapon Proficiencies', 57, 'As a bard, you have proficiency with all simple weapons, hand crossbows, longswords, rapiers and shortswords.', '', NULL, 'weaponProficiency,simple|weaponProficiency,single,35|weaponProficiency,single,23|weaponProficiency,single,27|weaponProficiency,single,29'),
('Skill Proficiency', 57, '', '', NULL, 'skillSelectAny|skillSelectAny|skillSelectAny'),
('Bardic Inspiration', 57, 'You can inspire others through stirring words or music. To do so, you use a bonus action on your turn to choose one creature other than yourself within 60 feet of you who can hear you. That creature gains one Bardic Inspiration die, a d6.

Once within the next 10 minutes, the creature can roll the die and add the number rolled to one ability check, attack roll, or saving throw it makes. The creature can wait until after it rolls the d20 before deciding to use the Bardic Inspiration die, but must decide before the DM says whether the roll succeeds or fails. Once the Bardic Inspiration die is rolled, it is lost. A creature can have only one Bardic Inspiration die at a time.

You can use this feature a number of times equal to your Charisma modifier (a minimum of once). You regain any expended uses when you finish a long rest.

Your Bardic Inspiration die changes when you reach certain levels in this class. The die becomes a d8 at 5th level, a d10 at 10th level, and a d12 at 15th level.', '', NULL, ''),
('Jack of All Trades', 58, 'Starting at 2nd level, you can add half your proficiency bonus, rounded down, to any ability check you make that doesn''t already include your proficiency bonus.', '', NULL, 'jackOfAllTrades'),
('Song of Rest', 58, 'Beginning at 2nd level, you can use soothing music or oration to help revitalize your wounded allies during a short rest. If you or any friendly creatures who can hear your performance regain hit points at the end of the short rest by spending one or more Hit Dice, each of those creatures regains an extra 1d6 hit points.

The extra Hit Points increase when you reach certain levels in this class: to 1d8 at 9th level, to 1d10 at 13th level, and to 1d12 at 17th level.', '', NULL, ''),
('Expertise', 59, 'At 3rd level, choose two of your skill proficiencies. Your proficiency bonus is doubled for any ability check you make that uses either of the chosen proficiencies.

At 10th level, you can choose another two skill proficiencies to gain this benefit.', '', NULL, 'expertise|expertise'),
('Expertise', 66, 'At 3rd level, choose two of your skill proficiencies. Your proficiency bonus is doubled for any ability check you make that uses either of the chosen proficiencies.

At 10th level, you can choose another two skill proficiencies to gain this benefit.', '', NULL, 'expertise|expertise'),
('Feat', 60, '', '', NULL, 'feat'),
('Feat', 64, '', '', NULL, 'feat'),
('Feat', 68, '', '', NULL, 'feat'),
('Feat', 72, '', '', NULL, 'feat'),
('Feat', 75, '', '', NULL, 'feat'),
('Font of Inspiration', 61, 'Beginning when you reach 5th level, you regain all of your expended uses of Bardic Inspiration when you finish a short or long rest.', '', NULL, ''),
('Countercharm', 62, 'At 6th level, you gain the ability to use musical notes or words of power to disrupt mind-influencing effects. As an action, you can start a performance that lasts until the end of your next turn. During that time, you and any friendly creatures within 30 feet of you have advantage on saving throws against being frightened or charmed. A creature must be able to hear you to gain this benefit. The performance ends early if you are incapacitated or silenced or if you voluntarily end it (no action required).', '', NULL, ''),
('Magical Secrets', 66, 'By 10th level, you have plundered magical knowledge from a wide spectrum of disciplines. Choose two spells from any classes, including this one. A spell you choose must be of a level you can cast, as shown on the Bard table, or a cantrip.

The chosen spells count as bard spells for you and are included in the number in the Spells Known column of the Bard table.

You learn two additional spells from any classes at 14th level and again at 18th level.', '', NULL, 'spellSelectAny,5|spellSelectAny,5'),
('Superior Inspiration', 76, 'At 20th level, when you roll initiative and have no uses of Bardic Inspiration left, you regain one use.', '', NULL, ''),
('Bonus Proficiencies', 59, 'When you join the College of Lore at 3rd level, you gain proficiency with three skills of your choice.', '', NULL, 'skillSelectAny|skillSelectAny|skillSelectAny'),
('Cutting Words', 59, 'Also at 3rd level, you learn how to use your wit to distract, confuse, and otherwise sap the confidence and competence of others. When a creature that you can see within 60 feet of you makes an attack roll, an ability check, or a damage roll, you can use your reaction to expend one of your uses of Bardic Inspiration, rolling a Bardic Inspiration die and subtracting the number rolled from the creature''s roll. You can choose to use this feature after the creature makes its roll, but before the DM determines whether the attack roll or ability check succeeds or fails, or before the creature deals its damage. The creature is immune if it can''t hear you or if it''s immune to being charmed.', '', NULL, ''),
('Additional Magical Secrets', 62, 'At 6th level, you learn two spells of your choice from any class. A spell you choose must be of a level you can cast, as shown on the Bard table, or a cantrip. The chosen spells count as bard spells for you but don''t count against the number of bard spells you know.', '', NULL, 'spellSelectAny,3|spellSelectAny,3'),
('Peerless Skill', 70, 'Starting at 14th level, when you make an ability check, you can expend one use of Bardic Inspiration. Roll a Bardic Inspiration die and add the number rolled to your ability check. You can choose to do so after you roll the die for the ability check, but before the DM tells you whether you succeed or fail.', '', NULL, ''),
('Expertise', 77, 'At 3rd level, choose two of your skill proficiencies. Your proficiency bonus is doubled for any ability check you make that uses either of the chosen proficiencies.

At 10th level, you can choose another two skill proficiencies to gain this benefit.', '', NULL, 'expertise|expertise'),
('Expertise', 84, 'At 3rd level, choose two of your skill proficiencies. Your proficiency bonus is doubled for any ability check you make that uses either of the chosen proficiencies.

At 10th level, you can choose another two skill proficiencies to gain this benefit.', '', NULL, 'expertise|expertise'),
('Feat', 78, '', '', NULL, 'feat'),
('Feat', 82, '', '', NULL, 'feat'),
('Feat', 86, '', '', NULL, 'feat'),
('Feat', 90, '', '', NULL, 'feat'),
('Feat', 93, '', '', NULL, 'feat'),
('Font of Inspiration', 79, 'Beginning when you reach 5th level, you regain all of your expended uses of Bardic Inspiration when you finish a short or long rest.', '', NULL, ''),
('Countercharm', 80, 'At 6th level, you gain the ability to use musical notes or words of power to disrupt mind-influencing effects. As an action, you can start a performance that lasts until the end of your next turn. During that time, you and any friendly creatures within 30 feet of you have advantage on saving throws against being frightened or charmed. A creature must be able to hear you to gain this benefit. The performance ends early if you are incapacitated or silenced or if you voluntarily end it (no action required).', '', NULL, ''),
('Magical Secrets', 84, 'By 10th level, you have plundered magical knowledge from a wide spectrum of disciplines. Choose two spells from any classes, including this one. A spell you choose must be of a level you can cast, as shown on the Bard table, or a cantrip.

The chosen spells count as bard spells for you and are included in the number in the Spells Known column of the Bard table.

You learn two additional spells from any classes at 14th level and again at 18th level.', '', NULL, 'spellSelectAny,5|spellSelectAny,5'),
('Superior Inspiration', 94, 'At 20th level, when you roll initiative and have no uses of Bardic Inspiration left, you regain one use.', '', NULL, ''),
('Armor Proficiency (Medium)', 77, '', '', NULL, 'armorProficiency,medium'),
('Weapon Proficiency (Scimitar)', 77, '', '', NULL, 'weaponProficiency,single,28'),
('Fighting Style - Bard', 77, 'At 3rd level, you adopt a particular style of fighting as your specialty. Choose one of the following options. You can''t take a Fighting Style option more than once, even if you later get to choose again.', '', 1, ''),
('Dueling', NULL, 'When you are wielding a melee weapon in one hand and no other weapons, you gain a +2 bonus to damage rolls with that weapon.', 'Fighting Style - Bard', NULL, 'duelingStyle'),
('Two-Weapon Fighting', NULL, 'When you engage in two-weapon fighting, you can add your ability modifier to the damage of the second attack.', 'Fighting Style - Bard', NULL, 'twoWeaponFightingStyle'),
('Blade Flourish', 77, 'At 3rd level, you learn to conduct impressive displays of martial prowess and speed.

Whenever you take the Attack action on your turn, your walking speed increases by 10 feet until the end of the turn, and if a weapon attack that you make as part of this action hits a creature, you can use one of the following Blade Flourish options of your choice. You can use only one Blade Flourish option per turn.

Defensive Flourish - You can expend one use of your Bardic Inspiration to cause the weapon to deal extra damage to the target you hit. The damage equals the number you roll on the Bardic Inspiration die. You also add the number rolled to your AC until the start of your next turn.

Slashing Flourish - You can expend one use of your Bardic Inspiration to cause the weapon to deal extra damage to the target you hit and to any other creature of your choice that you can see within 5 feet of you. The damage equals the number you roll on the Bardic Inspiration die.

Mobile Flourish - You can expend one use of your Bardic Inspiration to cause the weapon to deal extra damage to the target you hit. The damage equals the number you roll on the Bardic Inspiration die. You can also push the target up to 5 feet away from you, plus a number of feet equal to the number you roll on that die. You can then immediately use your reaction to move up to your walking speed to an unoccupied space within 5 feet of the target.', '', NULL, ''),
('Extra Attack', 80, 'Starting at 6th level, you can attack twice, instead of once, whenever you take the Attack action on your turn.', '', NULL, 'extraAttack,1'),
('Master''s Flourish', 88, 'Starting at 14th level, whenever you use a Blade Flourish option, you can roll a d6 and use it instead of expending a Bardic Inspiration die.', '', NULL, ''),
('Expertise', 95, 'At 3rd level, choose two of your skill proficiencies. Your proficiency bonus is doubled for any ability check you make that uses either of the chosen proficiencies.

At 10th level, you can choose another two skill proficiencies to gain this benefit.', '', NULL, 'expertise|expertise'),
('Expertise', 102, 'At 3rd level, choose two of your skill proficiencies. Your proficiency bonus is doubled for any ability check you make that uses either of the chosen proficiencies.

At 10th level, you can choose another two skill proficiencies to gain this benefit.', '', NULL, 'expertise|expertise'),
('Feat', 96, '', '', NULL, 'feat'),
('Feat', 100, '', '', NULL, 'feat'),
('Feat', 104, '', '', NULL, 'feat'),
('Feat', 108, '', '', NULL, 'feat'),
('Feat', 111, '', '', NULL, 'feat'),
('Font of Inspiration', 97, 'Beginning when you reach 5th level, you regain all of your expended uses of Bardic Inspiration when you finish a short or long rest.', '', NULL, ''),
('Countercharm', 98, 'At 6th level, you gain the ability to use musical notes or words of power to disrupt mind-influencing effects. As an action, you can start a performance that lasts until the end of your next turn. During that time, you and any friendly creatures within 30 feet of you have advantage on saving throws against being frightened or charmed. A creature must be able to hear you to gain this benefit. The performance ends early if you are incapacitated or silenced or if you voluntarily end it (no action required).', '', NULL, ''),
('Magical Secrets', 102, 'By 10th level, you have plundered magical knowledge from a wide spectrum of disciplines. Choose two spells from any classes, including this one. A spell you choose must be of a level you can cast, as shown on the Bard table, or a cantrip.

The chosen spells count as bard spells for you and are included in the number in the Spells Known column of the Bard table.

You learn two additional spells from any classes at 14th level and again at 18th level.', '', NULL, 'spellSelectAny,5|spellSelectAny,5'),
('Superior Inspiration', 112, 'At 20th level, when you roll initiative and have no uses of Bardic Inspiration left, you regain one use.', '', NULL, ''),
('Armor Proficiency (Medium, Shield)', 95, '', '', NULL, 'armorProficiency,medium'),
('Weapon Proficiency (Martial)', 95, '', '', NULL, 'weaponProficiency,martial|weaponProficiency,single,38'),
('Combat Inspiration', 95, 'Also at 3rd level, you learn to inspire others in battle. A creature that has a Bardic Inspiration die from you can roll that die and add the number rolled to a weapon damage roll it just made. Alternatively, when an attack roll is made against the creature, it can use its reaction to roll the Bardic Inspiration die and add the number rolled to its AC against that attack, after seeing the roll but before knowing whether it hits or misses.', '', NULL, ''),
('Extra Attack', 98, 'Starting at 6th level, you can attack twice, instead of once, whenever you take the Attack action on your turn.', '', NULL, 'extraAttack,1'),
('Battle Magic', 106, 'At 14th level, you have mastered the art of weaving spellcasting and weapon use into a single harmonious act. When you use your action to cast a bard spell, you can make one weapon attack as a bonus action.', '', NULL, ''),
('Saving Throw Proficiency (Wisdom, Charisma)', 113, '', '', NULL, 'savingThrowProficiency,wis|savingThrowProficiency,cha'),
('Armor Proficiency (Light, Medium, Shield)', 113, '', '', NULL, 'armorProficiency,light|armorProficiency,medium'),
('Cleric Weapon Proficiencies', 113, 'As a cleric, you have proficiency with all simple weapons.', '', NULL, 'weaponProficiency,simple|weaponProficiency,single,38'),
('Skill Proficiency', 113, '', '', NULL, 'skillSelect,6,9,11,12,18|skillSelect,6,9,11,12,18'),
('Channel Divinity', 114, 'At 2nd level, you gain the ability to channel divine energy directly from your deity, using that energy to fuel magical effects. You start with two such effects: Turn Undead and an effect determined by your domain. Some domains grant you additional effects as you advance in levels, as noted in the domain description.

When you use your Channel Divinity, you choose which effect to create. You must then finish a short or long rest to use your Channel Divinity again.

Some Channel Divinity effects require saving throws. When you use such an effect from this class, the DC equals your cleric spell save DC.

Beginning at 6th level, you can use your Channel Divinity twice between rests, and beginning at 18th level, you can use it three times between rests. When you finish a short or long rest, you regain your expended uses.', '', NULL, ''),
('Channel Divinity: Turn Undead', 114, 'As an action, you present your holy symbol and speak a prayer censuring the undead. Each undead that can see or hear you within 30 feet of you must make a Wisdom saving throw. If the creature fails its saving throw, it is turned for 1 minute or until it takes any damage.

A turned creature must spend its turns trying to move as far away from you as it can, and it can''t willingly move to a space within 30 feet of you. It also can''t take reactions. For its action, it can use only the Dash action or try to escape from an effect that prevents it from moving. If there''s nowhere to move, the creature can use the Dodge action.', '', NULL, ''),
('Feat', 116, '', '', NULL, 'feat'),
('Feat', 120, '', '', NULL, 'feat'),
('Feat', 124, '', '', NULL, 'feat'),
('Feat', 128, '', '', NULL, 'feat'),
('Feat', 131, '', '', NULL, 'feat'),
('Destroy Undead', 117, 'Starting at 5th level, when an undead fails its saving throw against your Turn Undead feature, the creature is instantly destroyed if its challenge rating is at or below a certain threshold, as shown in the Cleric table above.', '', NULL, ''),
('Divine Intervention', 122, 'Beginning at 10th level, you can call on your deity to intervene on your behalf when your need is great.

Imploring your deity''s aid requires you to use your action. Describe the assistance you seek, and roll percentile dice. If you roll a number equal to or lower than your cleric level, your deity intervenes. The DM chooses the nature of the intervention; the effect of any cleric spell or cleric domain spell would be appropriate. If your deity intervenes, you can''t use this feature again for 7 days. Otherwise, you can use it again after you finish a long rest.

At 20th level, your call for intervention succeeds automatically, no roll required.', '', NULL, ''),
('Domain Spells', 113, 'At 1st level, you gain Command and Identify spells.', '', NULL, 'spell,55|spell,189'),
('Domain Spells', 115, 'At 3rd level, you gain Augury and Suggestion spells.', '', NULL, 'spell,19|spell,318'),
('Domain Spells', 117, 'At 5th level, you gain Nondetection and Speak with Dead spells.', '', NULL, 'spell,241|spell,307'),
('Domain Spells', 119, 'At 7th level, you gain Arcane Eye and Confusion spells.', '', NULL, 'spell,13|spell,62'),
('Domain Spells', 121, 'At 9th level, you gain Legend Lore and Scrying spells.', '', NULL, 'spell,198|spell,287'),
('Blessings of Knowledge', 113, 'At 1st level, you learn two languages of your choice. You also become proficient in your choice of two of the following skills: Arcana, History, Nature, or Religion.

Your proficiency bonus is doubled for any ability check you make that uses either of those skills.', '', NULL, 'skillSelectExpertise,5,6,8,9|skillSelectExpertise,5,6,8,9'),
('Channel Divinity: Knowledge of the Ages', 114, 'Starting at 2nd level, you can use your Channel Divinity to tap into a divine well of knowledge. As an action, you choose one skill or tool. For 10 minutes, you have proficiency with the chosen skill or tool.', '', NULL, ''),
('Channel Divinity: Read Thoughts', 118, 'At 6th level, you can use your Channel Divinity to read a creature''s thoughts. You can then use your access to the creature''s mind to command it.

As an action, choose one creature that you can see within 60 feet of you. That creature must make a Wisdom saving throw. If the creature succeeds on the saving throw, you can''t use this feature on it again until you finish a long rest.

If the creature fails its save, you can read its surface thoughts (those foremost in its mind, reflecting its current emotions and what it is actively thinking about) when it is within 60 feet of you. This effect lasts for 1 minute.

During that time, you can use your action to end this effect and cast the Suggestion spell on the creature without expending a spell slot. The target automatically fails its saving throw against the spell.', '', NULL, ''),
('Potent Spellcasting', 120, 'Starting at 8th level, you add your Wisdom modifier to the damage you deal with any cleric cantrip.', '', NULL, ''),
('Visions of the Past', 129, 'Starting at 17th level, you can call up visions of the past that relate to an object you hold or your immediate surroundings. You spend at least 1 minute in meditation and prayer, then receive dreamlike, shadowy glimpses of recent events. You can meditate in this way for a number of minutes equal to your Wisdom score and must maintain concentration during that time, as if you were casting a spell.

Once you use this feature, you can''t use it again until you finish a short or long rest.

Object Reading - Holding an object as you meditate, you can see visions of the object''s previous owner. After meditating for 1 minute, you learn how the owner acquired and lost the object, as well as the most recent significant event involving the object and that owner. If the object was owned by another creature in the recent past (within a number of days equal to your Wisdom score), you can spend 1 additional minute for each owner to learn the same information about that creature.

Area Reading - As you meditate, you see visions of recent events in your immediate vicinity (a room, street, tunnel, clearing, or the like, up to a 50-foot cube), going back a number of days equal to your Wisdom score. For each minute you meditate, you learn about one significant event, beginning with the most recent. Significant events typically involve powerful emotions, such as battles and betrayals, marriages and murders, births and funerals. However, they might also include more mundane events that are nevertheless important in your current situation.', '', NULL, ''),
('Saving Throw Proficiency (Wisdom, Charisma)', 133, '', '', NULL, 'savingThrowProficiency,wis|savingThrowProficiency,cha'),
('Armor Proficiency (Light, Medium, Heavy, Shield)', 133, '', '', NULL, 'armorProficiency,all'),
('Cleric Weapon Proficiencies', 133, 'As a cleric, you have proficiency with all simple weapons.', '', NULL, 'weaponProficiency,simple|weaponProficiency,single,38'),
('Skill Proficiency', 133, '', '', NULL, 'skillSelect,6,9,11,12,18|skillSelect,6,9,11,12,18'),
('Channel Divinity', 134, 'At 2nd level, you gain the ability to channel divine energy directly from your deity, using that energy to fuel magical effects. You start with two such effects: Turn Undead and an effect determined by your domain. Some domains grant you additional effects as you advance in levels, as noted in the domain description.

When you use your Channel Divinity, you choose which effect to create. You must then finish a short or long rest to use your Channel Divinity again.

Some Channel Divinity effects require saving throws. When you use such an effect from this class, the DC equals your cleric spell save DC.

Beginning at 6th level, you can use your Channel Divinity twice between rests, and beginning at 18th level, you can use it three times between rests. When you finish a short or long rest, you regain your expended uses.', '', NULL, ''),
('Channel Divinity: Turn Undead', 114, 'As an action, you present your holy symbol and speak a prayer censuring the undead. Each undead that can see or hear you within 30 feet of you must make a Wisdom saving throw. If the creature fails its saving throw, it is turned for 1 minute or until it takes any damage.

A turned creature must spend its turns trying to move as far away from you as it can, and it can''t willingly move to a space within 30 feet of you. It also can''t take reactions. For its action, it can use only the Dash action or try to escape from an effect that prevents it from moving. If there''s nowhere to move, the creature can use the Dodge action.', '', NULL, ''),
('Feat', 136, '', '', NULL, 'feat'),
('Feat', 140, '', '', NULL, 'feat'),
('Feat', 144, '', '', NULL, 'feat'),
('Feat', 148, '', '', NULL, 'feat'),
('Feat', 151, '', '', NULL, 'feat'),
('Destroy Undead', 137, 'Starting at 5th level, when an undead fails its saving throw against your Turn Undead feature, the creature is instantly destroyed if its challenge rating is at or below a certain threshold, as shown in the Cleric table above.', '', NULL, ''),
('Divine Intervention', 142, 'Beginning at 10th level, you can call on your deity to intervene on your behalf when your need is great.

Imploring your deity''s aid requires you to use your action. Describe the assistance you seek, and roll percentile dice. If you roll a number equal to or lower than your cleric level, your deity intervenes. The DM chooses the nature of the intervention; the effect of any cleric spell or cleric domain spell would be appropriate. If your deity intervenes, you can''t use this feature again for 7 days. Otherwise, you can use it again after you finish a long rest.

At 20th level, your call for intervention succeeds automatically, no roll required.', '', NULL, ''),
('Domain Spells', 133, 'At 1st level, you gain Bless and Cure Wounds spells.', '', NULL, 'spell,34|spell,85'),
('Domain Spells', 135, 'At 3rd level, you gain Lesser Restoration and Spiritual Weapon spells.', '', NULL, 'spell,201|spell,312'),
('Domain Spells', 137, 'At 5th level, you gain Beacon of Hope and Revifify spells.', '', NULL, 'spell,28|spell,282'),
('Domain Spells', 139, 'At 7th level, you gain Death Ward and Guardian of Faith spells.', '', NULL, 'spell,90|spell,165'),
('Domain Spells', 141, 'At 9th level, you gain Mass Cure Wounds and Raise Dead spells.', '', NULL, 'spell,218|spell,271'),
('Disciple of Life', 133, 'Also starting at 1st level, your healing spells are more effective. Whenever you use a spell of 1st level or higher to restore hit points to a creature, the creature regains additional hit points equal to 2 + the spell''s level.', '', NULL, ''),
('Channel Divinity: Preserve Life', 134, 'Starting at 2nd level, you can use your Channel Divinity to heal the badly injured.

As an action, you present your holy symbol and evoke healing energy that can restore a number of hit points equal to five times your cleric level. Choose any creatures within 30 feet of you, and divide those hit points among them. This feature can restore a creature to no more than half of its hit point maximum. You can''t use this feature on an undead or a construct.', '', NULL, ''),
('Blessed Healer', 138, 'Beginning at 6th level, the healing spells you cast on others heal you as well. When you cast a spell of 1st level or higher that restores hit points to a creature other than you, you regain hit points equal to 2 + the spell''s level.', '', NULL, ''),
('Divine Strike', 140, 'At 8th level, you gain the ability to infuse your weapon strikes with divine energy. Once on each of your turns when you hit a creature with a weapon attack, you can cause the attack to deal an extra 1d8 radiant damage to the target. When you reach 14th level, the extra damage increases to 2d8.', '', NULL, ''),
('Supreme Healing', 149, 'Starting at 17th level, when you would normally roll one or more dice to restore hit points with a spell, you instead use the highest number possible for each die. For example, instead of restoring 2d6 hit points to a creature, you restore 12.', '', NULL, ''),
('Saving Throw Proficiency (Wisdom, Charisma)', 153, '', '', NULL, 'savingThrowProficiency,wis|savingThrowProficiency,cha'),
('Armor Proficiency (Light, Medium, Shield)', 153, '', '', NULL, 'armorProficiency,light|armorProficiency,medium'),
('Cleric Weapon Proficiencies', 153, 'As a cleric, you have proficiency with all simple weapons.', '', NULL, 'weaponProficiency,simple|weaponProficiency,single,38'),
('Skill Proficiency', 153, '', '', NULL, 'skillSelect,6,9,11,12,18|skillSelect,6,9,11,12,18'),
('Channel Divinity', 154, 'At 2nd level, you gain the ability to channel divine energy directly from your deity, using that energy to fuel magical effects. You start with two such effects: Turn Undead and an effect determined by your domain. Some domains grant you additional effects as you advance in levels, as noted in the domain description.

When you use your Channel Divinity, you choose which effect to create. You must then finish a short or long rest to use your Channel Divinity again.

Some Channel Divinity effects require saving throws. When you use such an effect from this class, the DC equals your cleric spell save DC.

Beginning at 6th level, you can use your Channel Divinity twice between rests, and beginning at 18th level, you can use it three times between rests. When you finish a short or long rest, you regain your expended uses.', '', NULL, ''),
('Channel Divinity: Turn Undead', 114, 'As an action, you present your holy symbol and speak a prayer censuring the undead. Each undead that can see or hear you within 30 feet of you must make a Wisdom saving throw. If the creature fails its saving throw, it is turned for 1 minute or until it takes any damage.

A turned creature must spend its turns trying to move as far away from you as it can, and it can''t willingly move to a space within 30 feet of you. It also can''t take reactions. For its action, it can use only the Dash action or try to escape from an effect that prevents it from moving. If there''s nowhere to move, the creature can use the Dodge action.', '', NULL, ''),
('Feat', 156, '', '', NULL, 'feat'),
('Feat', 160, '', '', NULL, 'feat'),
('Feat', 164, '', '', NULL, 'feat'),
('Feat', 168, '', '', NULL, 'feat'),
('Feat', 171, '', '', NULL, 'feat'),
('Destroy Undead', 157, 'Starting at 5th level, when an undead fails its saving throw against your Turn Undead feature, the creature is instantly destroyed if its challenge rating is at or below a certain threshold, as shown in the Cleric table above.', '', NULL, ''),
('Divine Intervention', 162, 'Beginning at 10th level, you can call on your deity to intervene on your behalf when your need is great.

Imploring your deity''s aid requires you to use your action. Describe the assistance you seek, and roll percentile dice. If you roll a number equal to or lower than your cleric level, your deity intervenes. The DM chooses the nature of the intervention; the effect of any cleric spell or cleric domain spell would be appropriate. If your deity intervenes, you can''t use this feature again for 7 days. Otherwise, you can use it again after you finish a long rest.

At 20th level, your call for intervention succeeds automatically, no roll required.', '', NULL, ''),
('Domain Spells', 153, 'At 1st level, you gain Burning Hands and Faerie Fire spells.', '', NULL, 'spell,41|spell,126'),
('Domain Spells', 155, 'At 3rd level, you gain Flaming Sphere and Scorching Ray spells.', '', NULL, 'spell,143|spell,286'),
('Domain Spells', 157, 'At 5th level, you gain Daylight and Fireball spells.', '', NULL, 'spell,89|spell,137'),
('Domain Spells', 159, 'At 7th level, you gain Guardian of Faith and Wall of Fire spells.', '', NULL, 'spell,165|spell,345'),
('Domain Spells', 161, 'At 9th level, you gain Flame Strike and Scrying spells.', '', NULL, 'spell,142|spell,287'),
('Bonus Cantrip: Light', 153, 'When you choose this domain at 1st level, you gain the Light cantrip if you don''t already know it. This cantrip doesn’t count against the number of cleric cantrips you know.', '', NULL, 'spell,203'),
('Warding Flare', 153, 'Also at 1st level, you can interpose divine light between yourself and an attacking enemy. When you are attacked by a creature within 30 feet of you that you can see, you can use your reaction to impose disadvantage on the attack roll, causing light to flare before the attacker before it hits or misses. An attacker that can''t be blinded is immune to this feature.

You can use this feature a number of times equal to your Wisdom modifier (a minimum of once). You regain all expended uses when you finish a long rest.', '', NULL, ''),
('Channel Divinity: Radiance of the Dawn', 154, 'Starting at 2nd level, you can use your Channel Divinity to harness sunlight, banishing darkness and dealing radiant damage to your foes.

As an action, you present your holy symbol, and any magical darkness within 30 feet of you is dispelled. Additionally, each hostile creature within 30 feet of you must make a Constitution saving throw. A creature takes radiant damage equal to 2d10 + your cleric level on a failed saving throw, and half as much damage on a successful one. A creature that has total cover from you is not affected.', '', NULL, ''),
('Improved Flare', 158, 'Starting at 6th level, you can also use your Warding Flare feature when a creature that you can see within 30 feet of you attacks a creature other than you.', '', NULL, ''),
('Potent Spellcasting', 160, 'Starting at 8th level, you add your Wisdom modifier to the damage you deal with any cleric cantrip.', '', NULL, ''),
('Corona of Light', 169, 'Starting at 17th level, you can use your action to activate an aura of sunlight that lasts for 1 minute or until you dismiss it using another action. You emit bright light in a 60-foot radius and dim light 30 feet beyond that. Your enemies in the bright light have disadvantage on saving throws against any spell that deals fire or radiant damage.', '', NULL, ''),
('Saving Throw Proficiency (Wisdom, Charisma)', 173, '', '', NULL, 'savingThrowProficiency,wis|savingThrowProficiency,cha'),
('Armor Proficiency (Light, Medium, Heavy, Shield)', 173, '', '', NULL, 'armorProficiency,all'),
('Cleric Weapon Proficiencies', 173, 'As a cleric, you have proficiency with all simple weapons.', '', NULL, 'weaponProficiency,simple|weaponProficiency,single,38'),
('Skill Proficiency', 173, '', '', NULL, 'skillSelect,6,9,11,12,18|skillSelect,6,9,11,12,18'),
('Channel Divinity', 174, 'At 2nd level, you gain the ability to channel divine energy directly from your deity, using that energy to fuel magical effects. You start with two such effects: Turn Undead and an effect determined by your domain. Some domains grant you additional effects as you advance in levels, as noted in the domain description.

When you use your Channel Divinity, you choose which effect to create. You must then finish a short or long rest to use your Channel Divinity again.

Some Channel Divinity effects require saving throws. When you use such an effect from this class, the DC equals your cleric spell save DC.

Beginning at 6th level, you can use your Channel Divinity twice between rests, and beginning at 18th level, you can use it three times between rests. When you finish a short or long rest, you regain your expended uses.', '', NULL, ''),
('Channel Divinity: Turn Undead', 114, 'As an action, you present your holy symbol and speak a prayer censuring the undead. Each undead that can see or hear you within 30 feet of you must make a Wisdom saving throw. If the creature fails its saving throw, it is turned for 1 minute or until it takes any damage.

A turned creature must spend its turns trying to move as far away from you as it can, and it can''t willingly move to a space within 30 feet of you. It also can''t take reactions. For its action, it can use only the Dash action or try to escape from an effect that prevents it from moving. If there''s nowhere to move, the creature can use the Dodge action.', '', NULL, ''),
('Feat', 176, '', '', NULL, 'feat'),
('Feat', 180, '', '', NULL, 'feat'),
('Feat', 184, '', '', NULL, 'feat'),
('Feat', 188, '', '', NULL, 'feat'),
('Feat', 191, '', '', NULL, 'feat'),
('Destroy Undead', 177, 'Starting at 5th level, when an undead fails its saving throw against your Turn Undead feature, the creature is instantly destroyed if its challenge rating is at or below a certain threshold, as shown in the Cleric table above.', '', NULL, ''),
('Divine Intervention', 182, 'Beginning at 10th level, you can call on your deity to intervene on your behalf when your need is great.

Imploring your deity''s aid requires you to use your action. Describe the assistance you seek, and roll percentile dice. If you roll a number equal to or lower than your cleric level, your deity intervenes. The DM chooses the nature of the intervention; the effect of any cleric spell or cleric domain spell would be appropriate. If your deity intervenes, you can''t use this feature again for 7 days. Otherwise, you can use it again after you finish a long rest.

At 20th level, your call for intervention succeeds automatically, no roll required.', '', NULL, ''),
('Domain Spells', 173, 'At 1st level, you gain Animal Friendship and Speak with Animals spells.', '', NULL, 'spell,5|spell,306'),
('Domain Spells', 175, 'At 3rd level, you gain Barkskin and Spike Growth spells.', '', NULL, 'spell,27|spell,310'),
('Domain Spells', 177, 'At 5th level, you gain Plant Growth and Wind Wall spells.', '', NULL, 'spell,254|spell,356'),
('Domain Spells', 179, 'At 7th level, you gain Dominate Beast and Grasping Vine spells.', '', NULL, 'spell,107|spell,161'),
('Domain Spells', 181, 'At 9th level, you gain Insect Plague and Tree Stride spells.', '', NULL, 'spell,194|spell,336'),
('Acolyte of Nature', 173, 'At 1st level, you learn one cantrip of your choice from the druid spell list. This cantrip counts as a cleric cantrip for you, but it doesn’t count against the number of cleric cantrips you know. You also gain proficiency in one of the following skills of your choice: Animal Handling, Nature, or Survival.', '', NULL, 'spellSelect,druid,0|skillSelect,8,10,14'),
('Channel Divinity: Charm Animals and Plants', 174, 'Starting at 2nd level, you can use your Channel Divinity to charm animals and plants.

As an action, you present your holy symbol and invoke the name of your deity. Each beast or plant creature that can see you within 30 feet of you must make a Wisdom saving throw. If the creature fails its saving throw, it is charmed by you for 1 minute or until it takes damage. While it is charmed by you, it is friendly to you and other creatures you designate.', '', NULL, ''),
('Dampen Elements', 178, 'Starting at 6th level, when you or a creature within 30 feet of you takes acid, cold, fire, lightning, or thunder damage, you can use your reaction to grant resistance to the creature against that instance of the damage.', '', NULL, ''),
('Divine Strike', 180, 'At 8th level, you gain the ability to infuse your weapon strikes with divine energy. Once on each of your turns when you hit a creature with a weapon attack, you can cause the attack to deal an extra 1d8 cold, fire, or lightning damage (your choice) to the target. When you reach 14th level, the extra damage increases to 2d8.', '', NULL, ''),
('Master of Nature', 189, 'At 17th level, you gain the ability to command animals and plant creatures. While creatures are charmed by your Charm Animals and Plants feature, you can take a bonus action on your turn to verbally command what each of those creatures will do on its next turn.', '', NULL, ''),
('Saving Throw Proficiency (Wisdom, Charisma)', 193, '', '', NULL, 'savingThrowProficiency,wis|savingThrowProficiency,cha'),
('Armor Proficiency (Light, Medium, Heavy, Shield)', 193, '', '', NULL, 'armorProficiency,all'),
('Cleric Weapon Proficiencies', 193, 'As a Tempest domain cleric, you have proficiency with all simple and martial weapons.', '', NULL, 'weaponProficiency,all'),
('Skill Proficiency', 193, '', '', NULL, 'skillSelect,6,9,11,12,18|skillSelect,6,9,11,12,18'),
('Channel Divinity', 194, 'At 2nd level, you gain the ability to channel divine energy directly from your deity, using that energy to fuel magical effects. You start with two such effects: Turn Undead and an effect determined by your domain. Some domains grant you additional effects as you advance in levels, as noted in the domain description.

When you use your Channel Divinity, you choose which effect to create. You must then finish a short or long rest to use your Channel Divinity again.

Some Channel Divinity effects require saving throws. When you use such an effect from this class, the DC equals your cleric spell save DC.

Beginning at 6th level, you can use your Channel Divinity twice between rests, and beginning at 18th level, you can use it three times between rests. When you finish a short or long rest, you regain your expended uses.', '', NULL, ''),
('Channel Divinity: Turn Undead', 114, 'As an action, you present your holy symbol and speak a prayer censuring the undead. Each undead that can see or hear you within 30 feet of you must make a Wisdom saving throw. If the creature fails its saving throw, it is turned for 1 minute or until it takes any damage.

A turned creature must spend its turns trying to move as far away from you as it can, and it can''t willingly move to a space within 30 feet of you. It also can''t take reactions. For its action, it can use only the Dash action or try to escape from an effect that prevents it from moving. If there''s nowhere to move, the creature can use the Dodge action.', '', NULL, ''),
('Feat', 196, '', '', NULL, 'feat'),
('Feat', 200, '', '', NULL, 'feat'),
('Feat', 204, '', '', NULL, 'feat'),
('Feat', 208, '', '', NULL, 'feat'),
('Feat', 211, '', '', NULL, 'feat'),
('Destroy Undead', 197, 'Starting at 5th level, when an undead fails its saving throw against your Turn Undead feature, the creature is instantly destroyed if its challenge rating is at or below a certain threshold, as shown in the Cleric table above.', '', NULL, ''),
('Divine Intervention', 202, 'Beginning at 10th level, you can call on your deity to intervene on your behalf when your need is great.

Imploring your deity''s aid requires you to use your action. Describe the assistance you seek, and roll percentile dice. If you roll a number equal to or lower than your cleric level, your deity intervenes. The DM chooses the nature of the intervention; the effect of any cleric spell or cleric domain spell would be appropriate. If your deity intervenes, you can''t use this feature again for 7 days. Otherwise, you can use it again after you finish a long rest.

At 20th level, your call for intervention succeeds automatically, no roll required.', '', NULL, ''),
('Domain Spells', 193, 'At 1st level, you gain Fog Cloud and Thunderwave spells.', '', NULL, 'spell,146|spell,332'),
('Domain Spells', 195, 'At 3rd level, you gain Gust of Wind and Shatter spells.', '', NULL, 'spell,169|spell,294'),
('Domain Spells', 197, 'At 5th level, you gain Call Lightning and Sleet Storm spells.', '', NULL, 'spell,42|spell,303'),
('Domain Spells', 199, 'At 7th level, you gain Control Water and Ice Storm spells.', '', NULL, 'spell,75|spell,188'),
('Domain Spells', 201, 'At 9th level, you gain Destructive Wave and Insect Plague spells.', '', NULL, 'spell,93|spell,194'),
('Wrath of the Storm', 193, 'Also at 1st level, you can thunderously rebuke attackers. When a creature within 5 feet of you that you can see hits you with an attack, you can use your reaction to cause the creature to make a Dexterity saving throw. The creature takes 2d8 lightning or thunder damage (your choice) on a failed saving throw, and half as much damage on a successful one.

You can use this feature a number of times equal to your Wisdom modifier (a minimum of once). You regain all expended uses when you finish a long rest.', '', NULL, ''),
('Channel Divinity: Destructive Wrath', 194, 'Starting at 2nd level, you can use your Channel Divinity to wield the power of the storm with unchecked ferocity.

When you roll lightning or thunder damage, you can use your Channel Divinity to deal maximum damage, instead of rolling.', '', NULL, ''),
('Thunderbolt Strike', 198, 'At 6th level, when you deal lightning damage to a Large or smaller creature, you can also push it up to 10 feet away from you.', '', NULL, ''),
('Divine Strike', 200, 'At 8th level, you gain the ability to infuse your weapon strikes with divine energy. Once on each of your turns when you hit a creature with a weapon attack, you can cause the attack to deal an extra 1d8 thunder damage to the target. When you reach 14th level, the extra damage increases to 2d8.', '', NULL, ''),
('Stormborn', 209, 'At 17th level, you have a flying speed equal to your current walking speed whenever you are not underground or indoors.', '', NULL, ''),
('Saving Throw Proficiency (Wisdom, Charisma)', 213, '', '', NULL, 'savingThrowProficiency,wis|savingThrowProficiency,cha'),
('Armor Proficiency (Light, Medium, Shield)', 213, '', '', NULL, 'armorProficiency,light|armorProficiency,medium'),
('Cleric Weapon Proficiencies', 213, 'As a cleric, you have proficiency with all simple weapons.', '', NULL, 'weaponProficiency,simple|weaponProficiency,single,38'),
('Skill Proficiency', 213, '', '', NULL, 'skillSelect,6,9,11,12,18|skillSelect,6,9,11,12,18'),
('Channel Divinity', 214, 'At 2nd level, you gain the ability to channel divine energy directly from your deity, using that energy to fuel magical effects. You start with two such effects: Turn Undead and an effect determined by your domain. Some domains grant you additional effects as you advance in levels, as noted in the domain description.

When you use your Channel Divinity, you choose which effect to create. You must then finish a short or long rest to use your Channel Divinity again.

Some Channel Divinity effects require saving throws. When you use such an effect from this class, the DC equals your cleric spell save DC.

Beginning at 6th level, you can use your Channel Divinity twice between rests, and beginning at 18th level, you can use it three times between rests. When you finish a short or long rest, you regain your expended uses.', '', NULL, ''),
('Channel Divinity: Turn Undead', 114, 'As an action, you present your holy symbol and speak a prayer censuring the undead. Each undead that can see or hear you within 30 feet of you must make a Wisdom saving throw. If the creature fails its saving throw, it is turned for 1 minute or until it takes any damage.

A turned creature must spend its turns trying to move as far away from you as it can, and it can''t willingly move to a space within 30 feet of you. It also can''t take reactions. For its action, it can use only the Dash action or try to escape from an effect that prevents it from moving. If there''s nowhere to move, the creature can use the Dodge action.', '', NULL, ''),
('Feat', 216, '', '', NULL, 'feat'),
('Feat', 220, '', '', NULL, 'feat'),
('Feat', 224, '', '', NULL, 'feat'),
('Feat', 228, '', '', NULL, 'feat'),
('Feat', 231, '', '', NULL, 'feat'),
('Destroy Undead', 217, 'Starting at 5th level, when an undead fails its saving throw against your Turn Undead feature, the creature is instantly destroyed if its challenge rating is at or below a certain threshold, as shown in the Cleric table above.', '', NULL, ''),
('Divine Intervention', 222, 'Beginning at 10th level, you can call on your deity to intervene on your behalf when your need is great.

Imploring your deity''s aid requires you to use your action. Describe the assistance you seek, and roll percentile dice. If you roll a number equal to or lower than your cleric level, your deity intervenes. The DM chooses the nature of the intervention; the effect of any cleric spell or cleric domain spell would be appropriate. If your deity intervenes, you can''t use this feature again for 7 days. Otherwise, you can use it again after you finish a long rest.

At 20th level, your call for intervention succeeds automatically, no roll required.', '', NULL, ''),
('Domain Spells', 213, 'At 1st level, you gain Charm Person and Disguise Self spells.', '', NULL, 'spell,45|spell,99'),
('Domain Spells', 215, 'At 3rd level, you gain Mirror Image and Pass Without Trace spells.', '', NULL, 'spell,231|spell,246'),
('Domain Spells', 217, 'At 5th level, you gain Blink and Dispel Magic spells.', '', NULL, 'spell,38|spell,102'),
('Domain Spells', 219, 'At 7th level, you gain Dimension Door and Polymorph spells.', '', NULL, 'spell,98|spell,256'),
('Domain Spells', 221, 'At 9th level, you gain Dominate Person and Modify Memory spells.', '', NULL, 'spell,109|spell,234'),
('Blessing of the Trickster', 213, 'Starting when you choose this domain at 1st level, you can use your action to touch a willing creature other than yourself to give it advantage on Dexterity (Stealth) checks. This blessing lasts for 1 hour or until you use this feature again.', '', NULL, ''),
('Channel Divnity: Invoke Duplicity', 214, 'Starting at 2nd level, you can use your Channel Divinity to create an illusory duplicate of yourself.

As an action, you create a perfect illusion of yourself that lasts for 1 minute, or until you lose your concentration (as if you were concentrating on a spell). The illusion appears in an unoccupied space that you can see within 30 feet of you. As a bonus action on your turn, you can move the illusion up to 30 feet to a space you can see, but it must remain within 120 feet of you.

For the duration, you can cast spells as though you were in the illusion''s space, but you must use your own senses. Additionally, when both you and your illusion are within 5 feet of a creature that can see the illusion, you have advantage on attack rolls against that creature, given how distracting the illusion is to the target.', '', NULL, ''),
('Channel Divinity: Cloak of Shadows', 218, 'Starting at 6th level, you can use your Channel Divinity to vanish.

As an action, you become invisible until the end of your next turn. You become visible if you attack or cast a spell.', '', NULL, ''),
('Divine Strike', 220, 'At 8th level, you gain the ability to infuse your weapon strikes with poison – a gift from your deity. Once on each of your turns when you hit a creature with a weapon attack, you can cause the attack to deal an extra 1d8 poison damage to the target. When you reach 14th level, the extra damage increases to 2d8.', '', NULL, ''),
('Improved Duplicity', 229, 'At 17th level, you can create up to four duplicates of yourself, instead of one, when you use Invoke Duplicity. As a bonus action on your turn, you can move any number of them up to 30 feet, to a maximum range of 120 feet.', '', NULL, ''),
('Saving Throw Proficiency (Wisdom, Charisma)', 233, '', '', NULL, 'savingThrowProficiency,wis|savingThrowProficiency,cha'),
('Armor Proficiency (Light, Medium, Heavy, Shield)', 233, '', '', NULL, 'armorProficiency,all'),
('Cleric Weapon Proficiencies', 233, 'As a War domain cleric, you have proficiency with all simple and martial weapons.', '', NULL, 'weaponProficiency,all'),
('Skill Proficiency', 233, '', '', NULL, 'skillSelect,6,9,11,12,18|skillSelect,6,9,11,12,18'),
('Channel Divinity', 234, 'At 2nd level, you gain the ability to channel divine energy directly from your deity, using that energy to fuel magical effects. You start with two such effects: Turn Undead and an effect determined by your domain. Some domains grant you additional effects as you advance in levels, as noted in the domain description.

When you use your Channel Divinity, you choose which effect to create. You must then finish a short or long rest to use your Channel Divinity again.

Some Channel Divinity effects require saving throws. When you use such an effect from this class, the DC equals your cleric spell save DC.

Beginning at 6th level, you can use your Channel Divinity twice between rests, and beginning at 18th level, you can use it three times between rests. When you finish a short or long rest, you regain your expended uses.', '', NULL, ''),
('Channel Divinity: Turn Undead', 114, 'As an action, you present your holy symbol and speak a prayer censuring the undead. Each undead that can see or hear you within 30 feet of you must make a Wisdom saving throw. If the creature fails its saving throw, it is turned for 1 minute or until it takes any damage.

A turned creature must spend its turns trying to move as far away from you as it can, and it can''t willingly move to a space within 30 feet of you. It also can''t take reactions. For its action, it can use only the Dash action or try to escape from an effect that prevents it from moving. If there''s nowhere to move, the creature can use the Dodge action.', '', NULL, ''),
('Feat', 236, '', '', NULL, 'feat'),
('Feat', 240, '', '', NULL, 'feat'),
('Feat', 244, '', '', NULL, 'feat'),
('Feat', 248, '', '', NULL, 'feat'),
('Feat', 251, '', '', NULL, 'feat'),
('Destroy Undead', 237, 'Starting at 5th level, when an undead fails its saving throw against your Turn Undead feature, the creature is instantly destroyed if its challenge rating is at or below a certain threshold, as shown in the Cleric table above.', '', NULL, ''),
('Divine Intervention', 242, 'Beginning at 10th level, you can call on your deity to intervene on your behalf when your need is great.

Imploring your deity''s aid requires you to use your action. Describe the assistance you seek, and roll percentile dice. If you roll a number equal to or lower than your cleric level, your deity intervenes. The DM chooses the nature of the intervention; the effect of any cleric spell or cleric domain spell would be appropriate. If your deity intervenes, you can''t use this feature again for 7 days. Otherwise, you can use it again after you finish a long rest.

At 20th level, your call for intervention succeeds automatically, no roll required.', '', NULL, ''),
('Domain Spells', 233, 'At 1st level, you gain Divine Favor and Shield of Faith spells.', '', NULL, 'spell,105|spell,296'),
('Domain Spells', 235, 'At 3rd level, you gain Magic Weapon and Spiritual Weapon spells.', '', NULL, 'spell,216|spell,312'),
('Domain Spells', 237, 'At 5th level, you gain Crusader''s Mantle and Spirit Guardians spells.', '', NULL, 'spell,84|spell,311'),
('Domain Spells', 239, 'At 7th level, you gain Freedom of Movement and Stoneskin spells.', '', NULL, 'spell,150|spell,316'),
('Domain Spells', 241, 'At 9th level, you gain Flame Strike and Hold Monster spells.', '', NULL, 'spell,142|spell,182'),
('War Priest', 233, 'From 1st level, your god delivers bolts of inspiration to you while you are engaged in battle. When you use the Attack action, you can make one weapon attack as a bonus action.

You can use this feature a number of times equal to your Wisdom modifier (a minimum of once). You regain all expended uses when you finish a long rest.', '', NULL, ''),
('Channel Divinity: Guided Strike', 234, 'Starting at 2nd level, you can use your Channel Divinity to strike with supernatural accuracy. When you make an attack roll, you can use your Channel Divinity to gain a +10 bonus to the roll. You make this choice after you see the roll, but before the DM says whether the attack hits or misses.', '', NULL, ''),
('Channel Divinity: War God''s Blessing', 238, 'At 6th level, when a creature within 30 feet of you makes an attack roll, you can use your reaction to grant that creature a +10 bonus to the roll, using your Channel Divinity. You make this choice after you see the roll, but before the DM says whether the attack hits or misses.', '', NULL, ''),
('Divine Strike', 240, 'At 8th level, you gain the ability to infuse your weapon strikes with divine energy. Once on each of your turns when you hit a creature with a weapon attack, you can cause the attack to deal an extra 1d8 damage of the same type dealt by the weapon to the target. When you reach 14th level, the extra damage increases to 2d8.', '', NULL, ''),
('Avatar of Battle', 249, 'At 17th level, you gain resistance to bludgeoning, piercing, and slashing damage from nonmagical attacks.', '', NULL, ''),
('Saving Throw Proficiency (Intelligence, Wisdom)', 253, '', '', NULL, 'savingThrowProficiency,int|savingThrowProficiency,wis'),
('Armor Proficiency (Light, Medium, Shield)', 253, '', '', NULL, 'armorProficiency,light|armorProficiency,medium'),
('Druid Weapon Proficiencies', 253, 'As a druid, you have proficiency with clubs, daggers, darts, javelins, maces, quarterstaves, scimitars, sickles, slings and spears.', '', NULL, 'weaponProficiency,multiple,1,2,5,7,8,9,10,13,15,28,38'),
('Skill Proficiency', 253, '', '', NULL, 'skillSelect,5,8,9,10,11,12,13,14|skillSelect,5,8,9,10,11,12,13,14'),
('Druidic', 253, 'You know Druidic, the secret language of druids. You can speak the language and use it to leave hidden messages. You and others who know this language automatically spot such a message. Others spot the message''s presence with a successful DC 15 Wisdom (Perception) check but can''t decipher it without magic.', '', NULL, ''),
('Wild Shape', 254, 'Starting at 2nd level, you can use your action to magically assume the shape of a beast that you have seen before. You can use this feature twice. You regain expended uses when you finish a short or long rest.

Your druid level determines the beasts you can transform into. At 2nd level, you can transform into any beast that has a challenge rating of 1/4 or lower that doesn''t have a flying or swimming speed. At 4th level, you can transform into any beast that has a challenge rating of 1/2 or lower that doesn''t have a flying speed. At 8th level, you can transform into any beast that has a challenge rating of 1 or lower.

You can stay in a beast shape for a number of hours equal to half your druid level (rounded down). You then revert to your normal form unless you expend another use of this feature. You can revert to your normal form earlier by using a bonus action on your turn. You automatically revert if you fall unconscious, drop to 0 hit points, or die.

While you are transformed, the following rules apply:

- Your game statistics are replaced by the statistics of the beast, but you retain your alignment, personality, and Intelligence, Wisdom, and Charisma scores. You also retain all of your skill and saving throw proficiencies, in addition to gaining those of the creature. If the creature has the same proficiency as you and the bonus in its stat block is higher than yours, use the creature''s bonus instead of yours. If the creature has any legendary or lair actions, you can''t use them.
- When you transform, you assume the beast''s hit points and Hit Dice. When you revert to your normal form, you return to the number of hit points you had before you transformed. However, if you revert as a result of dropping to 0 hit points, any excess damage carries over to your normal form, For example, if you take 10 damage in animal form and have only 1 hit point left, you revert and take 9 damage. As long as the excess damage doesn''t reduce your normal form to 0 hit points, you aren''t knocked unconscious.
- You can''t cast spells, and your ability to speak or take any action that requires hands is limited to the capabilities of your beast form. Transforming doesn''t break your concentration on a spell you''ve already cast, however, or prevent you from taking actions that are part of a spell, such as Call Lightning, that you''ve already cast.
- You retain the benefit of any features from your class, race, or other source and can use them if the new form is physically capable of doing so. However, you can''t use any of your special senses, such as darkvision, unless your new form also has that sense.
- You choose whether your equipment falls to the ground in your space, merges into your new form, or is worn by it. Worn equipment functions as normal, but the DM decides whether it is practical for the new form to wear a piece of equipment, based on the creature''s shape and size. Your equipment doesn''t change size or shape to match the new form, and any equipment that the new form can''t wear must either fall to the ground or merge with it. Equipment that merges with the form has no effect until you leave the form.', '', NULL, ''),
('Feat', 256, '', '', NULL, 'feat'),
('Feat', 260, '', '', NULL, 'feat'),
('Feat', 264, '', '', NULL, 'feat'),
('Feat', 268, '', '', NULL, 'feat'),
('Feat', 271, '', '', NULL, 'feat'),
('Timeless Body', 270, 'Starting at 18th level, the primal magic that you wield causes you to age more slowly. For every 10 years that pass, your body ages only 1 year.', '', NULL, ''),
('Beast Spells', 270, 'Beginning at 18th level, you can cast many of your druid spells in any shape you assume using Wild Shape. You can perform the somatic and verbal components of a druid spell while in a beast shape, but you aren''t able to provide material components.', '', NULL, ''),
('Archdruid', 272, 'At 20th level, you can use your Wild Shape an unlimited number of times.

Additionally, you can ignore the verbal and somatic components of your druid spells, as well as any material components that lack a cost and aren''t consumed by a spell. You gain this benefit in both your normal shape and your beast shape from Wild Shape.', '', NULL, ''),
('Bonus Cantrip', 254, 'When you choose this circle at 2nd level, you learn one additional druid cantrip of your choice. This cantrip doesn’t count against the number of druid cantrips you know.', '', NULL, 'spellSelect,dru,0'),
('Natural Recovery', 254, 'Starting at 2nd level, you can regain some of your magical energy by sitting in meditation and communing with nature. During a short rest, you choose expended spell slots to recover. The spell slots can have a combined level that is equal to or less than half your druid level (rounded up), and none of the slots can be 6th level or higher. You can''t use this feature again until you finish a long rest.

For example, when you are a 4th-level druid, you can recover up to two levels worth of spell slots. You can recover either a 2nd-level slot or two 1st-level slots.', '', NULL, ''),
('Circle of the Land', 255, 'Your mystical connection to the land infuses you with the ability to cast certain spells. At 3rd, 5th, 7th, and 9th level you gain access to circle spells connected to the land where you became a druid. Choose that land – arctic, coast, desert, forest, grassland, mountain, swamp, or Underdark – and consult the associated list of spells.

Once you gain access to a circle spell, you always have it prepared, and it doesn''t count against the number of spells you can prepare each day. If you gain access to a spell that doesn''t appear on the druid spell list, the spell is nonetheless a druid spell for you.', '', 1, ''),
('Arctic', NULL, '', 'Circle of the Land', 0, 'buffer,257,331|buffer,259,332|buffer,261,333'),
('Coast', NULL, '', 'Circle of the Land', 0, 'buffer,257,335|buffer,259,336|buffer,261,337'),
('Desert', NULL, '', 'Circle of the Land', 0, 'buffer,257,339|buffer,259,340|buffer,261,341'),
('Forest', NULL, '', 'Circle of the Land', 0, 'buffer,257,343|buffer,259,344|buffer,261,345'),
('Grassland', NULL, '', 'Circle of the Land', 0, 'buffer,257,347|buffer,259,348|buffer,261,349'),
('Mountain', NULL, '', 'Circle of the Land', 0, 'buffer,257,351|buffer,259,352|buffer,261,353'),
('Swamp', NULL, '', 'Circle of the Land', 0, 'buffer,257,355|buffer,259,356|buffer,261,357'),
('Underdark', NULL, '', 'Circle of the Land', 0, 'buffer,257,359|buffer,259,360|buffer,261,361'),
('Artcic Circle Spells', NULL, 'At 3rd level, you gain Hold Person and Spike Growth spells.', 'Arctic', NULL, 'spell,183|spell,310'),
('Arctic Circle Spells', NULL, 'At 5th level, you gain Sleet Storm and Slow spells.', '', NULL, 'spell,303|spell,304'),
('Arctic Circle Spells', NULL, 'At 7th level, you gain Freedom of Movement and Ice Storm spells.', '', NULL, 'spell,150|spell,188'),
('Arctic Circle Spells', NULL, 'At 9th level, you gain Commune with Nature and Cone of Cold spells.', '', NULL, 'spell,57|spell,61'),
('Coast Circle Spells', NULL, 'At 3rd level, you gain Mirror Image and Misty Step spells.', 'Coast', NULL, 'spell,231|spell,233'),
('Coast Circle Spells', NULL, 'At 5th level, you gain Water Breathing and Water Walk spells.', '', NULL, 'spell,351|spell,352'),
('Coast Circle Spells', NULL, 'At 7th level, you gain Control Water and Freedom of Movement spells.', '', NULL, 'spell,75|spell,150'),
('Coast Circle Spells', NULL, 'At 9th level, you gain Conjure Elemental and Scrying spells.', '', NULL, 'spell,66|spell,287'),
('Desert Circle Spells', NULL, 'At 3rd level, you gain Blur and Silence spells.', 'Desert', NULL, 'spell,39|spell,299'),
('Desert Circle Spells', NULL, 'At 5th level, you gain Create Food and Water and Protection from Energy spells.', '', NULL, 'spell,79|spell,267'),
('Desert Circle Spells', NULL, 'At 7th level, you gain Blight and Hallucinatory Terrain spells.', '', NULL, 'spell,35|spell,172'),
('Desert Circle Spells', NULL, 'At 9th level, you gain Insect Plague and Wall of Stone spells.', '', NULL, 'spell,194|spell,348'),
('Forest Circle Spells', NULL, 'At 3rd level, you gain Barkskin and Spider Climb spells.', 'Forest', NULL, 'spell,27|spell,309'),
('Forest Circle Spells', NULL, 'At 5th level, you gain Call Lightning and Plant Growth spells.', '', NULL, 'spell,42|spell,254'),
('Forest Circle Spells', NULL, 'At 7th level, you gain Divination and Freedom of Movement spells.', '', NULL, 'spell,104|spell,150'),
('Forest Circle Spells', NULL, 'At 9th level, you gain Commune with Nature and Tree Stride spells.', '', NULL, 'spell,57|spell,336'),
('Grassland Circle Spells', NULL, 'At 3rd level, you gain Invisibility and Pass Without Trace spells.', 'Grassland', NULL, 'spell,195|spell,246'),
('Grassland Circle Spells', NULL, 'At 5th level, you gain Daylight and Haste spells.', '', NULL, 'spell,89|spell,174'),
('Grassland Circle Spells', NULL, 'At 7th level, you gain Divination and Freedom of Movement spells.', '', NULL, 'spell,104|spell,150'),
('Grassland Circle Spells', NULL, 'At 9th level, you gain Dream and Insect Plague spells.', '', NULL, 'spell,111|spell,194'),
('Mountain Circle Spells', NULL, 'At 3rd level, you gain Spider Climb and Spike Growth spells.', 'Mountain', NULL, 'spell,309|spell,310'),
('Mountain Circle Spells', NULL, 'At 5th level, you gain Lightning Bolt and Meld into Stone spells.', '', NULL, 'spell,205|spell,223'),
('Mountain Circle Spells', NULL, 'At 7th level, you gain Stone Shape and Stoneskin spells.', '', NULL, 'spell,315|spell,316'),
('Mountain Circle Spells', NULL, 'At 9th level, you gain Passwall and Wall of Stone spells.', '', NULL, 'spell,247|spell,348'),
('Swamp Circle Spells', NULL, 'At 3rd level, you gain Darkness and Melf''s Acid Arrow spells.', 'Swamp', NULL, 'spell,87|spell,224'),
('Swamp Circle Spells', NULL, 'At 5th level, you gain Water Walk and Stinking Cloud spells.', '', NULL, 'spell,352|spell,314'),
('Swamp Circle Spells', NULL, 'At 7th level, you gain Freedom of Movement and Locate Creature spells.', '', NULL, 'spell,150|spell,207'),
('Swamp Circle Spells', NULL, 'At 9th level, you gain Insect Plague and Scrying spells.', '', NULL, 'spell,194|spell,287'),
('Underdark Circle Spells', NULL, 'At 3rd level, you gain Spider Climb and Web spells.', 'Underdark', NULL, 'spell,309|spell,353'),
('Underdark Circle Spells', NULL, 'At 5th level, you gain Gaseous Form and Stinking Cloud spells.', '', NULL, 'spell,152|spell,314'),
('Underdark Circle Spells', NULL, 'At 7th level, you gain Greater Invisibility and Stone Shape spells.', '', NULL, 'spell,163|spell,315'),
('Underdark Circle Spells', NULL, 'At 9th level, you gain Cloudkill and Insect Plague spells.', '', NULL, 'spell,53|spell,194'),
('Land''s Stride', 258, 'Starting at 6th level, moving through nonmagical difficult terrain costs you no extra movement. You can also pass through nonmagical plants without being slowed by them and without taking damage from them if they have thorns, spines, or a similar hazard.

In addition, you have advantage on saving throws against plants that are magically created or manipulated to impede movement, such as those created by the Entangle spell.', '', NULL, ''),
('Nature''s Ward', 262, 'When you reach 10th level, you can''t be charmed or frightened by elementals or fey, and you are immune to poison and disease.', '', NULL, ''),
('Nature''s Sanctuary', 266, 'When you reach 14th level, creatures of the natural world sense your connection to nature and become hesitant to attack you. When a beast or plant creature attacks you, that creature must make a Wisdom saving throw against your druid spell save DC. On a failed save, the creature must choose a different target, or the attack automatically misses. On a successful save, the creature is immune to this effect for 24 hours.

The creature is aware of this effect before it makes its attack against you.', '', NULL, ''),
('Wild Shape', 273, 'Starting at 2nd level, you can use your action to magically assume the shape of a beast that you have seen before. You can use this feature twice. You regain expended uses when you finish a short or long rest.

Your druid level determines the beasts you can transform into. At 2nd level, you can transform into any beast that has a challenge rating of 1/4 or lower that doesn''t have a flying or swimming speed. At 4th level, you can transform into any beast that has a challenge rating of 1/2 or lower that doesn''t have a flying speed. At 8th level, you can transform into any beast that has a challenge rating of 1 or lower.

You can stay in a beast shape for a number of hours equal to half your druid level (rounded down). You then revert to your normal form unless you expend another use of this feature. You can revert to your normal form earlier by using a bonus action on your turn. You automatically revert if you fall unconscious, drop to 0 hit points, or die.

While you are transformed, the following rules apply:

- Your game statistics are replaced by the statistics of the beast, but you retain your alignment, personality, and Intelligence, Wisdom, and Charisma scores. You also retain all of your skill and saving throw proficiencies, in addition to gaining those of the creature. If the creature has the same proficiency as you and the bonus in its stat block is higher than yours, use the creature''s bonus instead of yours. If the creature has any legendary or lair actions, you can''t use them.
- When you transform, you assume the beast''s hit points and Hit Dice. When you revert to your normal form, you return to the number of hit points you had before you transformed. However, if you revert as a result of dropping to 0 hit points, any excess damage carries over to your normal form, For example, if you take 10 damage in animal form and have only 1 hit point left, you revert and take 9 damage. As long as the excess damage doesn''t reduce your normal form to 0 hit points, you aren''t knocked unconscious.
- You can''t cast spells, and your ability to speak or take any action that requires hands is limited to the capabilities of your beast form. Transforming doesn''t break your concentration on a spell you''ve already cast, however, or prevent you from taking actions that are part of a spell, such as Call Lightning, that you''ve already cast.
- You retain the benefit of any features from your class, race, or other source and can use them if the new form is physically capable of doing so. However, you can''t use any of your special senses, such as darkvision, unless your new form also has that sense.
- You choose whether your equipment falls to the ground in your space, merges into your new form, or is worn by it. Worn equipment functions as normal, but the DM decides whether it is practical for the new form to wear a piece of equipment, based on the creature''s shape and size. Your equipment doesn''t change size or shape to match the new form, and any equipment that the new form can''t wear must either fall to the ground or merge with it. Equipment that merges with the form has no effect until you leave the form.', '', NULL, ''),
('Feat', 275, '', '', NULL, 'feat'),
('Feat', 279, '', '', NULL, 'feat'),
('Feat', 283, '', '', NULL, 'feat'),
('Feat', 287, '', '', NULL, 'feat'),
('Feat', 290, '', '', NULL, 'feat'),
('Timeless Body', 289, 'Starting at 18th level, the primal magic that you wield causes you to age more slowly. For every 10 years that pass, your body ages only 1 year.', '', NULL, ''),
('Beast Spells', 289, 'Beginning at 18th level, you can cast many of your druid spells in any shape you assume using Wild Shape. You can perform the somatic and verbal components of a druid spell while in a beast shape, but you aren''t able to provide material components.', '', NULL, ''),
('Archdruid', 291, 'At 20th level, you can use your Wild Shape an unlimited number of times.

Additionally, you can ignore the verbal and somatic components of your druid spells, as well as any material components that lack a cost and aren''t consumed by a spell. You gain this benefit in both your normal shape and your beast shape from Wild Shape.', '', NULL, ''),
('Combat Wild Shape', 273, 'When you choose this circle at 2nd level, you gain the ability to use Wild Shape on your turn as a bonus action, rather than as an action.

Additionally, while you are transformed by Wild Shape, you can use a bonus action to expend one spell slot to regain 1d8 hit points per level of the spell slot expended.', '', NULL, ''),
('Circle Forms', 273, 'The rites of your circle grant you the ability to transform into more dangerous animal forms. Starting at 2nd level, you can use your Wild Shape to transform into a beast with a challenge rating as high as 1. You ignore the Max. CR column of the Beast Shapes table, but must abide by the other limitations there.

Starting at 6th level, you can transform into a beast with a challenge rating as high as your druid level divided by 3, rounded down.', '', NULL, ''),
('Primal Strike', 277, 'Starting at 6th level, your attacks in beast form count as magical for the purpose of overcoming resistance and immunity to nonmagical attacks and damage.', '', NULL, ''),
('Elemental Wild Shape', 281, 'At 10th level, you can expend two uses of Wild Shape at the same time to transform into an air elemental, an earth elemental, a fire elemental, or a water elemental.', '', NULL, ''),
('Thousand Forms', 285, 'By 14th level, you have learned to use magic to alter your physical form in more subtle ways. You can cast the Alter Self spell at will.', '', NULL, ''),
('Wild Shape', 292, 'Starting at 2nd level, you can use your action to magically assume the shape of a beast that you have seen before. You can use this feature twice. You regain expended uses when you finish a short or long rest.

Your druid level determines the beasts you can transform into. At 2nd level, you can transform into any beast that has a challenge rating of 1/4 or lower that doesn''t have a flying or swimming speed. At 4th level, you can transform into any beast that has a challenge rating of 1/2 or lower that doesn''t have a flying speed. At 8th level, you can transform into any beast that has a challenge rating of 1 or lower.

You can stay in a beast shape for a number of hours equal to half your druid level (rounded down). You then revert to your normal form unless you expend another use of this feature. You can revert to your normal form earlier by using a bonus action on your turn. You automatically revert if you fall unconscious, drop to 0 hit points, or die.

While you are transformed, the following rules apply:

- Your game statistics are replaced by the statistics of the beast, but you retain your alignment, personality, and Intelligence, Wisdom, and Charisma scores. You also retain all of your skill and saving throw proficiencies, in addition to gaining those of the creature. If the creature has the same proficiency as you and the bonus in its stat block is higher than yours, use the creature''s bonus instead of yours. If the creature has any legendary or lair actions, you can''t use them.
- When you transform, you assume the beast''s hit points and Hit Dice. When you revert to your normal form, you return to the number of hit points you had before you transformed. However, if you revert as a result of dropping to 0 hit points, any excess damage carries over to your normal form, For example, if you take 10 damage in animal form and have only 1 hit point left, you revert and take 9 damage. As long as the excess damage doesn''t reduce your normal form to 0 hit points, you aren''t knocked unconscious.
- You can''t cast spells, and your ability to speak or take any action that requires hands is limited to the capabilities of your beast form. Transforming doesn''t break your concentration on a spell you''ve already cast, however, or prevent you from taking actions that are part of a spell, such as Call Lightning, that you''ve already cast.
- You retain the benefit of any features from your class, race, or other source and can use them if the new form is physically capable of doing so. However, you can''t use any of your special senses, such as darkvision, unless your new form also has that sense.
- You choose whether your equipment falls to the ground in your space, merges into your new form, or is worn by it. Worn equipment functions as normal, but the DM decides whether it is practical for the new form to wear a piece of equipment, based on the creature''s shape and size. Your equipment doesn''t change size or shape to match the new form, and any equipment that the new form can''t wear must either fall to the ground or merge with it. Equipment that merges with the form has no effect until you leave the form.', '', NULL, ''),
('Feat', 294, '', '', NULL, 'feat'),
('Feat', 298, '', '', NULL, 'feat'),
('Feat', 302, '', '', NULL, 'feat'),
('Feat', 306, '', '', NULL, 'feat'),
('Feat', 309, '', '', NULL, 'feat'),
('Timeless Body', 308, 'Starting at 18th level, the primal magic that you wield causes you to age more slowly. For every 10 years that pass, your body ages only 1 year.', '', NULL, ''),
('Beast Spells', 308, 'Beginning at 18th level, you can cast many of your druid spells in any shape you assume using Wild Shape. You can perform the somatic and verbal components of a druid spell while in a beast shape, but you aren''t able to provide material components.', '', NULL, ''),
('Archdruid', 310, 'At 20th level, you can use your Wild Shape an unlimited number of times.

Additionally, you can ignore the verbal and somatic components of your druid spells, as well as any material components that lack a cost and aren''t consumed by a spell. You gain this benefit in both your normal shape and your beast shape from Wild Shape.', '', NULL, ''),
('Circle of Spores Spells', 292, 'Your symbiotic link to fungi and your ability to tap into the cycle of life and death grants you access to certain spells. At 2nd level, you learn the Chill Touch cantrip.

At 3rd, 5th, 7th, and 9th level you gain access to the spells listed for that level in the Circle of Spores Spells table. Once you gain access to one of these spells, you always have it prepared, and it doesn''t count against the number of spells you can prepare each day. If you gain access to a spell that doesn''t appear on the druid spell list, the spell is nonetheless a druid spell for you.', '', NULL, 'spell,46'),
('Circle Spells 3rd level', 293, 'At 3rd level, you gain Blindness/Deafness and Gentle Repose spells.', '', NULL, 'spell,37|spell,155'),
('Circle Spells 5th level', 295, 'At 5th level, you gain Animate Dead and Gaseous Form spells.', '', NULL, 'spell,8|spell,152'),
('Circle Spells 7th level', 297, 'At 7th level, you gain Blight and Confusion spells.', '', NULL, 'spell,35|spell,62'),
('Circle Spells 9th level', 299, 'At 9th level, you gain Cloudkill and Contagion spells.', '', NULL, 'spell,53|spell,72'),
('Halo of Spores', 292, 'Starting at 2nd level, you are surrounded by invisible, necrotic spores that are harmless until you unleash them on a creature nearby. When a creature you can see moves into a space within 10 feet of you or starts its turn there, you can use your reaction to deal 1d4 necrotic damage to that creature unless it succeeds on a Constitution saving throw against your spell save DC. The necrotic damage increases to 1d6 at 6th level, 1d8 at 10th level, and 1d10 at 14th level.', '', NULL, ''),
('Symbiotic Entity', 292, 'Also at 2nd level, you gain the ability to channel magic into your spores. As an action, you can expend a use of your Wild Shape feature to awaken those spores, rather than transforming into a beast form, and you gain 4 temporary hit points for each level you have in this class. While this feature is active, you gain the following benefits:

When you deal your Halo of Spores damage, roll the damage die a second time and add it to the total.
Your melee weapon attacks deal an extra 1d6 necrotic damage to any target they hit.
These benefits last for 10 minutes, until you lose all these temporary hit points. or until you use your Wild Shape again.', '', NULL, ''),
('Fungal Infestation', 296, 'At 6th level, your spores gain the ability to infest a corpse and animate it. If a beast or a humanoid that is Small or Medium dies within 10 feet of you, you can use your reaction to animate it, causing it to stand up immediately with 1 hit point. The creature uses the Zombie stat block in the Monster Manual. It remains animate for 1 hour, after which time it collapses and dies.

In combat, the zombie''s turn comes immediately after yours. It obeys your mental commands, and the only action it can take is the Attack action, making one melee attack.

You can use this feature a number of times equal to your Wisdom modifier (minimum of once), and you regain all expended uses of it when you finish a long rest.', '', NULL, ''),
('Spreading Spores', 300, 'At 10th level, you gain the ability to seed an area with deadly spores. As a bonus action while your Symbiotic Entity feature is active, you can hurl spores up to 30 feet away, where they swirl in a 10-foot cube for 1 minute. The spores disappear early if you use this feature again, if you dismiss them as a bonus action, or if your Symbiotic Entity feature is no longer active.

Whenever a creature moves into the cube or starts its turn there, that creature takes your Halo of Spores damage, unless the creature succeeds on a Constitution saving throw against your spell save DC. A creature can take this damage no more than once per turn.

While the cube of spores persists, you can''t use your Halo of Spores reaction.', '', NULL, ''),
('Fungal Body', 304, 'At 14th level, the fungal spores in your body alter you: you can''t be blinded, deafened, frightened, or poisoned, and any critical hit against you counts as a normal hit instead, unless you''re incapacitated.', '', NULL, ''),
('Saving Throw Proficiency (Strength, Constitution)', 311, '', '', NULL, 'savingThrowProficiency,str|savingThrowProficiency,con'),
('Armor Proficiency (Light, Medium, Heavy, Shield)', 311, '', '', NULL, 'armorProficiency,all'),
('Fighter Weapon Proficiencies', 311, 'As a fighter, you have proficiency with all simple and martial weapons.', '', NULL, 'weaponProficiency,all'),
('Skill Proficiency', 311, '', '', NULL, 'skillSelect,1,2,6,10,11,13,14,16|skillSelect,1,2,6,10,11,13,14,16'),
('Fighting Style - Fighter', 311, 'You adopt a particular style of fighting as your specialty. Choose one of the following options. You can''t take a Fighting Style option more than once, even if you later get to choose again.', '', 1, ''),
('Archery', NULL, 'You gain a +2 bonus to attack rolls you make with ranged weapons.', 'Fighting Style - Fighter', NULL, 'archeryStyle'),
('Defense', NULL, 'While you are wearing armor, you gain a +1 bonus to AC.', 'Fighting Style - Fighter', NULL, 'defenseStyle'),
('Dueling', NULL, 'When you are wielding a melee weapon in one hand and no other weapons, you gain a +2 bonus to damage rolls with that weapon.', 'Fighting Style - Fighter', NULL, 'duelingStyle'),
('Great Weapon Fighting', NULL, 'When you roll a 1 or 2 on a damage die for an attack you make with a melee weapon that you are wielding with two hands, you can reroll the die and must use the new roll, even if the new roll is a 1 or a 2. The weapon must have the two-handed or versatile property for you to gain this benefit.', 'Fighting Style - Fighter', NULL, ''),
('Protection', NULL, 'When a creature you can see attacks a target other than you that is within 5 feet of you, you can use your reaction to impose disadvantage on the attack roll. You must be wielding a shield.', 'Fighting Style - Fighter', NULL, ''),
('Two-Weapon Fighting', NULL, 'When you engage in two-weapon fighting, you can add your ability modifier to the damage of the second attack.', 'Fighting Style - Fighter', NULL, 'twoWeaponFightingStyle'),
('Second Wind', 311, 'You have a limited well of stamina that you can draw on to protect yourself from harm. On your turn, you can use a bonus action to regain hit points equal to 1d10 + your fighter level.

Once you use this feature, you must finish a short or long rest before you can use it again.', '', NULL, ''),
('Action Surge', 312, 'Starting at 2nd level, you can push yourself beyond your normal limits for a moment. On your turn, you can take one additional action.

Once you use this feature, you must finish a short or long rest before you can use it again. Starting at 17th level, you can use it twice before a rest, but only once on the same turn.', '', NULL, ''),
('Feat', 314, '', '', NULL, 'feat'),
('Feat', 316, '', '', NULL, 'feat'),
('Feat', 318, '', '', NULL, 'feat'),
('Feat', 322, '', '', NULL, 'feat'),
('Feat', 324, '', '', NULL, 'feat'),
('Feat', 326, '', '', NULL, 'feat'),
('Feat', 329, '', '', NULL, 'feat'),
('Extra Attack', 315, 'Beginning at 5th level, you can attack twice, instead of once, whenever you take the Attack action on your turn.

The number of attacks increases to three when you reach 11th level in this class and to four when you reach 20th level in this class.', '', NULL, 'extraAttack,1'),
('Extra Attack', 321, '', '', NULL, 'extraAttack,2'),
('Extra Attack', 330, '', '', NULL, 'extraAttack,3'),
('Indomitable', 319, 'Beginning at 9th level, you can reroll a saving throw that you fail. If you do so, you must use the new roll, and you can''t use this feature again until you finish a long rest.

You can use this feature twice between long rests starting at 13th level and three times between long rests starting at 17th level.', '', NULL, ''),
('Combat Superiority', 313, 'When you choose this archetype at 3rd level, you learn maneuvers that are fueled by special dice called superiority dice.

Maneuvers - You learn three maneuvers of your choice. Many maneuvers enhance an attack in some way. You can use only one maneuver per attack. You learn two additional maneuvers of your choice at 7th, 10th, and 15th level. Each time you learn new maneuvers, you can also replace one maneuver you know with a different one.

Superiority Dice - You have four superiority dice, which are d8s. A superiority die is expended when you use it. You regain all of your expended superiority dice when you finish a short or long rest. You gain another superiority die at 7th level and one more at 15th level.

Saving Throws - Some of your maneuvers require your target to make a saving throw to resist the maneuver''s effects. The saving throw DC is calculated as follows:

Maneuver save DC = 8 + your proficiency bonus + your Strength or Dexterity modifier (your choice)', '', 3, ''),
('Combat Superiority', 317, 'You learn two additional maneuvers of your choice.', '', 2, ''),
('Combat Superiority', 320, 'You learn two additional maneuvers of your choice.', '', 2, ''),
('Combat Superiority', 325, 'You learn two additional maneuvers of your choice.', '', 2, ''),
('Commander''s Strike', NULL, 'When you take the Attack action on your turn, you can forgo one of your attacks and use a bonus action to direct one of your companions to strike. When you do so, choose a friendly creature who can see or hear you and expend one superiority die. That creature can immediately use its reaction to make one weapon attack, adding the superiority die to the attack''s damage roll.', 'Combat Superiority', NULL, ''),
('Disarming Attack', NULL, 'When you hit a creature with a weapon attack, you can expend one superiority die to attempt to disarm the target, forcing it to drop one item of your choice that it''s holding. You add the superiority die to the attack''s damage roll, and the target must make a Strength saving throw. On a failed save, it drops the object you choose. The object lands at its feet.', 'Combat Superiority', NULL, ''),
('Distracting Strike', NULL, 'When you hit a creature with a weapon attack, you can expend one superiority die to distract the creature, giving your allies an opening. You add the superiority die to the attack''s damage roll. The next attack roll against the target by an attacker other than you has advantage if the attack is made before the start of your next turn.', 'Combat Superiority', NULL, ''),
('Evasive Footwork', NULL, 'When you move, you can expend one superiority die, rolling the die and adding the number rolled to your AC until you stop moving.', 'Combat Superiority', NULL, ''),
('Feinting Attack', NULL, 'You can expend one superiority die and use a bonus action on your turn to feint, choosing one creature within 5 feet of you as your target. You have advantage on your next attack roll against that creature this turn. If that attack hits, add the superiority die to the attack''s damage roll.', 'Combat Superiority', NULL, ''),
('Goading Attack', NULL, 'When you hit a creature with a weapon attack, you can expend one superiority die to attempt to goad the target into attacking you. You add the superiority die to the attack''s damage roll, and the target must make a Wisdom saving throw. On a failed save, the target has disadvantage on all attack rolls against targets other than you until the end of your next turn.', 'Combat Superiority', NULL, ''),
('Lunging Attack', NULL, 'When you make a melee weapon attack on your turn, you can expend one superiority die to increase your reach for that attack by 5 feet. If you hit, you add the superiority die to the attack''s damage roll.', 'Combat Superiority', NULL, ''),
('Maneuvering Attack', NULL, 'When you hit a creature with a weapon attack, you can expend one superiority die to maneuver one of your comrades into a more advantageous position. You add the superiority die to the attack''s damage roll, and you choose a friendly creature who can see or hear you. That creature can use its reaction to move up to half its speed without provoking opportunity attacks from the target of your attack.', 'Combat Superiority', NULL, ''),
('Menacing Attack', NULL, 'When you hit a creature with a weapon attack, you can expend one superiority die to attempt to frighten the target. You add the superiority die to the attack''s damage roll, and the target must make a Wisdom saving throw. On a failed save, it is frightened of you until the end of your next turn.', 'Combat Superiority', NULL, ''),
('Parry', NULL, 'When another creature damages you with a melee attack, you can use your reaction and expend one superiority die to reduce the damage by the number you roll on your superiority die + your Dexterity modifier.', 'Combat Superiority', NULL, ''),
('Precision Attack', NULL, 'When you make a weapon attack roll against a creature, you can expend one superiority die to add it to the roll. You can use this maneuver before or after making the attack roll, but before any effects of the attack are applied.', 'Combat Superiority', NULL, ''),
('Pushing Attack', NULL, 'When you hit a creature with a weapon attack, you can expend one superiority die to attempt to drive the target back. You add the superiority die to the attack''s damage roll, and if the target is Large or smaller, it must make a Strength saving throw. On a failed save, you push the target up to 15 feet away from you.', 'Combat Superiority', NULL, ''),
('Rally', NULL, 'On your turn, you can use a bonus action and expend one superiority die to bolster the resolve of one of your companions. When you do so, choose a friendly creature who can see or hear you. That creature gains temporary hit points equal to the superiority die roll + your Charisma modifier.', 'Combat Superiority', NULL, ''),
('Riposte', NULL, 'When a creature misses you with a melee attack, you can use your reaction and expend one superiority die to make a melee weapon attack against the creature. If you hit, you add the superiority die to the attack''s damage roll.', 'Combat Superiority', NULL, ''),
('Sweeping Attack', NULL, 'When you hit a creature with a melee weapon attack, you can expend one superiority die to attempt to damage another creature with the same attack. Choose another creature within 5 feet of the original target and within your reach. If the original attack roll would hit the second creature, it takes damage equal to the number you roll on your superiority die. The damage is of the same type dealt by the original attack.', 'Combat Superiority', NULL, ''),
('Trip Attack', NULL, 'When you hit a creature with a weapon attack, you can expend one superiority die to attempt to knock the target down. You add the superiority die to the attack''s damage roll, and if the target is Large or smaller, it must make a Strength saving throw. On a failed save, you knock the target prone.', 'Combat Superiority', NULL, ''),
('Student of War', 313, 'At 3rd level, you gain proficiency with one type of artisan''s tools of your choice.', '', NULL, ''),
('Know Your Enemy', 317, 'Starting at 7th level, if you spend at least 1 minute observing or interacting with another creature outside combat, you can learn certain information about its capabilities compared to your own. The DM tells you if the creature is your equal, superior, or inferior in regard to two of the following characteristics of your choice:

- Strength score
- Dexterity score
- Constitution score
- Armor Class
- Current hit points
- Total class levels, if any
- Fighter class levels, if any', '', NULL, ''),
('Improved Combat Superiority', 320, 'At 10th level, your superiority dice turn into d10s. At 18th level, they turn into d12s.', '', NULL, ''),
('Relentless', 325, 'Starting at 15th level, when you roll initiative and have no superiority dice remaining, you regain 1 superiority die.', '', NULL, ''),
('Feat', 332, '', '', NULL, 'feat'),
('Feat', 334, '', '', NULL, 'feat'),
('Feat', 336, '', '', NULL, 'feat'),
('Feat', 340, '', '', NULL, 'feat'),
('Feat', 342, '', '', NULL, 'feat'),
('Feat', 344, '', '', NULL, 'feat'),
('Feat', 347, '', '', NULL, 'feat'),
('Extra Attack', 333, 'Beginning at 5th level, you can attack twice, instead of once, whenever you take the Attack action on your turn.

The number of attacks increases to three when you reach 11th level in this class and to four when you reach 20th level in this class.', '', NULL, 'extraAttack,1'),
('Extra Attack', 339, '', '', NULL, 'extraAttack,2'),
('Extra Attack', 348, '', '', NULL, 'extraAttack,3'),
('Indomitable', 337, 'Beginning at 9th level, you can reroll a saving throw that you fail. If you do so, you must use the new roll, and you can''t use this feature again until you finish a long rest.

You can use this feature twice between long rests starting at 13th level and three times between long rests starting at 17th level.', '', NULL, ''),
('Improved Critical', 331, 'Beginning when you choose this archetype at 3rd level, your weapon attacks score a critical hit on a roll of 19 or 20.', '', NULL, ''),
('Remarkable Athlete', 335, 'Starting at 7th level, you can add half your proficiency bonus (rounded up) to any Strength, Dexterity, or Constitution check you make that doesn''t already use your proficiency bonus.

In addition, when you make a running long jump, the distance you can cover increases by a number of feet equal to your Strength modifier.', '', NULL, 'remarkableAthlete'),
('Fighting Style - Fighter', 338, 'At 10th level, you can choose a second option from the Fighting Style class feature.', '', 1, ''),
('Superior Critical', 343, 'Starting at 15th level, your weapon attacks score a critical hit on a roll of 18-20.', '', NULL, ''),
('Survivor', 346, 'At 18th level, you attain the pinnacle of resilience in battle. At the start of each of your turns, you regain hit points equal to 5 + your Constitution modifier if you have no more than half of your hit points left. You don''t gain this benefit if you have 0 hit points.', '', NULL, ''),
('Feat', 350, '', '', NULL, 'feat'),
('Feat', 352, '', '', NULL, 'feat'),
('Feat', 354, '', '', NULL, 'feat'),
('Feat', 358, '', '', NULL, 'feat'),
('Feat', 360, '', '', NULL, 'feat'),
('Feat', 362, '', '', NULL, 'feat'),
('Feat', 365, '', '', NULL, 'feat'),
('Extra Attack', 351, 'Beginning at 5th level, you can attack twice, instead of once, whenever you take the Attack action on your turn.

The number of attacks increases to three when you reach 11th level in this class and to four when you reach 20th level in this class.', '', NULL, 'extraAttack,1'),
('Extra Attack', 357, '', '', NULL, 'extraAttack,2'),
('Extra Attack', 366, '', '', NULL, 'extraAttack,3'),
('Indomitable', 355, 'Beginning at 9th level, you can reroll a saving throw that you fail. If you do so, you must use the new roll, and you can''t use this feature again until you finish a long rest.

You can use this feature twice between long rests starting at 13th level and three times between long rests starting at 17th level.', '', NULL, ''),
('Weapon Bond', 349, 'At 3rd level, you learn a ritual that creates a magical bond between yourself and one weapon. You perform the ritual over the course of 1 hour, which can be done during a short rest. The weapon must be within your reach throughout the ritual, at the conclusion of which you touch the weapon and forge the bond.

Once you have bonded a weapon to yourself, you can''t be disarmed of that weapon unless you are incapacitated. If it is on the same plane of existence, you can summon that weapon as a bonus action on your turn, causing it to teleport instantly to your hand.

You can have up to two bonded weapons, but can summon only one at a time with your bonus action. If you attempt to bond with a third weapon, you must break the bond with one of the other two.', '', NULL, ''),
('War Magic', 353, 'Beginning at 7th level, when you use your action to cast a cantrip, you can make one weapon attack as a bonus action.', '', NULL, ''),
('Eldritch Strike', 356, 'At 10th level, you learn how to make your weapon strikes undercut a creature''s resistance to your spells. When you hit a creature with a weapon attack, that creature has disadvantage on the next saving throw it makes against a spell you cast before the end of your next turn.', '', NULL, ''),
('Arcane Charge', 361, 'At 15th level, you gain the ability to teleport up to 30 feet to an unoccupied space you can see when you use your Action Surge. You can teleport before or after the additional action.', '', NULL, ''),
('Improved War Magic', 364, 'Starting at 18th level, when you use your action to cast a spell, you can make one weapon attack as a bonus action.', '', NULL, ''),
('Saving Throw Proficiency (Strength, Dexterity)', 367, '', '', NULL, 'savingThrowProficiency,str|savingThrowProficiency,dex'),
('Monk Weapon Proficiencies', 367, 'As a monk, you have proficiency with all simple weapons and shortswords.', '', NULL, 'weaponProficiency,simple|weaponProficiency,single,29'),
('Skill Proficiency', 367, '', '', NULL, 'skillSelect,1,2,4,6,9,11'),
('Unarmored Defense', 367, 'Beginning at 1st level, while you are wearing no armor and not wielding a shield, your AC equals 10 + your Dexterity modifier + your Wisdom modifier.', '', NULL, 'unarmoredDefense,wis'),
('Martial Arts', 367, 'At 1st level, your practice of martial arts gives you mastery of combat styles that use unarmed strikes and monk weapons, which are shortswords and any simple melee weapons that don''t have the two-handed or heavy property.

You gain the following benefits while you are unarmed or wielding only monk weapons and you aren''t wearing armor or wielding a shield:

- You can use Dexterity instead of Strength for the attack and damage rolls of your unarmed strikes and monk weapons.
- You can roll a d4 in place of the normal damage of your unarmed strike or monk weapon. This die changes as you gain monk levels, as shown in the Martial Arts column of the Monk table.
- When you use the Attack action with an unarmed strike or a monk weapon on your turn, you can make one unarmed strike as a bonus action. For example, if you take the Attack action and attack with a quarterstaff, you can also make an unarmed strike as a bonus action, assuming you haven''t already taken a bonus action this turn.

Certain monasteries use specialized forms of the monk weapons. For example, you might use a club that is two lengths of wood connected by a short chain (called a nunchaku) or a sickle with a shorter, straighter blade (called a kama). Whatever name you use for a monk weapon, you can use the game statistics provided for the weapon on the Weapons page of the Player''s Handbook.', '', NULL, 'martialArts'),
('Ki', 368, 'Starting at 2nd level, your training allows you to harness the mystic energy of ki. Your access to this energy is represented by a number of ki points. Your monk level determines the number of points you have, as shown in the Ki Points column of the Monk table.

You can spend these points to fuel various ki features. You start knowing three such features: Flurry of Blows, Patient Defense, and Step of the Wind. You learn more ki features as you gain levels in this class.

When you spend a ki point, it is unavailable until you finish a short or long rest, at the end of which you draw all of your expended ki back into yourself. You must spend at least 30 minutes of the rest meditating to regain your ki points.

Some of your ki features require your target to make a saving throw to resist the feature''s effects. The saving throw DC is calculated as follows:

Ki save DC = 8 + your proficiency bonus + your Wisdom modifier

Flurry of Blows - Immediately after you take the Attack action on your turn, you can spend 1 ki point to make two unarmed strikes as a bonus action.
Patient Defense - You can spend 1 ki point to take the Dodge action as a bonus action on your turn.
Step of the Wind - You can spend 1 ki point to take the Disengage or Dash action as a bonus action on your turn, and your jump distance is doubled for the turn.', '', NULL, ''),
('Unarmored Movement', 368, 'Starting at 2nd level, your speed increases by 10 feet while you are not wearing armor or wielding a shield. This bonus increases when you reach certain monk levels, as shown in the Monk table.

At 9th level, you gain the ability to move along vertical surfaces and across liquids on your turn without falling during the move.', '', NULL, 'unarmoredMovement'),
('Deflect Missiles', 369, 'Starting at 3rd level, you can use your reaction to deflect or catch the missile when you are hit by a ranged weapon attack. When you do so, the damage you take from the attack is reduced by 1d10 + your Dexterity modifier + your monk level.

If you reduce the damage to 0, you can catch the missile if it is small enough for you to hold in one hand and you have at least one hand free. If you catch a missile in this way, you can spend 1 ki point to make a ranged attack with a range of 20/60 using the weapon or piece of ammunition you just caught, as part of the same reaction. You make this attack with proficiency, regardless of your weapon proficiencies, and the missile counts as a monk weapon for the attack.', '', NULL, ''),
('Feat', 370, '', '', NULL, 'feat'),
('Feat', 374, '', '', NULL, 'feat'),
('Feat', 378, '', '', NULL, 'feat'),
('Feat', 382, '', '', NULL, 'feat'),
('Feat', 385, '', '', NULL, 'feat'),
('Slow Fall', 370, 'Beginning at 4th level, you can use your reaction when you fall to reduce any falling damage you take by an amount equal to five times your monk level.', '', NULL, ''),
('Extra Attack', 371, 'Beginning at 5th level, you can attack twice, instead of once, whenever you take the Attack action on your turn.', '', NULL, 'extraAttack,1'),
('Stunning Strike', 371, 'Starting at 5th level, you can interfere with the flow of ki in an opponent''s body. When you hit another creature with a melee weapon attack, you can spend 1 ki point to attempt a stunning strike. The target must succeed on a Constitution saving throw or be stunned until the end of your next turn.', '', NULL, ''),
('Ki-Empowered Strikes', 372, 'Starting at 6th level, your unarmed strikes count as magical for the purpose of overcoming resistance and immunity to nonmagical attacks and damage.', '', NULL, ''),
('Evasion', 373, 'At 7th level, your instinctive agility lets you dodge out of the way of certain area effects, such as a blue dragon''s lightning breath or a fireball spell. When you are subjected to an effect that allows you to make a Dexterity saving throw to take only half damage, you instead take no damage if you succeed on the saving throw, and only half damage if you fail.', '', NULL, ''),
('Stillnes of Mind', 373, 'Starting at 7th level, you can use your action to end one effect on yourself that is causing you to be charmed or frightened.', '', NULL, ''),
('Purity of Body', 376, 'At 10th level, your mastery of the ki flowing through you makes you immune to disease and poison.', '', NULL, ''),
('Tongue of the Sun and Moon', 379, 'Starting at 13th level, you learn to touch the ki of other minds so that you understand all spoken languages. Moreover, any creature that can understand a language can understand what you say.', '', NULL, ''),
('Diamond Soul', 380, 'Beginning at 14th level, your mastery of ki grants you proficiency in all saving throws.

Additionally, whenever you make a saving throw and fail, you can spend 1 ki point to reroll it and take the second result.', '', NULL, 'savingThrowProficiency,all'),
('Timeless Body', 381, 'At 15th level, your ki sustains you so that you suffer none of the frailty of old age, and you can''t be aged magically. You can still die of old age, however. In addition, you no longer need food or water.', '', NULL, ''),
('Empty Body', 384, 'Beginning at 18th level, you can use your action to spend 4 ki points to become invisible for 1 minute. During that time, you also have resistance to all damage but force damage.

Additionally, you can spend 8 ki points to cast the astral projection spell, without needing material components. When you do so, you can''t take any other creatures with you.', '', NULL, ''),
('Pefect Self', 386, 'At 20th level, when you roll for initiative and have no ki points remaining, you regain 4 ki points.', '', NULL, ''),
('Disciple of the Elements', 369, 'When you choose this tradition at 3rd level, you learn magical disciplines that harness the power of the four elements. A discipline requires you to spend ki points each time you use it.

You know the Elemental Attunement discipline and one other elemental discipline of your choice. You learn one additional elemental discipline of your choice at 6th, 11th, and 17th level.

Whenever you learn a new elemental discipline, you can also replace one elemental discipline that you already know with a different discipline.

Casting Elemental Spells. Some elemental disciplines allow you to cast spells.  To cast one of these spells, you use its casting time and other rules, but you don''t need to provide material components for it.

Once you reach 5th level in this class, you can spend additional ki points to increase the level of an elemental discipline spell that you cast, provided that the spell has an enhanced effect at a higher level, as Burning Hands does. The spell''s level increases by 1 for each additional ki point you spend. For example, if you are a 5th-level monk and use Sweeping Cinder Strike to cast Burning Hands, you can spend 3 ki points to cast it as a 2nd-level spell (the discipline''s base cost of 2 ki points plus 1).

The maximum number of ki points you can spend to cast a spell in this way (including its base ki point cost and any additional ki points you spend to increase its level) is determined by your monk level, as shown below:

5th-8th: 	3
9th-12th: 	4
13th-16th: 	5
17th-20th: 	6', '', 1, ''),
('Elemental Attunement', 369, 'You can use your action to briefly control elemental forces within 30 feet of you, causing one of the following effects of your choice:

Create a harmless, instantaneous sensory effect related to air, earth, fire, or water such as a shower of sparks, a puff of wind, a spray of light mist, or a gentle rumbling of stone.
Instantaneously light or snuff out a candle, a torch, or a small campfire.
Chill or warm up to 1 pound of nonliving material for up to 1 hour.
Cause earth, fire, water, or mist that can fit within a 1-foot cube to shape itself into a crude form you designate for 1 minute.', '', NULL, ''),
('Fangs of the Fire Snake', NULL, 'When you use the Attack action on your turn, you can spend 1 ki point to cause tendrils of flame to stretch out from your fists and feet. Your reach with your unarmed strikes increases by 10 feet for that action, as well as the rest of the turn. A hit with such an attack deals fire damage instead of bludgeoning damage, and if you spend 1 ki point when the attack hits, it also deals an extra 1d10 fire damage.', 'Disciple of the Elements', NULL, ''),
('Fist of Four Thunders', NULL, 'You can spend 2 ki points to cast Thunderwave.', 'Disciple of the Elements', NULL, ''),
('Fist of Unbroken Air', NULL, 'You can create a blast of compressed air that strikes like a mighty fist. As an action, you can spend 2 ki points and choose a creature within 30 feet of you. That creature must make a Strength saving throw. On a failed save, the creature takes 3d10 bludgeoning damage, plus an extra 1d10 bludgeoning damage for each additional ki point you spend, and you can push the creature up to 20 feet away from you and knock it prone. On a successful save, the creature takes half as much damage, and you don''t push it or knock it prone.', 'Disciple of the Elements', NULL, ''),
('Rush of the Gale Spirits', NULL, 'You can spend 2 ki points to cast Gust of Wind.', 'Disciple of the Elements', NULL, ''),
('Shape of the Flowing River', NULL, 'As an action, you can spend 1 ki point to choose an area of ice or water no larger than 30 feet on a side within 120 feet of you. You can change water to ice within the area and vice versa, and you can reshape ice in the area in any manner you choose. You can raise or lower the ice''s elevation, create or fill in a trench, erect or flatten a wall, or form a pillar. The extent of any such changes can''t exceed half the area''s largest dimension. For example, if you affect a 30-foot square, you can create a pillar up to 15 feet high, raise or lower the square''s elevation by up to 15 feet, dig a trench up to 15 feet deep, and so on. You can''t shape the ice to trap or injure a creature in the area.', 'Disciple of the Elements', NULL, ''),
('Sweeping Cinder Strike', NULL, 'You can spend 2 ki points to cast Burning Hands.', 'Disciple of the Elements', NULL, ''),
('Water Whip', NULL, 'You can spend 2 ki points as an action to create a whip of water that shoves and pulls a creature to unbalance it. A creature that you can see that is within 30 feet of you must make a Dexterity saving throw. On a failed save, the creature takes 3d10 bludgeoning damage, plus an extra 1d10 bludgeoning damage for each additional ki point you spend, and you can either knock it prone or pull it up to 25 feet closer to you. On a successful save, the creature takes half as much damage, and you don''t pull it or knock it prone.', 'Disciple of the Elements', NULL, ''),
('Second Elemental Discipline', 372, '', '', 1, ''),
('Clench of the North Wind', NULL, 'You can spend 3 ki points to cast Hold Person.', 'Second Elemental Discipline', NULL, ''),
('Fangs of the Fire Snake', NULL, 'When you use the Attack action on your turn, you can spend 1 ki point to cause tendrils of flame to stretch out from your fists and feet. Your reach with your unarmed strikes increases by 10 feet for that action, as well as the rest of the turn. A hit with such an attack deals fire damage instead of bludgeoning damage, and if you spend 1 ki point when the attack hits, it also deals an extra 1d10 fire damage.', 'Second Elemental Discipline', NULL, ''),
('Fist of Four Thunders', NULL, 'You can spend 2 ki points to cast Thunderwave.', 'Second Elemental Discipline', NULL, ''),
('Fist of Unbroken Air', NULL, 'You can create a blast of compressed air that strikes like a mighty fist. As an action, you can spend 2 ki points and choose a creature within 30 feet of you. That creature must make a Strength saving throw. On a failed save, the creature takes 3d10 bludgeoning damage, plus an extra 1d10 bludgeoning damage for each additional ki point you spend, and you can push the creature up to 20 feet away from you and knock it prone. On a successful save, the creature takes half as much damage, and you don''t push it or knock it prone.', 'Second Elemental Discipline', NULL, ''),
('Gong of the Summit', NULL, 'You can spend 3 ki points to cast Shatter.', 'Second Elemental Discipline', NULL, ''),
('Rush of the Gale Spirits', NULL, 'You can spend 2 ki points to cast Gust of Wind.', 'Second Elemental Discipline', NULL, ''),
('Shape of the Flowing River', NULL, 'As an action, you can spend 1 ki point to choose an area of ice or water no larger than 30 feet on a side within 120 feet of you. You can change water to ice within the area and vice versa, and you can reshape ice in the area in any manner you choose. You can raise or lower the ice''s elevation, create or fill in a trench, erect or flatten a wall, or form a pillar. The extent of any such changes can''t exceed half the area''s largest dimension. For example, if you affect a 30-foot square, you can create a pillar up to 15 feet high, raise or lower the square''s elevation by up to 15 feet, dig a trench up to 15 feet deep, and so on. You can''t shape the ice to trap or injure a creature in the area.', 'Second Elemental Discipline', NULL, ''),
('Sweeping Cinder Strike', NULL, 'You can spend 2 ki points to cast Burning Hands.', 'Second Elemental Discipline', NULL, ''),
('Water Whip', NULL, 'You can spend 2 ki points as an action to create a whip of water that shoves and pulls a creature to unbalance it. A creature that you can see that is within 30 feet of you must make a Dexterity saving throw. On a failed save, the creature takes 3d10 bludgeoning damage, plus an extra 1d10 bludgeoning damage for each additional ki point you spend, and you can either knock it prone or pull it up to 25 feet closer to you. On a successful save, the creature takes half as much damage, and you don''t pull it or knock it prone.', 'Second Elemental Discipline', NULL, ''),
('Third Elemental Discipline', 377, '', '', 1, ''),
('Clench of the North Wind', NULL, 'You can spend 3 ki points to cast Hold Person.', 'Third Elemental Discipline', NULL, ''),
('Fangs of the Fire Snake', NULL, 'When you use the Attack action on your turn, you can spend 1 ki point to cause tendrils of flame to stretch out from your fists and feet. Your reach with your unarmed strikes increases by 10 feet for that action, as well as the rest of the turn. A hit with such an attack deals fire damage instead of bludgeoning damage, and if you spend 1 ki point when the attack hits, it also deals an extra 1d10 fire damage.', 'Third Elemental Discipline', NULL, ''),
('Fist of Four Thunders', NULL, 'You can spend 2 ki points to cast Thunderwave.', 'Third Elemental Discipline', NULL, ''),
('Fist of Unbroken Air', NULL, 'You can create a blast of compressed air that strikes like a mighty fist. As an action, you can spend 2 ki points and choose a creature within 30 feet of you. That creature must make a Strength saving throw. On a failed save, the creature takes 3d10 bludgeoning damage, plus an extra 1d10 bludgeoning damage for each additional ki point you spend, and you can push the creature up to 20 feet away from you and knock it prone. On a successful save, the creature takes half as much damage, and you don''t push it or knock it prone.', 'Third Elemental Discipline', NULL, ''),
('Flames of the Phoenix', NULL, 'You can spend 4 ki points to cast Fireball.', 'Third Elemental Discipline', NULL, ''),
('Gong of the Summit', NULL, 'You can spend 3 ki points to cast Shatter.', 'Third Elemental Discipline', NULL, ''),
('Mist Stance', NULL, 'You can spend 4 ki points to cast Gaseous Form, targeting yourself.', 'Third Elemental Discipline', NULL, ''),
('Ride the Wind', NULL, 'You can spend 4 ki points to cast Fly, targeting yourself.', 'Third Elemental Discipline', NULL, ''),
('Rush of the Gale Spirits', NULL, 'You can spend 2 ki points to cast Gust of Wind.', 'Third Elemental Discipline', NULL, ''),
('Shape of the Flowing River', NULL, 'As an action, you can spend 1 ki point to choose an area of ice or water no larger than 30 feet on a side within 120 feet of you. You can change water to ice within the area and vice versa, and you can reshape ice in the area in any manner you choose. You can raise or lower the ice''s elevation, create or fill in a trench, erect or flatten a wall, or form a pillar. The extent of any such changes can''t exceed half the area''s largest dimension. For example, if you affect a 30-foot square, you can create a pillar up to 15 feet high, raise or lower the square''s elevation by up to 15 feet, dig a trench up to 15 feet deep, and so on. You can''t shape the ice to trap or injure a creature in the area.', 'Third Elemental Discipline', NULL, ''),
('Sweeping Cinder Strike', NULL, 'You can spend 2 ki points to cast Burning Hands.', 'Third Elemental Discipline', NULL, ''),
('Water Whip', NULL, 'You can spend 2 ki points as an action to create a whip of water that shoves and pulls a creature to unbalance it. A creature that you can see that is within 30 feet of you must make a Dexterity saving throw. On a failed save, the creature takes 3d10 bludgeoning damage, plus an extra 1d10 bludgeoning damage for each additional ki point you spend, and you can either knock it prone or pull it up to 25 feet closer to you. On a successful save, the creature takes half as much damage, and you don''t pull it or knock it prone.', 'Third Elemental Discipline', NULL, ''),
('Fourth Elemental Discipline', 383, '', '', 1, ''),
('Breath of Winter', NULL, 'You can spend 6 ki points to cast Cone of Cold.', 'Fourth Elemental Discipline', NULL, ''),
('Clench of the North Wind', NULL, 'You can spend 3 ki points to cast Hold Person.', 'Fourth Elemental Discipline', NULL, ''),
('Eternal Mountain Defense', NULL, 'You can spend 5 ki points to cast Stoneskin, targeting yourself.', 'Fourth Elemental Discipline', NULL, ''),
('Fangs of the Fire Snake', NULL, 'When you use the Attack action on your turn, you can spend 1 ki point to cause tendrils of flame to stretch out from your fists and feet. Your reach with your unarmed strikes increases by 10 feet for that action, as well as the rest of the turn. A hit with such an attack deals fire damage instead of bludgeoning damage, and if you spend 1 ki point when the attack hits, it also deals an extra 1d10 fire damage.', 'Fourth Elemental Discipline', NULL, ''),
('Fist of Four Thunders', NULL, 'You can spend 2 ki points to cast Thunderwave.', 'Fourth Elemental Discipline', NULL, ''),
('Fist of Unbroken Air', NULL, 'You can create a blast of compressed air that strikes like a mighty fist. As an action, you can spend 2 ki points and choose a creature within 30 feet of you. That creature must make a Strength saving throw. On a failed save, the creature takes 3d10 bludgeoning damage, plus an extra 1d10 bludgeoning damage for each additional ki point you spend, and you can push the creature up to 20 feet away from you and knock it prone. On a successful save, the creature takes half as much damage, and you don''t push it or knock it prone.', 'Fourth Elemental Discipline', NULL, ''),
('Flames of the Phoenix', NULL, 'You can spend 4 ki points to cast Fireball.', 'Fourth Elemental Discipline', NULL, ''),
('Gong of the Summit', NULL, 'You can spend 3 ki points to cast Shatter.', 'Fourth Elemental Discipline', NULL, ''),
('Mist Stance', NULL, 'You can spend 4 ki points to cast Gaseous Form, targeting yourself.', 'Fourth Elemental Discipline', NULL, ''),
('Ride the Wind', NULL, 'You can spend 4 ki points to cast Fly, targeting yourself.', 'Fourth Elemental Discipline', NULL, ''),
('River of Hungry Flame', NULL, 'You can spend 5 ki points to cast Wall of Fire.', 'Fourth Elemental Discipline', NULL, ''),
('Rush of the Gale Spirits', NULL, 'You can spend 2 ki points to cast Gust of Wind.', 'Fourth Elemental Discipline', NULL, ''),
('Shape of the Flowing River', NULL, 'As an action, you can spend 1 ki point to choose an area of ice or water no larger than 30 feet on a side within 120 feet of you. You can change water to ice within the area and vice versa, and you can reshape ice in the area in any manner you choose. You can raise or lower the ice''s elevation, create or fill in a trench, erect or flatten a wall, or form a pillar. The extent of any such changes can''t exceed half the area''s largest dimension. For example, if you affect a 30-foot square, you can create a pillar up to 15 feet high, raise or lower the square''s elevation by up to 15 feet, dig a trench up to 15 feet deep, and so on. You can''t shape the ice to trap or injure a creature in the area.', 'Fourth Elemental Discipline', NULL, ''),
('Sweeping Cinder Strike', NULL, 'You can spend 2 ki points to cast Burning Hands.', 'Fourth Elemental Discipline', NULL, ''),
('Water Whip', NULL, 'You can spend 2 ki points as an action to create a whip of water that shoves and pulls a creature to unbalance it. A creature that you can see that is within 30 feet of you must make a Dexterity saving throw. On a failed save, the creature takes 3d10 bludgeoning damage, plus an extra 1d10 bludgeoning damage for each additional ki point you spend, and you can either knock it prone or pull it up to 25 feet closer to you. On a successful save, the creature takes half as much damage, and you don''t pull it or knock it prone.', 'Fourth Elemental Discipline', NULL, ''),
('Wave of Rolling Earth', NULL, 'You can spend 6 ki points to cast Wall of Stone.', 'Fourth Elemental Discipline', NULL, ''),
('Deflect Missiles', 387, 'Starting at 3rd level, you can use your reaction to deflect or catch the missile when you are hit by a ranged weapon attack. When you do so, the damage you take from the attack is reduced by 1d10 + your Dexterity modifier + your monk level.

If you reduce the damage to 0, you can catch the missile if it is small enough for you to hold in one hand and you have at least one hand free. If you catch a missile in this way, you can spend 1 ki point to make a ranged attack with a range of 20/60 using the weapon or piece of ammunition you just caught, as part of the same reaction. You make this attack with proficiency, regardless of your weapon proficiencies, and the missile counts as a monk weapon for the attack.', '', NULL, ''),
('Feat', 388, '', '', NULL, 'feat'),
('Feat', 392, '', '', NULL, 'feat'),
('Feat', 396, '', '', NULL, 'feat'),
('Feat', 400, '', '', NULL, 'feat'),
('Feat', 403, '', '', NULL, 'feat'),
('Slow Fall', 388, 'Beginning at 4th level, you can use your reaction when you fall to reduce any falling damage you take by an amount equal to five times your monk level.', '', NULL, ''),
('Extra Attack', 389, 'Beginning at 5th level, you can attack twice, instead of once, whenever you take the Attack action on your turn.', '', NULL, 'extraAttack,1'),
('Stunning Strike', 389, 'Starting at 5th level, you can interfere with the flow of ki in an opponent''s body. When you hit another creature with a melee weapon attack, you can spend 1 ki point to attempt a stunning strike. The target must succeed on a Constitution saving throw or be stunned until the end of your next turn.', '', NULL, ''),
('Ki-Empowered Strikes', 390, 'Starting at 6th level, your unarmed strikes count as magical for the purpose of overcoming resistance and immunity to nonmagical attacks and damage.', '', NULL, ''),
('Evasion', 391, 'At 7th level, your instinctive agility lets you dodge out of the way of certain area effects, such as a blue dragon''s lightning breath or a fireball spell. When you are subjected to an effect that allows you to make a Dexterity saving throw to take only half damage, you instead take no damage if you succeed on the saving throw, and only half damage if you fail.', '', NULL, ''),
('Stillnes of Mind', 391, 'Starting at 7th level, you can use your action to end one effect on yourself that is causing you to be charmed or frightened.', '', NULL, ''),
('Purity of Body', 394, 'At 10th level, your mastery of the ki flowing through you makes you immune to disease and poison.', '', NULL, ''),
('Tongue of the Sun and Moon', 397, 'Starting at 13th level, you learn to touch the ki of other minds so that you understand all spoken languages. Moreover, any creature that can understand a language can understand what you say.', '', NULL, ''),
('Diamond Soul', 398, 'Beginning at 14th level, your mastery of ki grants you proficiency in all saving throws.

Additionally, whenever you make a saving throw and fail, you can spend 1 ki point to reroll it and take the second result.', '', NULL, 'savingThrowProficiency,all'),
('Timeless Body', 399, 'At 15th level, your ki sustains you so that you suffer none of the frailty of old age, and you can''t be aged magically. You can still die of old age, however. In addition, you no longer need food or water.', '', NULL, ''),
('Empty Body', 402, 'Beginning at 18th level, you can use your action to spend 4 ki points to become invisible for 1 minute. During that time, you also have resistance to all damage but force damage.

Additionally, you can spend 8 ki points to cast the astral projection spell, without needing material components. When you do so, you can''t take any other creatures with you.', '', NULL, ''),
('Pefect Self', 404, 'At 20th level, when you roll for initiative and have no ki points remaining, you regain 4 ki points.', '', NULL, ''),
('Open Hand Technique', 387, 'Starting when you choose this tradition at 3rd level, you can manipulate your enemy''s ki when you harness your own. Whenever you hit a creature with one of the attacks granted by your Flurry of Blows, you can impose one of the following effects on that target:

- It must succeed on a Dexterity saving throw or be knocked prone.
- It must make a Strength saving throw. If it fails, you can push it up to 15 feet away from you.
- It can''t take reactions until the end of your next turn.', '', NULL, ''),
('Wholeness of Body', 390, 'At 6th level, you gain the ability to heal yourself. As an action, you can regain hit points equal to three times your monk level. You must finish a long rest before you can use this feature again.', '', NULL, ''),
('Tranquility', 395, 'Beginning at 11th level, you can enter a special meditation that surrounds you with an aura of peace. At the end of a long rest, you gain the effect of a Sanctuary spell that lasts until the start of your next long rest (the spell can end early as normal). The saving throw DC for the spell equals 8 + your Wisdom modifier + your proficiency bonus.', '', NULL, ''),
('Quivering Palm', 401, 'At 17th level, you gain the ability to set up lethal vibrations in someone''s body. When you hit a creature with an unarmed strike, you can spend 3 ki points to start these imperceptible vibrations, which last for a number of days equal to your monk level. The vibrations are harmless unless you use your action to end them. To do so, you and the target must be on the same plane of existence. When you use this action, the creature must make a Constitution saving throw. If it fails, it is reduced to 0 hit points. If it succeeds, it takes 10d10 necrotic damage.

You can have only one creature under the effect of this feature at a time. You can choose to end the vibrations harmlessly without using an action.', '', NULL, ''),
('Deflect Missiles', 405, 'Starting at 3rd level, you can use your reaction to deflect or catch the missile when you are hit by a ranged weapon attack. When you do so, the damage you take from the attack is reduced by 1d10 + your Dexterity modifier + your monk level.

If you reduce the damage to 0, you can catch the missile if it is small enough for you to hold in one hand and you have at least one hand free. If you catch a missile in this way, you can spend 1 ki point to make a ranged attack with a range of 20/60 using the weapon or piece of ammunition you just caught, as part of the same reaction. You make this attack with proficiency, regardless of your weapon proficiencies, and the missile counts as a monk weapon for the attack.', '', NULL, ''),
('Feat', 406, '', '', NULL, 'feat'),
('Feat', 410, '', '', NULL, 'feat'),
('Feat', 414, '', '', NULL, 'feat'),
('Feat', 418, '', '', NULL, 'feat'),
('Feat', 421, '', '', NULL, 'feat'),
('Slow Fall', 406, 'Beginning at 4th level, you can use your reaction when you fall to reduce any falling damage you take by an amount equal to five times your monk level.', '', NULL, ''),
('Extra Attack', 407, 'Beginning at 5th level, you can attack twice, instead of once, whenever you take the Attack action on your turn.', '', NULL, 'extraAttack,1'),
('Stunning Strike', 407, 'Starting at 5th level, you can interfere with the flow of ki in an opponent''s body. When you hit another creature with a melee weapon attack, you can spend 1 ki point to attempt a stunning strike. The target must succeed on a Constitution saving throw or be stunned until the end of your next turn.', '', NULL, ''),
('Ki-Empowered Strikes', 408, 'Starting at 6th level, your unarmed strikes count as magical for the purpose of overcoming resistance and immunity to nonmagical attacks and damage.', '', NULL, ''),
('Evasion', 409, 'At 7th level, your instinctive agility lets you dodge out of the way of certain area effects, such as a blue dragon''s lightning breath or a fireball spell. When you are subjected to an effect that allows you to make a Dexterity saving throw to take only half damage, you instead take no damage if you succeed on the saving throw, and only half damage if you fail.', '', NULL, ''),
('Stillnes of Mind', 409, 'Starting at 7th level, you can use your action to end one effect on yourself that is causing you to be charmed or frightened.', '', NULL, ''),
('Purity of Body', 412, 'At 10th level, your mastery of the ki flowing through you makes you immune to disease and poison.', '', NULL, ''),
('Tongue of the Sun and Moon', 415, 'Starting at 13th level, you learn to touch the ki of other minds so that you understand all spoken languages. Moreover, any creature that can understand a language can understand what you say.', '', NULL, ''),
('Diamond Soul', 416, 'Beginning at 14th level, your mastery of ki grants you proficiency in all saving throws.

Additionally, whenever you make a saving throw and fail, you can spend 1 ki point to reroll it and take the second result.', '', NULL, 'savingThrowProficiency,all'),
('Timeless Body', 417, 'At 15th level, your ki sustains you so that you suffer none of the frailty of old age, and you can''t be aged magically. You can still die of old age, however. In addition, you no longer need food or water.', '', NULL, ''),
('Empty Body', 420, 'Beginning at 18th level, you can use your action to spend 4 ki points to become invisible for 1 minute. During that time, you also have resistance to all damage but force damage.

Additionally, you can spend 8 ki points to cast the astral projection spell, without needing material components. When you do so, you can''t take any other creatures with you.', '', NULL, ''),
('Pefect Self', 422, 'At 20th level, when you roll for initiative and have no ki points remaining, you regain 4 ki points.', '', NULL, ''),
('Shadow Arts', 405, 'Starting when you choose this tradition at 3rd level, you can use your ki to duplicate the effects of certain spells. As an action, you can spend 2 ki points to cast darkness, darkvision, pass without trace, or silence, without providing material components. Additionally, you gain the minor illusion cantrip if you don''t already know it.', '', NULL, ''),
('Shadow Step', 408, 'At 6th level, you gain the ability to step from one shadow into another. When you are in dim light or darkness, as a bonus action you can teleport up to 60 feet to an unoccupied space you can see that is also in dim light or darkness. You then have advantage on the first melee attack you make before the end of the turn.', '', NULL, ''),
('Cloak of Shadows', 413, 'By 11th level, you have learned to become one with the shadows. When you are in an area of dim light or darkness, you can use your action to become invisible. You remain invisible until you make an attack, cast a spell, or are in an area of bright light.', '', NULL, ''),
('Opportunist', 419, 'At 17th level, you can exploit a creature''s momentary distraction when it is hit by an attack. Whenever a creature within 5 feet of you is hit by an attack made by a creature other than you, you can use your reaction to make a melee attack against that creature.', '', NULL, ''),
('Saving Throw Proficiency (Wisdom, Charisma)', 423, '', '', NULL, 'savingThrowProficiency,wis|savingThrowProficiency,cha'),
('Armor Proficiency (Light, Medium, Heavy, Shield)', 423, '', '', NULL, 'armorProficiency,all'),
('Paladin Weapon Proficiencies', 423, 'As a paladin, you have proficiency with all simple and martial weapons.', '', NULL, 'weaponProficiency,all'),
('Skill Proficiency', 423, '', '', NULL, 'skillSelect,1,9,11,12,16,18|skillSelect,1,9,11,12,16,18'),
('Divine Sense', 423, 'The presence of strong evil registers on your senses like a noxious odor, and powerful good rings like heavenly music in your ears. As an action, you can open your awareness to detect such forces. Until the end of your next turn, you know the location of any celestial, fiend, or undead within 60 feet of you that is not behind total cover. You know the type (celestial, fiend, or undead) of any being whose presence you sense, but not its identity (the vampire Count Strahd von Zarovich, for instance). Within the same radius, you also detect the presence of any place or object that has been consecrated or desecrated, as with the Hallow spell.

You can use this feature a number of times equal to 1 + your Charisma modifier. When you finish a long rest, you regain all expended uses.', '', NULL, ''),
('Lay on Hands', 423, 'Your blessed touch can heal wounds. You have a pool of healing power that replenishes when you take a long rest. With that pool, you can restore a total number of hit points equal to your paladin level x 5.

As an action, you can touch a creature and draw power from the pool to restore a number of hit points to that creature, up to the maximum amount remaining in your pool.

Alternatively, you can expend 5 hit points from your pool of healing to cure the target of one disease or neutralize one poison affecting it. You can cure multiple diseases and neutralize multiple poisons with a single use of Lay on Hands, expending hit points separately for each one.

This feature has no effect on undead and constructs.', '', NULL, ''),
('Fighting Style - Paladin', 424, 'Starting at 2nd level, you adopt a particular style of fighting as your specialty. Choose one of the following options. You can''t take a Fighting Style option more than once, even if you later get to choose again.', '', 1, ''),
('Defense', NULL, 'While you are wearing armor, you gain a +1 bonus to AC.', 'Fighting Style - Paladin', NULL, 'defenseStyle'),
('Dueling', NULL, 'When you are wielding a melee weapon in one hand and no other weapons, you gain a +2 bonus to damage rolls with that weapon.', 'Fighting Style - Paladin', NULL, 'duelingStyle'),
('Great Weapon Fighting', NULL, 'When you roll a 1 or 2 on a damage die for an attack you make with a melee weapon that you are wielding with two hands, you can reroll the die and must use the new roll, even if the new roll is a 1 or a 2. The weapon must have the two-handed or versatile property for you to gain this benefit.', 'Fighting Style - Paladin', NULL, ''),
('Protection', NULL, 'When a creature you can see attacks a target other than you that is within 5 feet of you, you can use your reaction to impose disadvantage on the attack roll. You must be wielding a shield.', 'Fighting Style - Paladin', NULL, ''),
('Divine Smite', 424, 'Starting at 2nd level, when you hit a creature with a melee weapon attack, you can expend one spell slot to deal radiant damage to the target, in addition to the weapon''s damage. The extra damage is 2d8 for a 1st-level spell slot, plus 1d8 for each spell level higher than 1st, to a maximum of 5d8. The damage increases by 1d8 if the target is an undead or a fiend, to a maximum of 6d8.', '', NULL, ''),
('Divine Health', 425, 'By 3rd level, the divine magic flowing through you makes you immune to disease.', '', NULL, ''),
('Feat', 426, '', '', NULL, 'feat'),
('Feat', 430, '', '', NULL, 'feat'),
('Feat', 434, '', '', NULL, 'feat'),
('Feat', 438, '', '', NULL, 'feat'),
('Feat', 441, '', '', NULL, 'feat'),
('Extra Attack', 427, 'Beginning at 5th level, you can attack twice, instead of once, whenever you take the Attack action on your turn.', '', NULL, 'extraAttack,1'),
('Aura of Protection', 428, 'Starting at 6th level, whenever you or a friendly creature within 10 feet of you must make a saving throw, the creature gains a bonus to the saving throw equal to your Charisma modifier (with a minimum bonus of +1). You must be conscious to grant this bonus.

At 18th level, the range of this aura increases to 30 feet.', '', NULL, ''),
('Aura of Courage', 432, 'Starting at 10th level, you and friendly creatures within 10 feet of you can''t be frightened while you are conscious.

At 18th level, the range of this aura increases to 30 feet.', '', NULL, ''),
('Improved Divine Smite', 433, 'By 11th level, you are so suffused with righteous might that all your melee weapon strikes carry divine power with them. Whenever you hit a creature with a melee weapon, the creature takes an extra 1d8 radiant damage.', '', NULL, ''),
('Cleansing Touch', 436, 'Beginning at 14th level, you can use your action to end one spell on yourself or on one willing creature that you touch.

You can use this feature a number of times equal to your Charisma modifier (a minimum of once). You regain expended uses when you finish a long rest.', '', NULL, ''),
('Oath Spells', 425, 'At 3rd level, you gain Ensnaring Strike and Speak with Animals spells.', '', NULL, 'spell,118|spell,306'),
('Oath Spells', 427, 'At 5th level, you gain Moonbeam and Misty Step spells.', '', NULL, 'spell,235|spell,233'),
('Oath Spells', 431, 'At 9th level, you gain Plant Growth and Protection from Energy spells.', '', NULL, 'spell,254|spell,267'),
('Oath Spells', 435, 'At 13th level, you gain Ice Storm and Stoneskin spells.', '', NULL, 'spell,188|spell,316'),
('Oath Spells', 439, 'At 17rd level, you gain Commune with Nature and Tree Stride spells.', '', NULL, 'spell,57|spell,336'),
('Channel Divinity: Nature''s Wrath', 425, 'You can use your Channel Divinity to invoke primeval forces to ensnare a foe. As an action, you can cause spectral vines to spring up and reach for a creature within 10 feet of you that you can see. The creature must succeed on a Strength or Dexterity saving throw (its choice) or be restrained. While restrained by the vines, the creature repeats the saving throw at the end of each of its turns. On a success, it frees itself and the vines vanish.', '', NULL, ''),
('Channel Divinity: Turn the Faithless', 425, 'You can use your Channel Divinity to utter ancient words that are painful for fey and fiends to hear. As an action, you present your holy symbol, and each fey or fiend within 30 feet of you that can hear you must make a Wisdom saving throw. On a failed save, the creature is turned for 1 minute or until it takes damage.

A turned creature must spend its turns trying to move as far away from you as it can, and it can''t willingly move to a space within 30 feet of you. It also can''t take reactions. For its action, it can use only the Dash action or try to escape from an effect that prevents it from moving. If there''s nowhere to move, the creature can use the Dodge action.

If the creature''s true form is concealed by an illusion, shapeshifting, or other effect, that form is revealed while it is turned.', '', NULL, ''),
('Aura of Warding', 429, 'Beginning at 7th level, ancient magic lies so heavily upon you that it forms an eldritch ward. You and friendly creatures within 10 feet of you have resistance to damage from spells.

At 18th level, the range of this aura increases to 30 feet.', '', NULL, ''),
('Undying Sentinel', 437, 'Starting at 15th level, when you are reduced to 0 hit points and are not killed outright, you can choose to drop to 1 hit point instead. Once you use this ability, you can''t use it again until you finish a long rest.

Additionally, you suffer none of the drawbacks of old age, and you can''t be aged magically.', '', NULL, ''),
('Elder Champion', 442, 'At 20th level, you can assume the form of an ancient force of nature, taking on an appearance you choose. For example, your skin might turn green or take on a bark-like texture, your hair might become leafy or moss-like, or you might sprout antlers or a lion-like mane.

Using your action, you undergo a transformation. For 1 minute, you gain the following benefits:

At the start of each of your turns, you regain 10 hit points.
Whenever you cast a paladin spell that has a casting time of 1 action, you can cast it using a bonus action instead.
Enemy creatures within 10 feet of you have disadvantage on saving throws against your paladin spells and Channel Divinity options.
Once you use this feature, you can''t use it again until you finish a long rest.', '', NULL, ''),
('Divine Health', 443, 'By 3rd level, the divine magic flowing through you makes you immune to disease.', '', NULL, ''),
('Feat', 444, '', '', NULL, 'feat'),
('Feat', 448, '', '', NULL, 'feat'),
('Feat', 452, '', '', NULL, 'feat'),
('Feat', 456, '', '', NULL, 'feat'),
('Feat', 459, '', '', NULL, 'feat'),
('Extra Attack', 445, 'Beginning at 5th level, you can attack twice, instead of once, whenever you take the Attack action on your turn.', '', NULL, 'extraAttack,1'),
('Aura of Protection', 446, 'Starting at 6th level, whenever you or a friendly creature within 10 feet of you must make a saving throw, the creature gains a bonus to the saving throw equal to your Charisma modifier (with a minimum bonus of +1). You must be conscious to grant this bonus.

At 18th level, the range of this aura increases to 30 feet.', '', NULL, ''),
('Aura of Courage', 450, 'Starting at 10th level, you and friendly creatures within 10 feet of you can''t be frightened while you are conscious.

At 18th level, the range of this aura increases to 30 feet.', '', NULL, ''),
('Improved Divine Smite', 451, 'By 11th level, you are so suffused with righteous might that all your melee weapon strikes carry divine power with them. Whenever you hit a creature with a melee weapon, the creature takes an extra 1d8 radiant damage.', '', NULL, ''),
('Cleansing Touch', 454, 'Beginning at 14th level, you can use your action to end one spell on yourself or on one willing creature that you touch.

You can use this feature a number of times equal to your Charisma modifier (a minimum of once). You regain expended uses when you finish a long rest.', '', NULL, ''),
('Oath Spells', 443, 'At 3rd level, you gain Protection form Evil and Good and Sanctuary spells.', '', NULL, 'spell,268|spell,285'),
('Oath Spells', 445, 'At 5th level, you gain Lesser Restoration and Zone of Truth spells.', '', NULL, 'spell,201|spell,361'),
('Oath Spells', 449, 'At 9th level, you gain Beacon of Hope and Dispel Magic spells.', '', NULL, 'spell,28|spell,102'),
('Oath Spells', 453, 'At 13th level, you gain Freedom of Movement and Guardian of Faith spells.', '', NULL, 'spell,150|spell,165'),
('Oath Spells', 457, 'At 17rd level, you gain Commune and Flame Strike spells.', '', NULL, 'spell,56|spell,142'),
('Channel Divinity: Sacred Weapon', 443, 'As an action, you can imbue one weapon that you are holding with positive energy, using your Channel Divinity. For 1 minute, you add your Charisma modifier to attack rolls made with that weapon (with a minimum bonus of +1). The weapon also emits bright light in a 20-foot radius and dim light 20 feet beyond that. If the weapon is not already magical, it becomes magical for the duration.

You can end this effect on your turn as part of any other action. If you are no longer holding or carrying this weapon, or if you fall unconscious, this effect ends.', '', NULL, ''),
('Channel Divinity: Turn the Unholy', 443, 'As an action, you present your holy symbol and speak a prayer censuring fiends and undead, using your Channel Divinity. Each fiend or undead that can see or hear you within 30 feet of you must make a Wisdom saving throw. If the creature fails its saving throw, it is turned for 1 minute or until it takes damage.

A turned creature must spend its turns trying to move as far away from you as it can, and it can''t willingly move to a space within 30 feet of you. It also can''t take reactions. For its action, it can use only the Dash action or try to escape from an effect that prevents it from moving. If there''s nowhere to move, the creature can use the Dodge action.', '', NULL, ''),
('Aura of Devotion', 447, 'Starting at 7th level, you and friendly creatures within 10 feet of you can''t be charmed while you are conscious.

At 18th level, the range of this aura increases to 30 feet.', '', NULL, ''),
('Purity of Spirit', 455, 'Beginning at 15th level, you are always under the effects of a Protection from Evil and Good spell.', '', NULL, ''),
('Holy Nimbus', 460, 'At 20th level, as an action, you can emanate an aura of sunlight. For 1 minute, bright light shines from you in a 30-foot radius, and dim light shines 30 feet beyond that.

Whenever an enemy creature starts its turn in the bright light, the creature takes 10 radiant damage.

In addition, for the duration, you have advantage on saving throws against spells cast by fiends or undead.

Once you use this feature, you can''t use it again until you finish a long rest.', '', NULL, ''),
('Divine Health', 461, 'By 3rd level, the divine magic flowing through you makes you immune to disease.', '', NULL, ''),
('Feat', 462, '', '', NULL, 'feat'),
('Feat', 466, '', '', NULL, 'feat'),
('Feat', 470, '', '', NULL, 'feat'),
('Feat', 474, '', '', NULL, 'feat'),
('Feat', 477, '', '', NULL, 'feat'),
('Extra Attack', 463, 'Beginning at 5th level, you can attack twice, instead of once, whenever you take the Attack action on your turn.', '', NULL, 'extraAttack,1'),
('Aura of Protection', 464, 'Starting at 6th level, whenever you or a friendly creature within 10 feet of you must make a saving throw, the creature gains a bonus to the saving throw equal to your Charisma modifier (with a minimum bonus of +1). You must be conscious to grant this bonus.

At 18th level, the range of this aura increases to 30 feet.', '', NULL, ''),
('Aura of Courage', 468, 'Starting at 10th level, you and friendly creatures within 10 feet of you can''t be frightened while you are conscious.

At 18th level, the range of this aura increases to 30 feet.', '', NULL, ''),
('Improved Divine Smite', 469, 'By 11th level, you are so suffused with righteous might that all your melee weapon strikes carry divine power with them. Whenever you hit a creature with a melee weapon, the creature takes an extra 1d8 radiant damage.', '', NULL, ''),
('Cleansing Touch', 472, 'Beginning at 14th level, you can use your action to end one spell on yourself or on one willing creature that you touch.

You can use this feature a number of times equal to your Charisma modifier (a minimum of once). You regain expended uses when you finish a long rest.', '', NULL, ''),
('Oath Spells', 461, 'At 3rd level, you gain Bane and Hunter''s Mark spells.', '', NULL, 'spell,24|spell,186'),
('Oath Spells', 463, 'At 5th level, you gain Hold Person and Misty Step spells.', '', NULL, 'spell,183|spell,233'),
('Oath Spells', 467, 'At 9th level, you gain Haste and Protection from Energy spells.', '', NULL, 'spell,174|spell,267'),
('Oath Spells', 471, 'At 13th level, you gain Banishment and Dimension Door spells.', '', NULL, 'spell,26|spell,98'),
('Oath Spells', 475, 'At 17rd level, you gain Hold Monster and Scrying spells.', '', NULL, 'spell,182|spell,287'),
('Channel Divinity: Abjure Enemy', 461, 'As an action, you present your holy symbol and speak a prayer of denunciation, using your Channel Divinity. Choose one creature within 60 feet of you that you can see. That creature must make a Wisdom saving throw, unless it is immune to being frightened. Fiends and undead have disadvantage on this saving throw.

On a failed save, the creature is frightened for 1 minute or until it takes any damage. While frightened, the creature''s speed is 0, and it can''t benefit from any bonus to its speed.

On a successful save, the creature''s speed is halved for 1 minute or until the creature takes any damage.', '', NULL, ''),
('Channel Divinity: Vow of Enmity', 461, 'As a bonus action, you can utter a vow of enmity against a creature you can see within 10 feet of you, using your Channel Divinity. You gain advantage on attack rolls against the creature for 1 minute or until it drops to 0 hit points or falls unconscious.', '', NULL, ''),
('Relentless Avenger', 465, 'By 7th level, your supernatural focus helps you close off a foe''s retreat. When you hit a creature with an opportunity attack, you can move up to half your speed immediately after the attack and as part of the same reaction. This movement doesn''t provoke opportunity attacks.', '', NULL, ''),
('Soul of Vengeance', 473, 'Starting at 15th level, the authority with which you speak your Vow of Enmity gives you greater power over your foe. When a creature under the effect of your Vow of Enmity makes an attack, you can use your reaction to make a melee weapon attack against that creature if it is within range.', '', NULL, ''),
('Avenging Angel', 478, 'At 20th level, you can assume the form of an angelic avenger. Using your action, you undergo a transformation. For 1 hour, you gain the following benefits:

Wings sprout from your back and grant you a flying speed of 60 feet.
You emanate an aura of menace in a 30-foot radius. The first time any enemy creature enters the aura or starts its turn there during a battle, the creature must succeed on a Wisdom saving throw or become frightened of you for 1 minute or until it takes any damage. Attack rolls against the frightened creature have advantage.
Once you use this feature, you can''t use it again until you finish a long rest.', '', NULL, ''),
('Saving Throw Proficiency (Strength, Dexterity)', 479, '', '', NULL, 'savingThrowProficiency,str|savingThrowProficiency,dex'),
('Armor Proficiency (Light, Medium, Shield)', 479, '', '', NULL, 'armorProficiency,light|armorProficiency,medium'),
('Ranger Weapon Proficiencies', 479, 'As a ranger, you have proficiency with all simple and martial weapons.', '', NULL, 'weaponProficiency,all'),
('Skill Proficiency', 479, '', '', NULL, 'skillSelect,1,4,7,8,10,11,13,14|skillSelect,1,4,7,8,10,11,13,14|skillSelect,1,4,7,8,10,11,13,14'),
('Favored Enemy', 479, 'Beginning at 1st level, you have significant experience studying, tracking, hunting, and even talking to a certain type of enemy.

Choose a type of favored enemy: aberrations, beasts, celestials, constructs, dragons, elementals, fey, fiends, giants, monstrosities, oozes, plants, or undead. Alternatively, you can select two races of humanoid (such as gnolls and orcs) as favored enemies.

You have advantage on Wisdom (Survival) checks to track your favored enemies, as well as on Intelligence checks to recall information about them.

When you gain this feature, you also learn one language of your choice that is spoken by your favored enemies, if they speak one at all.

You choose one additional favored enemy, as well as an associated language, at 6th and 14th level. As you gain levels, your choices should reflect the types of monsters you have encountered on your adventures.', '', 1, ''),
('Favored Enemy', 484, 'You choose one additional favored enemy, as well as an associated language, at 6th and 14th level. As you gain levels, your choices should reflect the types of monsters you have encountered on your adventures.', '', 1, ''),
('Favored Enemy', 492, 'You choose one additional favored enemy, as well as an associated language, at 6th and 14th level. As you gain levels, your choices should reflect the types of monsters you have encountered on your adventures.', '', 1, ''),
('Aberrations', NULL, '', 'Favored Enemy', NULL, ''),
('Beasts', NULL, '', 'Favored Enemy', NULL, ''),
('Celestials', NULL, '', 'Favored Enemy', NULL, ''),
('Constructs', NULL, '', 'Favored Enemy', NULL, ''),
('Dragons', NULL, '', 'Favored Enemy', NULL, ''),
('Elementals', NULL, '', 'Favored Enemy', NULL, ''),
('Fey', NULL, '', 'Favored Enemy', NULL, ''),
('Fiends', NULL, '', 'Favored Enemy', NULL, ''),
('Giants', NULL, '', 'Favored Enemy', NULL, ''),
('Monstrosities', NULL, '', 'Favored Enemy', NULL, ''),
('Oozes', NULL, '', 'Favored Enemy', NULL, ''),
('Plants', NULL, '', 'Favored Enemy', NULL, ''),
('Undead', NULL, '', 'Favored Enemy', NULL, ''),
('Natural Explorer', 479, 'Also at 1st level, you are particularly familiar with one type of natural environment and are adept at traveling and surviving in such regions. Choose one type of favored terrain: arctic, coast, desert, forest, grassland, mountain, swamp, or the Underdark. When you make an Intelligence or Wisdom check related to your favored terrain, your proficiency bonus is doubled if you are using a skill that you’re proficient in.

While traveling for an hour or more in your favored terrain, you gain the following benefits:

Difficult terrain doesn’t slow your group’s travel.
Your group can’t become lost except by magical means.
Even when you are engaged in another activity while traveling (such as foraging, navigating, or tracking), you remain alert to danger.
If you are traveling alone, you can move stealthily at a normal pace.
When you forage, you find twice as much food as you normally would.
While tracking other creatures, you also learn their exact number, their sizes, and how long ago they passed through the area.
You choose additional favored terrain types at 6th and 10th level.', '', 1, ''),
('Natural Explorer', 484, 'You can choose an additional favored terrain type.', '', 1, ''),
('Natural Explorer', 488, 'You can choose an additional favored terrain type.', '', 1, ''),
('Arctic', NULL, '', 'Natural Explorer', NULL, ''),
('Coast', NULL, '', 'Natural Explorer', NULL, ''),
('Desert', NULL, '', 'Natural Explorer', NULL, ''),
('Forest', NULL, '', 'Natural Explorer', NULL, ''),
('Grassland', NULL, '', 'Natural Explorer', NULL, ''),
('Mountain', NULL, '', 'Natural Explorer', NULL, ''),
('Swamp', NULL, '', 'Natural Explorer', NULL, ''),
('Underdark', NULL, '', 'Natural Explorer', NULL, ''),
('Fighting Style - Ranger', 480, 'At 2nd level, you adopt a particular style of fighting as your specialty. Choose one of the following options. You can''t take a Fighting Style option more than once, even if you later get to choose again.', '', 1, ''),
('Archery', NULL, 'You gain a +2 bonus to attack rolls you make with ranged weapons.', 'Fighting Style - Ranger', NULL, 'archeryStyle'),
('Defense', NULL, 'While you are wearing armor, you gain a +1 bonus to AC.', 'Fighting Style - Ranger', NULL, 'defenseStyle'),
('Dueling', NULL, 'When you are wielding a melee weapon in one hand and no other weapons, you gain a +2 bonus to damage rolls with that weapon.', 'Fighting Style - Ranger', NULL, 'duelingStyle'),
('Two-Weapon Fighting', NULL, 'When you engage in two-weapon fighting, you can add your ability modifier to the damage of the second attack.', 'Fighting Style - Ranger', NULL, 'twoWeaponFightingStyle'),
('Primeval Awareness', 481, 'Beginning at 3rd level, you can use your action and expend one ranger spell slot to focus your awareness on the region around you. For 1 minute per level of the spell slot you expend, you can sense whether the following types of creatures are present within 1 mile of you (or within up to 6 miles if you are in your favored terrain): aberrations, celestials, dragons, elementals, fey, fiends, and undead. This feature doesn’t reveal the creatures’ location or number.', '', NULL, ''),
('Feat', 482, '', '', NULL, 'feat'),
('Feat', 486, '', '', NULL, 'feat'),
('Feat', 490, '', '', NULL, 'feat'),
('Feat', 494, '', '', NULL, 'feat'),
('Feat', 497, '', '', NULL, 'feat'),
('Extra Attack', 483, 'Beginning at 5th level, you can attack twice, instead of once, whenever you take the Attack action on your turn.', '', NULL, 'extraAttack,1'),
('Land''s Stride', 486, 'Starting at 8th level, moving through nonmagical difficult terrain costs you no extra movement. You can also pass through nonmagical plants without being slowed by them and without taking damage from them if they have thorns, spines, or a similar hazard.

In addition, you have advantage on saving throws against plants that are magically created or manipulated to impede movement, such as those created by the Entangle spell.', '', NULL, ''),
('Hide in Plain Sight', 488, 'Starting at 10th level, you can spend 1 minute creating camouflage for yourself. You must have access to fresh mud, dirt, plants, soot, and other naturally occurring materials with which to create your camouflage.

Once you are camouflaged in this way, you can try to hide by pressing yourself up against a solid surface, such as a tree or wall, that is at least as tall and wide as you are. You gain a +10 bonus to Dexterity (Stealth) checks as long as you remain there without moving or taking actions. Once you move or take an action or a reaction, you must camouflage yourself again to gain this benefit.', '', NULL, ''),
('Vanish', 492, 'Starting at 14th level, you can use the Hide action as a bonus action on your turn. Also, you can''t be tracked by nonmagical means, unless you choose to leave a trail.', '', NULL, ''),
('Feral Senses', 496, 'At 18th level, you gain preternatural senses that help you fight creatures you can''t see. When you attack a creature you can''t see, your inability to see it doesn''t impose disadvantage on your attack rolls against it.

You are also aware of the location of any invisible creature within 30 feet of you, provided that the creature isn''t hidden from you and you aren''t blinded or deafened.', '', NULL, ''),
('Foe Slayer', 498, 'At 20th level, you become an unparalleled hunter of your enemies. Once on each of your turns, you can add your Wisdom modifier to the attack roll or the damage roll of an attack you make against one of your favored enemies. You can choose to use this feature before or after the roll, but before any effects of the roll are applied.', '', NULL, ''),
('Ranger''s Companion', 481, 'At 3rd level, you gain a beast companion that accompanies you on your adventures and is trained to fight alongside you. Choose a beast that is no larger than Medium and that has a challenge rating of 1/4 or lower (appendix D presents statistics for the hawk, mastiff, and panther as examples). Add your proficiency bonus to the beast’s AC, attack rolls, and damage rolls, as well as to any saving throws and skills it is proficient in. Its hit point maximum equals its normal maximum or four times your ranger level, whichever is higher. Like any creature, the beast can spend Hit Dice during a short rest.

The beast obeys your commands as best as it can. It takes its turn on your initiative. On your turn, you can verbally command the beast where to move (no action required by you). You can use your action to verbally command it to take the Attack, Dash, Disengage, or Help action. If you don’t issue a command, the beast takes the Dodge action. Once you have the Extra Attack feature, you can make one weapon attack yourself when you command the beast to take the Attack action. While traveling through your favored terrain with only the beast, you can move stealthily at a normal pace.

If you are incapacitated or absent, the beast acts on its own, focusing on protecting you and itself. The beast never requires your command to use its reaction, such as when making an opportunity attack.

If the beast dies, you can obtain another one by spending 8 hours magically bonding with another beast that isn’t hostile to you, either the same type of beast as before or a different one.', '', NULL, ''),
('Exceptional Training', 485, 'Beginning at 7th level, on any of your turns when your beast companion doesn’t attack, you can use a bonus action to command the beast to take the Dash, Disengage, or Help action on its turn. In addition, the beast’s attacks now count as magical for the purpose of overcoming resistance and immunity to nonmagical attacks and damage.', '', NULL, ''),
('Bestial Fury', 489, 'Starting at 11th level, when you command your beast companion to take the Attack action, the beast can make two attacks, or it can take the Multiattack action if it has that action.', '', NULL, ''),
('Share Spells', 493, 'Beginning at 15th level, when you cast a spell targeting yourself, you can also affect your beast companion with the spell if the beast is within 30 feet of you.', '', NULL, ''),
('Favored Enemy', 502, 'You choose one additional favored enemy, as well as an associated language, at 6th and 14th level. As you gain levels, your choices should reflect the types of monsters you have encountered on your adventures.', '', 1, ''),
('Favored Enemy', 510, 'You choose one additional favored enemy, as well as an associated language, at 6th and 14th level. As you gain levels, your choices should reflect the types of monsters you have encountered on your adventures.', '', 1, ''),
('Natural Explorer', 502, 'You can choose an additional favored terrain type.', '', 1, ''),
('Natural Explorer', 506, 'You can choose an additional favored terrain type.', '', 1, ''),
('Primeval Awareness', 499, 'Beginning at 3rd level, you can use your action and expend one ranger spell slot to focus your awareness on the region around you. For 1 minute per level of the spell slot you expend, you can sense whether the following types of creatures are present within 1 mile of you (or within up to 6 miles if you are in your favored terrain): aberrations, celestials, dragons, elementals, fey, fiends, and undead. This feature doesn’t reveal the creatures’ location or number.', '', NULL, ''),
('Feat', 500, '', '', NULL, 'feat'),
('Feat', 504, '', '', NULL, 'feat'),
('Feat', 508, '', '', NULL, 'feat'),
('Feat', 512, '', '', NULL, 'feat'),
('Feat', 515, '', '', NULL, 'feat'),
('Extra Attack', 501, 'Beginning at 5th level, you can attack twice, instead of once, whenever you take the Attack action on your turn.', '', NULL, 'extraAttack,1'),
('Land''s Stride', 504, 'Starting at 8th level, moving through nonmagical difficult terrain costs you no extra movement. You can also pass through nonmagical plants without being slowed by them and without taking damage from them if they have thorns, spines, or a similar hazard.

In addition, you have advantage on saving throws against plants that are magically created or manipulated to impede movement, such as those created by the Entangle spell.', '', NULL, ''),
('Hide in Plain Sight', 506, 'Starting at 10th level, you can spend 1 minute creating camouflage for yourself. You must have access to fresh mud, dirt, plants, soot, and other naturally occurring materials with which to create your camouflage.

Once you are camouflaged in this way, you can try to hide by pressing yourself up against a solid surface, such as a tree or wall, that is at least as tall and wide as you are. You gain a +10 bonus to Dexterity (Stealth) checks as long as you remain there without moving or taking actions. Once you move or take an action or a reaction, you must camouflage yourself again to gain this benefit.', '', NULL, ''),
('Vanish', 510, 'Starting at 14th level, you can use the Hide action as a bonus action on your turn. Also, you can''t be tracked by nonmagical means, unless you choose to leave a trail.', '', NULL, ''),
('Feral Senses', 514, 'At 18th level, you gain preternatural senses that help you fight creatures you can''t see. When you attack a creature you can''t see, your inability to see it doesn''t impose disadvantage on your attack rolls against it.

You are also aware of the location of any invisible creature within 30 feet of you, provided that the creature isn''t hidden from you and you aren''t blinded or deafened.', '', NULL, ''),
('Foe Slayer', 516, 'At 20th level, you become an unparalleled hunter of your enemies. Once on each of your turns, you can add your Wisdom modifier to the attack roll or the damage roll of an attack you make against one of your favored enemies. You can choose to use this feature before or after the roll, but before any effects of the roll are applied.', '', NULL, ''),
('Gloom Stalker Magic', NULL, 'Starting at 3rd level, you learn an additional spell when you reach certain levels in this class. The spell counts as a ranger spell for you, but it doesn''t count against the number of ranger spells you know.', '', NULL, ''),
('Gloom Stalker Spells', 499, 'At 3rd level, you gain Disguise Self spell.', '', NULL, 'spell,99'),
('Gloom Stalker Spells', 501, 'At 5th level, you gain Rope Trick spell.', '', NULL, 'spell,283'),
('Gloom Stalker Spells', 505, 'At 9th level, you gain Fear spell.', '', NULL, 'spell,128'),
('Gloom Stalker Spells', 509, 'At 13th level, you gain Greater Invisibility spell.', '', NULL, 'spell,163'),
('Gloom Stalker Spells', 513, 'At 17rd level, you gain Seeming spell.', '', NULL, 'spell,290'),
('Dread Ambusher', 499, 'At 3rd level, you master the art of the ambush. You can give yourself a bonus to your initiative rolls equal to your Wisdom modifier.

At the start of your first turn of each combat, your walking speed increases by 10 feet, which lasts until the end of that turn. If you take the Attack action on that turn, you can make one additional weapon attack as part of that action. If that attack hits, the target takes an extra 1d8 damage of the weapon''s damage type.', '', NULL, 'dreadAmbusher'),
('Umbral Sight', 499, 'At 3rd level, you gain darkvision out to a range of 60 feet. If you already have darkvision from your race, its range increases by 30 feet.

You are also adept at evading creatures that rely on darkvision. While in darkness, you are invisible to any creature that relies on darkvision to see you in that darkness.', '', NULL, 'umbralSight'),
('Iron Mind', 503, 'By 7th level, you have honed your ability to resist the mind-altering powers of your prey. You gain proficiency in Wisdom saving throws. If you already have this proficiency, you instead gain proficiency in Intelligence or Charisma saving throws (your choice).', '', NULL, 'ironMind'),
('Stalker''s Flurry', 507, 'At 11th level, you learn to attack with such unexpected speed that you can turn a miss into another strike. Once on each of your turns when you miss with a weapon attack, you can make another weapon attack as part of the same action.', '', NULL, ''),
('Shadowy Dodge', 511, 'Starting at 15th level, you can dodge in unforeseen ways, with wisps of supernatural shadow around you. Whenever a creature makes an attack roll against you and doesn''t have advantage on the roll, you can use your reaction to impose disadvantage on it. You must use this feature before you know the outcome of the attack roll.', '', NULL, ''),
('Favored Enemy', 520, 'You choose one additional favored enemy, as well as an associated language, at 6th and 14th level. As you gain levels, your choices should reflect the types of monsters you have encountered on your adventures.', '', 1, ''),
('Favored Enemy', 528, 'You choose one additional favored enemy, as well as an associated language, at 6th and 14th level. As you gain levels, your choices should reflect the types of monsters you have encountered on your adventures.', '', 1, ''),
('Natural Explorer', 520, 'You can choose an additional favored terrain type.', '', 1, ''),
('Natural Explorer', 524, 'You can choose an additional favored terrain type.', '', 1, ''),
('Primeval Awareness', 517, 'Beginning at 3rd level, you can use your action and expend one ranger spell slot to focus your awareness on the region around you. For 1 minute per level of the spell slot you expend, you can sense whether the following types of creatures are present within 1 mile of you (or within up to 6 miles if you are in your favored terrain): aberrations, celestials, dragons, elementals, fey, fiends, and undead. This feature doesn’t reveal the creatures’ location or number.', '', NULL, ''),
('Feat', 518, '', '', NULL, 'feat'),
('Feat', 522, '', '', NULL, 'feat'),
('Feat', 526, '', '', NULL, 'feat'),
('Feat', 530, '', '', NULL, 'feat'),
('Feat', 533, '', '', NULL, 'feat'),
('Extra Attack', 519, 'Beginning at 5th level, you can attack twice, instead of once, whenever you take the Attack action on your turn.', '', NULL, 'extraAttack,1'),
('Land''s Stride', 522, 'Starting at 8th level, moving through nonmagical difficult terrain costs you no extra movement. You can also pass through nonmagical plants without being slowed by them and without taking damage from them if they have thorns, spines, or a similar hazard.

In addition, you have advantage on saving throws against plants that are magically created or manipulated to impede movement, such as those created by the Entangle spell.', '', NULL, ''),
('Hide in Plain Sight', 524, 'Starting at 10th level, you can spend 1 minute creating camouflage for yourself. You must have access to fresh mud, dirt, plants, soot, and other naturally occurring materials with which to create your camouflage.

Once you are camouflaged in this way, you can try to hide by pressing yourself up against a solid surface, such as a tree or wall, that is at least as tall and wide as you are. You gain a +10 bonus to Dexterity (Stealth) checks as long as you remain there without moving or taking actions. Once you move or take an action or a reaction, you must camouflage yourself again to gain this benefit.', '', NULL, ''),
('Vanish', 528, 'Starting at 14th level, you can use the Hide action as a bonus action on your turn. Also, you can''t be tracked by nonmagical means, unless you choose to leave a trail.', '', NULL, ''),
('Feral Senses', 532, 'At 18th level, you gain preternatural senses that help you fight creatures you can''t see. When you attack a creature you can''t see, your inability to see it doesn''t impose disadvantage on your attack rolls against it.

You are also aware of the location of any invisible creature within 30 feet of you, provided that the creature isn''t hidden from you and you aren''t blinded or deafened.', '', NULL, ''),
('Foe Slayer', 534, 'At 20th level, you become an unparalleled hunter of your enemies. Once on each of your turns, you can add your Wisdom modifier to the attack roll or the damage roll of an attack you make against one of your favored enemies. You can choose to use this feature before or after the roll, but before any effects of the roll are applied.', '', NULL, ''),
('Hunter''s Prey', 517, 'At 3rd level, you gain one of the following features of your choice.', '', 1, ''),
('Colossus Slayer', NULL, 'Your tenacity can wear down the most potent foes. When you hit a creature with a weapon attack, the creature takes an extra 1d8 damage if it’s below its hit point maximum. You can deal this extra damage only once per turn.', 'Hunter''s Prey', NULL, ''),
('Giant Killer', NULL, 'When a Large or larger creature within 5 feet of you hits or misses you with an attack, you can use your reaction to attack that creature immediately after its attack, provided that you can see the creature.', 'Hunter''s Prey', NULL, ''),
('Horde Breaker', NULL, 'Once on each of your turns when you make a weapon attack, you can make another attack with the same weapon against a different creature that is within 5 feet of the original target and within range of your weapon.', 'Hunter''s Prey', NULL, ''),
('Defensive Tactics', 521, 'At 7th level, you gain one of the following features of your choice.', '', 1, ''),
('Escape the Horde', NULL, 'Opportunity attacks against you are made with disadvantage.', 'Defensive Tactics', NULL, ''),
('Multiattack Defense', NULL, 'When a creature hits you with an attack, you gain a +4 bonus to AC against all subsequent attacks made by that creature for the rest of the turn.', 'Defensive Tactics', NULL, ''),
('Steel Will', NULL, 'You have advantage on saving throws against being frightened.', 'Defensive Tactics', NULL, ''),
('Multiattack', 525, 'At 11th level, you gain one of the following features of your choice.', '', 1, ''),
('Volley', NULL, 'You can use your action to make a ranged attack against any number of creatures within 10 feet of a point you can see within your weapon’s range. You must have ammunition for each target, as normal, and you make a separate attack roll for each target.', 'Multiattack', NULL, ''),
('Whirlwind Attack', NULL, 'You can use your action to make melee attacks against any number of creatures within 5 feet of you, with a separate attack roll for each target.', 'Multiattack', NULL, ''),
('Superior Hunter''s Defense', 529, 'At 15th level, you gain one of the following features of your choice.', '', 1, ''),
('Evasion', NULL, 'When you are subjected to an effect, such as a red dragon’s fiery breath or a lightning bolt spell, that allows you to make a Dexterity saving throw to take only half damage, you instead take no damage if you succeed on a saving throw, and only half damage if you fail.', 'Superior Hunter''s Defense', NULL, ''),
('Stand Against the Tide', NULL, 'When a hostile creature misses you with a melee attack, you can use your reaction to force that creature to repeat the same attack against another creature (other than itself) of your choice.', 'Superior Hunter''s Defense', NULL, ''),
('Uncanny Dodge', NULL, 'When an attacker that you can see hits you with an attack, you can use your reaction to halve the attack’s damage against you.', 'Superior Hunter''s Defense', NULL, ''),
('Saving Throw Proficiency (Dexterity, Intelligence)', 535, '', '', NULL, 'savingThrowProficiency,dex|savingThrowProficiency,int'),
('Armor Proficiency (Light)', 535, '', '', NULL, 'armorProficiency,light'),
('Rogue Weapon Proficiencies', 535, 'As a rogue, you have proficiency with all simple weapons, hand crossbows, longswords, rapiers and shortswords.', '', NULL, 'weaponProficiency,simple|weaponProficiency,multiple,23,27,29,35'),
('Skill Proficiency', 535, '', '', NULL, 'skillSelect,1,2,3,4,7,11,13,15,16,17,18|skillSelect,1,2,3,4,7,11,13,15,16,17,18|skillSelect,1,2,3,4,7,11,13,15,16,17,18|skillSelect,1,2,3,4,7,11,13,15,16,17,18'),
('Expertise', 535, 'At 1st level, choose two of your skill proficiencies, or one of your skill proficiencies and your proficiency with thieves'' tools. Your proficiency bonus is doubled for any ability check you make that uses either of the chosen proficiencies.

At 6th level, you can choose two more of your proficiencies (in skills or with thieves'' tools) to gain this benefit.', '', NULL, 'expertise|expertise'),
('Sneak Attack', 535, 'Beginning at 1st level, you know how to strike subtly and exploit a foe''s distraction. Once per turn, you can deal an extra 1d6 damage to one creature you hit with an attack if you have advantage on the attack roll. The attack must use a finesse or a ranged weapon.

You don''t need advantage on the attack roll if another enemy of the target is within 5 feet of it, that enemy isn''t incapacitated, and you don''t have disadvantage on the attack roll.

The amount of the extra damage increases by 1d6 for each 2 levels you gain in this class (2d6 at 3rd level, 3d6 at 5th level, and so on).', '', NULL, ''),
('Thieves'' Cant', 535, 'During your rogue training you learned thieves'' cant, a secret mix of dialect, jargon, and code that allows you to hide messages in seemingly normal conversation. Only another creature that knows thieves'' cant understands such messages. It takes four times longer to convey such a message than it does to speak the same idea plainly.

In addition, you understand a set of secret signs and symbols used to convey short, simple messages, such as whether an area is dangerous or the territory of a thieves'' guild, whether loot is nearby, or whether the people in an area are easy marks or will provide a safe house for thieves on the run.', '', NULL, ''),
('Cunning Action', 536, 'Starting at 2nd level, your quick thinking and agility allow you to move and act quickly. You can take a bonus action on each of your turns in combat. This action can be used only to take the Dash, Disengage, or Hide action.', '', NULL, ''),
('Feat', 538, '', '', NULL, 'feat'),
('Feat', 542, '', '', NULL, 'feat'),
('Feat', 544, '', '', NULL, 'feat'),
('Feat', 546, '', '', NULL, 'feat'),
('Feat', 550, '', '', NULL, 'feat'),
('Feat', 553, '', '', NULL, 'feat'),
('Expertise', 540, 'At 1st level, choose two of your skill proficiencies, or one of your skill proficiencies and your proficiency with thieves'' tools. Your proficiency bonus is doubled for any ability check you make that uses either of the chosen proficiencies.

At 6th level, you can choose two more of your proficiencies (in skills or with thieves'' tools) to gain this benefit.', '', NULL, 'expertise|expertise'),
('Uncanny Dodge', 539, 'Starting at 5th level, when an attacker that you can see hits you with an attack, you can use your reaction to halve the attack''s damage against you.', '', NULL, ''),
('Evasion', 541, 'Beginning at 7th level, you can nimbly dodge out of the way of certain area effects, such as a red dragon''s fiery breath or an Ice Storm spell. When you are subjected to an effect that allows you to make a Dexterity saving throw to take only half damage, you instead take no damage if you succeed on the saving throw, and only half damage if you fail.', '', NULL, ''),
('Reliable Talent', 545, 'By 11th level, you have refined your chosen skills until they approach perfection. Whenever you make an ability check that lets you add your proficiency bonus, you can treat a d20 roll of 9 or lower as a 10.', '', NULL, ''),
('Blindsense', 548, 'Starting at 14th level, if you are able to hear, you are aware of the location of any hidden or invisible creature within 10 feet of you.', '', NULL, ''),
('Slippery Mind', 549, 'By 15th level, you have acquired greater mental strength. You gain proficiency in Wisdom saving throws.', '', NULL, 'savingThrowProficiency,wis'),
('Elusive', 552, 'Beginning at 18th level, you are so evasive that attackers rarely gain the upper hand against you. No attack roll has advantage against you while you aren''t incapacitated.', '', NULL, ''),
('Stroke of Luck', 554, 'At 20th level, you have an uncanny knack for succeeding when you need to. If your attack misses a target within range, you can turn the miss into a hit. Alternatively, if you fail an ability check, you can treat the d20 roll as a 20.

Once you use this feature, you can''t use it again until you finish a short or long rest.', '', NULL, ''),
('Mage Hand Legerdemain', 537, 'Starting at 3rd level, when you cast Mage Hand, you can make the spectral hand invisible, and you can perform the following additional tasks with it:

- You can stow one object the hand is holding in a container worn or carried by another creature.
- You can retrieve an object in a container worn or carried by another creature.
- You can use thieves'' tools to pick locks and disarm traps at range.

You can perform one of these tasks without being noticed by a creature if you succeed on a Dexterity (Sleight of Hand) check contested by the creature''s Wisdom (Perception) check.

In addition, you can use the bonus action granted by your Cunning Action to control the hand.', '', NULL, ''),
('Magical Ambush', 543, 'Starting at 9th level, if you are hidden from a creature when you cast a spell on it, the creature has disadvantage on any saving throw it makes against the spell this turn.', '', NULL, ''),
('Versatile Trickster', 547, 'At 13th level, you gain the ability to distract targets with your Mage Hand. As a bonus action on your turn, you can designate a creature within 5 feet of the spectral hand created by the spell. Doing so gives you advantage on attack rolls against that creature until the end of the turn.', '', NULL, ''),
('Spell Thief', 551, 'At 17th level, you gain the ability to magically steal the knowledge of how to cast a spell from another spellcaster.

Immediately after a creature casts a spell that targets you or includes you in its area of effect, you can use your reaction to force the creature to make a saving throw with its spellcasting ability modifier. The DC equals your spell save DC. On a failed save, you negate the spell''s effect against you, and you steal the knowledge of the spell if it is at least 1st level and of a level you can cast (it doesn''t need to be a wizard spell). For the next 8 hours, you know the spell and can cast it using your spell slots. The creature can''t cast that spell until the 8 hours have passed.

Once you use this feature, you can''t use it again until you finish a long rest.', '', NULL, ''),
('Feat', 556, '', '', NULL, 'feat'),
('Feat', 560, '', '', NULL, 'feat'),
('Feat', 562, '', '', NULL, 'feat'),
('Feat', 564, '', '', NULL, 'feat'),
('Feat', 568, '', '', NULL, 'feat'),
('Feat', 571, '', '', NULL, 'feat'),
('Expertise', 558, 'At 1st level, choose two of your skill proficiencies, or one of your skill proficiencies and your proficiency with thieves'' tools. Your proficiency bonus is doubled for any ability check you make that uses either of the chosen proficiencies.

At 6th level, you can choose two more of your proficiencies (in skills or with thieves'' tools) to gain this benefit.', '', NULL, 'expertise|expertise'),
('Uncanny Dodge', 557, 'Starting at 5th level, when an attacker that you can see hits you with an attack, you can use your reaction to halve the attack''s damage against you.', '', NULL, ''),
('Evasion', 559, 'Beginning at 7th level, you can nimbly dodge out of the way of certain area effects, such as a red dragon''s fiery breath or an Ice Storm spell. When you are subjected to an effect that allows you to make a Dexterity saving throw to take only half damage, you instead take no damage if you succeed on the saving throw, and only half damage if you fail.', '', NULL, ''),
('Reliable Talent', 563, 'By 11th level, you have refined your chosen skills until they approach perfection. Whenever you make an ability check that lets you add your proficiency bonus, you can treat a d20 roll of 9 or lower as a 10.', '', NULL, ''),
('Blindsense', 566, 'Starting at 14th level, if you are able to hear, you are aware of the location of any hidden or invisible creature within 10 feet of you.', '', NULL, ''),
('Slippery Mind', 567, 'By 15th level, you have acquired greater mental strength. You gain proficiency in Wisdom saving throws.', '', NULL, 'savingThrowProficiency,wis'),
('Elusive', 570, 'Beginning at 18th level, you are so evasive that attackers rarely gain the upper hand against you. No attack roll has advantage against you while you aren''t incapacitated.', '', NULL, ''),
('Stroke of Luck', 572, 'At 20th level, you have an uncanny knack for succeeding when you need to. If your attack misses a target within range, you can turn the miss into a hit. Alternatively, if you fail an ability check, you can treat the d20 roll as a 20.

Once you use this feature, you can''t use it again until you finish a short or long rest.', '', NULL, ''),
('Bonus Proficiencies (Assassin)', 555, 'When you choose this archetype at 3rd level, you gain proficiency with the disguise kit and the poisoner''s kit.', '', NULL, ''),
('Assassinate', 555, 'Starting at 3rd level, you are at your deadliest when you get the drop on your enemies. You have advantage on attack rolls against any creature that hasn''t taken a turn in the combat yet. In addition, any hit you score against a creature that is surprised is a critical hit.', '', NULL, ''),
('Infiltration Expertise', 561, 'Starting at 9th level, you can unfailingly create false identities for yourself. You must spend seven days and 25 gp to establish the history, profession, and affiliations for an identity. You can''t establish an identity that belongs to someone else. For example, you might acquire appropriate clothing, letters of introduction, and official- looking certification to establish yourself as a member of a trading house from a remote city so you can insinuate yourself into the company of other wealthy merchants.

Thereafter, if you adopt the new identity as a disguise, other creatures believe you to be that person until given an obvious reason not to.', '', NULL, ''),
('Impostor', 565, 'At 13th level, you gain the ability to unerringly mimic another person''s speech, writing, and behavior. You must spend at least three hours studying these three components of the person''s behavior, listening to speech, examining handwriting, and observing mannerisms.

Your ruse is indiscernible to the casual observer. If a wary creature suspects something is amiss, you have advantage on any Charisma (Deception) check you make to avoid detection.', '', NULL, ''),
('Death Strike', 569, 'Starting at 17th level, you become a master of instant death. When you attack and hit a creature that is surprised, it must make a Constitution saving throw (DC 8 + your Dexterity modifier + your proficiency bonus). On a failed save, double the damage of your attack against the creature.', '', NULL, ''),
('Feat', 574, '', '', NULL, 'feat'),
('Feat', 578, '', '', NULL, 'feat'),
('Feat', 580, '', '', NULL, 'feat'),
('Feat', 582, '', '', NULL, 'feat'),
('Feat', 586, '', '', NULL, 'feat'),
('Feat', 589, '', '', NULL, 'feat'),
('Expertise', 576, 'At 1st level, choose two of your skill proficiencies, or one of your skill proficiencies and your proficiency with thieves'' tools. Your proficiency bonus is doubled for any ability check you make that uses either of the chosen proficiencies.

At 6th level, you can choose two more of your proficiencies (in skills or with thieves'' tools) to gain this benefit.', '', NULL, 'expertise|expertise'),
('Uncanny Dodge', 575, 'Starting at 5th level, when an attacker that you can see hits you with an attack, you can use your reaction to halve the attack''s damage against you.', '', NULL, ''),
('Evasion', 577, 'Beginning at 7th level, you can nimbly dodge out of the way of certain area effects, such as a red dragon''s fiery breath or an Ice Storm spell. When you are subjected to an effect that allows you to make a Dexterity saving throw to take only half damage, you instead take no damage if you succeed on the saving throw, and only half damage if you fail.', '', NULL, ''),
('Reliable Talent', 581, 'By 11th level, you have refined your chosen skills until they approach perfection. Whenever you make an ability check that lets you add your proficiency bonus, you can treat a d20 roll of 9 or lower as a 10.', '', NULL, ''),
('Blindsense', 584, 'Starting at 14th level, if you are able to hear, you are aware of the location of any hidden or invisible creature within 10 feet of you.', '', NULL, ''),
('Slippery Mind', 585, 'By 15th level, you have acquired greater mental strength. You gain proficiency in Wisdom saving throws.', '', NULL, 'savingThrowProficiency,wis'),
('Elusive', 588, 'Beginning at 18th level, you are so evasive that attackers rarely gain the upper hand against you. No attack roll has advantage against you while you aren''t incapacitated.', '', NULL, ''),
('Stroke of Luck', 590, 'At 20th level, you have an uncanny knack for succeeding when you need to. If your attack misses a target within range, you can turn the miss into a hit. Alternatively, if you fail an ability check, you can treat the d20 roll as a 20.

Once you use this feature, you can''t use it again until you finish a short or long rest.', '', NULL, ''),
('Fast Hands', 573, 'Starting at 3rd level, you can use the bonus action granted by your Cunning Action to make a Dexterity (Sleight of Hand) check, use your thieves'' tools to disarm a trap or open a lock, or take the Use an Object action.', '', NULL, ''),
('Second-Story Work', 573, 'When you choose this archetype at 3rd level, you gain the ability to climb faster than normal; climbing no longer costs you extra movement.

In addition, when you make a running jump, the distance you cover increases by a number of feet equal to your Dexterity modifier.', '', NULL, ''),
('Supreme Sneak', 579, 'Starting at 9th level, you have advantage on a Dexterity (Stealth) check if you move no more than half your speed on the same turn.', '', NULL, ''),
('Use Magic Device', 583, 'By 13th level, you have learned enough about the workings of magic that you can improvise the use of items even when they are not intended for you. You ignore all class, race, and level requirements on the use of magic items.', '', NULL, ''),
('Thief''s Reflexes', 587, 'When you reach 17th level, you have become adept at laying ambushes and quickly escaping danger. You can take two turns during the first round of any combat. You take your first turn at your normal initiative and your second turn at your initiative minus 10. You can''t use this feature when you are surprised.', '', NULL, ''),
('Saving Throw Proficiency (Constitution, Charisma)', 591, '', '', NULL, 'savingThrowProficiency,con|savingThrowProficiency,cha'),
('Sorcerer Weapon Proficiencies', 591, 'As a sorcerer, you have proficiency with daggers, darts, slings, quarterstaves and light crossbows.', '', NULL, 'weaponProficiency,multiple,2,8,12,13,15'),
('Skill Proficiency', 591, '', '', NULL, 'skillSelect,5,9,11,15,16,18|skillSelect,5,9,11,15,16,18'),
('Font of Magic', 592, 'At 2nd level, you tap into a deep wellspring of magic within yourself. This wellspring is represented by sorcery points, which allow you to create a variety of magical effects.', '', NULL, ''),
('Sorcery Points', 592, 'You have 2 sorcery points, and you gain one more with every sorcerer level. You can never have more sorcery points than your sorcerer level. You regain all spent sorcery points when you finish a long rest.', '', NULL, ''),
('Flexible Casting', 592, 'You can use your sorcery points to gain additional spell slots, or sacrifice spell slots to gain additional sorcery points. You learn other ways to use your sorcery points as you reach higher levels.

Creating Spell Slots - You can transform unexpended sorcery points into one spell slot as a bonus action on your turn. The cost is 2 sorcery points per 1st level slot, 3 points per 2nd level slot, 5 points per 3rd level slot, 6 points per 4th level slot and 7 points per 5th level slot. You can create spell slots no higher in level than 5th. Any spell slot you create with this feature vanishes when you finish a long rest.
Converting a Spell Slot to Sorcery Points - As a bonus action on your turn, you can expend one spell slot and gain a number of sorcery points equal to the slot''s level.', '', NULL, ''),
('Metamagic', 593, 'At 3rd level, you gain the ability to twist your spells to suit your needs. You gain two of the following Metamagic options of your choice. You gain another one at 10th and 17th level.

You can use only one Metamagic option on a spell when you cast it, unless otherwise noted.', '', NULL, ''),
('Metamagic Selection', 593, '', '', 2, ''),
('Metamagic Selection', 600, '', '', 1, ''),
('Metamagic Selection', 607, '', '', 1, ''),
('Careful Spell', NULL, 'When you cast a spell that forces other creatures to make a saving throw, you can protect some of those creatures from the spell''s full force. To do so, you spend 1 sorcery point and choose a number of those creatures up to your Charisma modifier (minimum of one creature). A chosen creature automatically succeeds on its saving throw against the spell.', 'Metamagic Selection', NULL, ''),
('Distant Spell', NULL, 'When you cast a spell that has a range of 5 feet or greater, you can spend 1 sorcery point to double the range of the spell.
When you cast a spell that has a range of touch, you can spend 1 sorcery point to make the range of the spell 30 feet.', 'Metamagic Selection', NULL, ''),
('Empowered Spell', NULL, 'When you roll damage for a spell, you can spend 1 sorcery point to reroll a number of the damage dice up to your Charisma modifier (minimum of one). You must use the new rolls.
You can use Empowered Spell even if you have already used a different Metamagic option during the casting of the spell.', 'Metamagic Selection', NULL, ''),
('Extended Spell', NULL, 'When you cast a spell that has a duration of 1 minute or longer, you can spend 1 sorcery point to double its duration, to a maximum duration of 24 hours.', 'Metamagic Selection', NULL, ''),
('Heightened Spell', NULL, 'When you cast a spell that forces a creature to make a saving throw to resist its effects, you can spend 3 sorcery points to give one target of the spell disadvantage on its first saving throw made against the spell.', 'Metamagic Selection', NULL, ''),
('Quickened Spell', NULL, 'When you cast a spell that has a casting time of 1 action, you can spend 2 sorcery points to change the casting time to 1 bonus action for this casting.', 'Metamagic Selection', NULL, ''),
('Subtle Spell', NULL, 'When you cast a spell, you can spend 1 sorcery point to cast it without any somatic or verbal components.', 'Metamagic Selection', NULL, ''),
('Twinned Spell', NULL, 'When you cast a spell that targets only one creature and doesn''t have a range of self, you can spend a number of sorcery points equal to the spell''s level to target a second creature in range with the same spell (1 sorcery point if the spell is a cantrip). To be eligible, a spell must be incapable of targeting more than one creature at the spell''s current level. For example, magic missile and scorching ray aren''t eligible, but ray of frost and chromatic orb are.', 'Metamagic Selection', NULL, ''),
('Feat', 594, '', '', NULL, 'feat'),
('Feat', 598, '', '', NULL, 'feat'),
('Feat', 602, '', '', NULL, 'feat'),
('Feat', 606, '', '', NULL, 'feat'),
('Feat', 609, '', '', NULL, 'feat'),
('Sorcerous Restoration', 610, 'At 20th level, you regain 4 expended sorcery points whenever you finish a short rest.', '', NULL, ''),
('Dragon Ancestor', 591, 'At 1st level, you choose one type of dragon as your ancestor. The damage type associated with each dragon is used by features you gain later.', '', NULL, ''),
('Draconic Resilience', 591, 'As magic flows through your body, it causes physical traits of your dragon ancestors to emerge. At 1st level, your hit point maximum increases by 1 and increases by 1 again whenever you gain a level in this class.

Additionally, parts of your skin are covered by a thin sheen of dragon-like scales. When you aren''t wearing armor, your AC equals 13 + your Dexterity modifier.', '', NULL, 'bonusHP,1|draconicResilience'),
('Elemental Affinity', 596, 'Starting at 6th level, when you cast a spell that deals damage of the type associated with your draconic ancestry, add your Charisma modifier to one damage roll of that spell. At the same time, you can spend 1 sorcery point to gain resistance to that damage type for 1 hour.', '', NULL, ''),
('Dragon Wings', 604, 'At 14th level, you gain the ability to sprout a pair of dragon wings from your back, gaining a flying speed equal to your current speed. You can create these wings as a bonus action on your turn. They last until you dismiss them as a bonus action on your turn.

You can''t manifest your wings while wearing armor unless the armor is made to accommodate them, and clothing not made to accommodate your wings might be destroyed when you manifest them.', '', NULL, ''),
('Draconic Presence', 608, 'Beginning at 18th level, you can channel the dread presence of your dragon ancestor, causing those around you to become awestruck or frightened. As an action, you can spend 5 sorcery points to draw on this power and exude an aura of awe or fear (your choice) to a distance of 60 feet. For 1 minute or until you lose your concentration (as if you were casting a concentration spell), each hostile creature that starts its turn in this aura must succeed on a Wisdom saving throw or be charmed (if you chose awe) or frightened (if you chose fear) until the aura ends. A creature that succeeds on this saving throw is immune to your aura for 24 hours.', '', NULL, ''),
('Saving Throw Proficiency (Constitution, Charisma)', 611, '', '', NULL, 'savingThrowProficiency,con|savingThrowProficiency,cha'),
('Sorcerer Weapon Proficiencies', 611, 'As a sorcerer, you have proficiency with daggers, darts, slings, quarterstaves and light crossbows.', '', NULL, 'weaponProficiency,multiple,2,8,12,13,15'),
('Skill Proficiency', 611, '', '', NULL, 'skillSelect,5,9,11,15,16,18|skillSelect,5,9,11,15,16,18'),
('Font of Magic', 612, 'At 2nd level, you tap into a deep wellspring of magic within yourself. This wellspring is represented by sorcery points, which allow you to create a variety of magical effects.', '', NULL, ''),
('Sorcery Points', 612, 'You have 2 sorcery points, and you gain one more with every subsequent level. You can never have more sorcery points than your sorcerer level. You regain all spent sorcery points when you finish a long rest.', '', NULL, ''),
('Flexible Casting', 612, 'You can use your sorcery points to gain additional spell slots, or sacrifice spell slots to gain additional sorcery points. You learn other ways to use your sorcery points as you reach higher levels.

Creating Spell Slots - You can transform unexpended sorcery points into one spell slot as a bonus action on your turn. The cost is 2 sorcery points per 1st level slot, 3 points per 2nd level slot, 5 points per 3rd level slot, 6 points per 4th level slot and 7 points per 5th level slot. You can create spell slots no higher in level than 5th. Any spell slot you create with this feature vanishes when you finish a long rest.
Converting a Spell Slot to Sorcery Points - As a bonus action on your turn, you can expend one spell slot and gain a number of sorcery points equal to the slot''s level.', '', NULL, ''),
('Metamagic', 613, 'At 3rd level, you gain the ability to twist your spells to suit your needs. You gain two of the following Metamagic options of your choice. You gain another one at 10th and 17th level.

You can use only one Metamagic option on a spell when you cast it, unless otherwise noted.', '', NULL, ''),
('Metamagic Selection', 613, '', '', 2, ''),
('Metamagic Selection', 620, '', '', 1, ''),
('Metamagic Selection', 627, '', '', 1, ''),
('Feat', 614, '', '', NULL, 'feat'),
('Feat', 618, '', '', NULL, 'feat'),
('Feat', 622, '', '', NULL, 'feat'),
('Feat', 626, '', '', NULL, 'feat'),
('Feat', 629, '', '', NULL, 'feat'),
('Sorcerous Restoration', 630, 'At 20th level, you regain 4 expended sorcery points whenever you finish a short rest.', '', NULL, ''),
('Wind Speaker', 611, 'The arcane magic you command is infused with elemental air. You can speak, read, and write Primordial. Knowing this language allows you to understand and be understood by those who speak its dialects: Aquan, Auran, Ignan, and Terran.', '', NULL, ''),
('Tempestuous Magic', 611, 'Starting at 1st level, you can use a bonus action on your turn to cause whirling gusts of elemental air to briefly surround you, immediately before or after you cast a spell of 1st level or higher. Doing so allows you to fly up to 10 feet without provoking opportunity attacks.', '', NULL, ''),
('Heart of the Storm', 616, 'At 6th level, you gain resistance to lightning and thunder damage. In addition, whenever you start casting a spell of 1st level or higher that deals lightning or thunder damage, stormy magic erupts from you. This eruption causes creatures of your choice that you can see within 10 feet of you to take lightning or thunder damage (choose each time this ability activates) equal to half your sorcerer level.', '', NULL, 'damageResistance,lightning|damageResistance,thunder'),
('Storm Guide', 616, 'At 6th level, you gain the ability to subtly control the weather around you.

If it is raining, you can use an action to cause the rain to stop falling in a 20-foot-radius sphere centered on you. You can end this effect as a bonus action.

If it is windy, you can use a bonus action each round to choose the direction that the wind blows in a 100-foot-radius sphere centered on you. The wind blows in that direction until the end of your next turn. This feature doesn''t alter the speed of the wind.', '', NULL, ''),
('Storm''s Fury', 624, 'Starting at 14th level, when you are hit by a melee attack, you can use your reaction to deal lightning damage to the attacker. The damage equals your sorcerer level. The attacker must also make a Strength saving throw against your sorcerer spell save DC. On a failed save, the attacker is pushed in a straight line up to 20 feet away from you.', '', NULL, ''),
('Wind Soul', 628, 'At 18th level, you gain immunity to lightning and thunder damage.

You also gain a magical flying speed of 60 feet. As an action, you can reduce your flying speed to 30 feet for 1 hour and choose a number of creatures within 30 feet of you equal to 3 + your Charisma modifier. The chosen creatures gain a magical flying speed of 30 feet for 1 hour. Once you reduce your flying speed in this way, you can''t do so again until you finish a short or long rest.', '', NULL, ''),
('Saving Throw Proficiency (Constitution, Charisma)', 631, '', '', NULL, 'savingThrowProficiency,con|savingThrowProficiency,cha'),
('Sorcerer Weapon Proficiencies', 631, 'As a sorcerer, you have proficiency with daggers, darts, slings, quarterstaves and light crossbows.', '', NULL, 'weaponProficiency,multiple,2,8,12,13,15'),
('Skill Proficiency', 631, '', '', NULL, 'skillSelect,5,9,11,15,16,18|skillSelect,5,9,11,15,16,18'),
('Font of Magic', 632, 'At 2nd level, you tap into a deep wellspring of magic within yourself. This wellspring is represented by sorcery points, which allow you to create a variety of magical effects.', '', NULL, ''),
('Sorcery Points', 632, 'You have 2 sorcery points, and you gain one more with every subsequent level. You can never have more sorcery points than your sorcerer level. You regain all spent sorcery points when you finish a long rest.', '', NULL, ''),
('Flexible Casting', 632, 'You can use your sorcery points to gain additional spell slots, or sacrifice spell slots to gain additional sorcery points. You learn other ways to use your sorcery points as you reach higher levels.

Creating Spell Slots - You can transform unexpended sorcery points into one spell slot as a bonus action on your turn. The cost is 2 sorcery points per 1st level slot, 3 points per 2nd level slot, 5 points per 3rd level slot, 6 points per 4th level slot and 7 points per 5th level slot. You can create spell slots no higher in level than 5th. Any spell slot you create with this feature vanishes when you finish a long rest.
Converting a Spell Slot to Sorcery Points - As a bonus action on your turn, you can expend one spell slot and gain a number of sorcery points equal to the slot''s level.', '', NULL, ''),
('Metamagic', 633, 'At 3rd level, you gain the ability to twist your spells to suit your needs. You gain two of the following Metamagic options of your choice. You gain another one at 10th and 17th level.

You can use only one Metamagic option on a spell when you cast it, unless otherwise noted.', '', NULL, ''),
('Metamagic Selection', 633, '', '', 2, ''),
('Metamagic Selection', 640, '', '', 1, ''),
('Metamagic Selection', 647, '', '', 1, ''),
('Feat', 634, '', '', NULL, 'feat'),
('Feat', 638, '', '', NULL, 'feat'),
('Feat', 642, '', '', NULL, 'feat'),
('Feat', 646, '', '', NULL, 'feat'),
('Feat', 649, '', '', NULL, 'feat'),
('Sorcerous Restoration', 650, 'At 20th level, you regain 4 expended sorcery points whenever you finish a short rest.', '', NULL, '');
	insert into dbo.[ClassFeatures] ([Name], [ClassLevelId], [Description], [ParentFeatureName], [SubfeatureSelections], [Tags])
	values ('Wild Magic Surge', 631, 'Starting when you choose this origin at 1st level, your spellcasting can unleash surges of untamed magic. Once per turn, the DM can have you roll a d20 immediately after you cast a sorcerer spell of 1st level or higher. If you roll a 1, roll on the Wild Magic Surge table to create a magical effect. If that effect is a spell, it is too wild to be affected by your Metamagic, and if it normally requires concentration, it doesn''t require concentration in this case; the spell lasts for its full duration.

01-02 	Roll on this table at the start of each of your turns for the next minute, ignoring this result on subsequent rolls.
03-04 	For the next minute, you can see any invisible creature if you have line of sight to it.
05-06 	A modron chosen and controlled by the DM appears in an unoccupied space within 5 feet of you, then disappears I minute later.
07-08 	You cast Fireball as a 3rd-level spell centered on yourself.
09-10 	You cast Magic Missile as a 5th-level spell.
11-12 	Roll a d10. Your height changes by a number of inches equal to the roll. If the roll is odd, you shrink. If the roll is even, you grow.
13-14 	You cast Confusion centered on yourself.
15-16 	For the next minute, you regain 5 hit points at the start of each of your turns.
17-18 	You grow a long beard made of feathers that remains until you sneeze, at which point the feathers explode out from your face.
19-20 	You cast Grease centered on yourself.
21-22 	Creatures have disadvantage on saving throws against the next spell you cast in the next minute that involves a saving throw.
23-24 	Your skin turns a vibrant shade of blue. A Remove Curse spell can end this effect.
25-26 	An eye appears on your forehead for the next minute. During that time, you have advantage on Wisdom (Perception) checks that rely on sight.
27-28 	For the next minute, all your spells with a casting time of 1 action have a casting time of 1 bonus action.
29-30 	You teleport up to 60 feet to an unoccupied space of your choice that you can see.
31-32 	You are transported to the Astral Plane until the end of your next turn, after which time you return to the space you previously occupied or the nearest unoccupied space if that space is occupied.
33-34 	Maximize the damage of the next damaging spell you cast within the next minute.
35-36 	Roll a d10. Your age changes by a number of years equal to the roll. If the roll is odd, you get younger (minimum 1 year old). If the roll is even, you get older.
37-38 	1d6 flumphs controlled by the DM appear in unoccupied spaces within 60 feet of you and are frightened of you. They vanish after 1 minute.
39-40 	You regain 2d10 hit points.
41-42 	You turn into a potted plant until the start of your next turn. While a plant, you are incapacitated and have vulnerability to all damage. If you drop to 0 hit points, your pot breaks, and your form reverts.
43-44 	For the next minute, you can teleport up to 20 feet as a bonus action on each of your turns.
45-46 	You cast Levitate on yourself.
47-48 	A unicorn controlled by the DM appears in a space within 5 feet of you, then disappears 1 minute later.
49-50 	You can''t speak for the next minute. Whenever you try, pink bubbles float out of your mouth.
51-52 	A spectral shield hovers near you for the next minute, granting you a +2 bonus to AC and immunity to Magic Missile.
53-54 	You are immune to being intoxicated by alcohol for the next 5d6 days.
55-56 	Your hair falls out but grows back within 24 hours.
57-58 	For the next minute, any flammable object you touch that isn''t being worn or carried by another creature bursts into flame.
59-60 	You regain your lowest-level expended spell slot.
61-62 	For the next minute, you must shout when you speak.
63-64 	You cast Fog Cloud centered on yourself.
65-66 	Up to three creatures you choose within 30 feet of you take 4d10 lightning damage.
67-68 	You are frightened by the nearest creature until the end of your next turn.
69-70 	Each creature within 30 feet of you becomes invisible for the next minute. The invisibility ends on a creature when it attacks or casts a spell.
71-72 	You gain resistance to all damage for the next minute.
73-74 	A random creature within 60 feet of you becomes poisoned for 1d4 hours.
75-76 	You glow with bright light in a 30-foot radius for the next minute. Any creature that ends its turn within 5 feet of you is blinded until the end of its next turn.
77-78 	You cast Polymorph on yourself. If you fail the saving throw, you turn into a sheep for the spell''s duration.
79-80 	Illusory butterflies and flower petals flutter in the air within 10 feet of you for the next minute.
81-82 	You can take one additional action immediately.
83-84 	Each creature within 30 feet of you takes 1d10 necrotic damage. You regain hit points equal to the sum of the necrotic damage dealt.
85-86 	You cast Mirror Image.
87-88 	You cast Fly on a random creature within 60 feet of you.
89-90 	You become invisible for the next minute. During that time, other creatures can''t hear you. The invisibility ends if you attack or cast a spell.
91-92 	If you die within the next minute, you immediately come back to life as if by the Reincarnate spell.
93-94 	Your size increases by one size category for the next minute.
95-96 	You and all creatures within 30 feet of you gain vulnerability to piercing damage for the next minute.
97-98 	You are surrounded by faint, ethereal music for the next minute.
99-00 	You regain all expended sorcery points.', '', NULL, ''),
('Tides of Chaos', 636, 'Starting at 1st level, you can manipulate the forces of chance and chaos to gain advantage on one attack roll, ability check, or saving throw. Once you do so, you must finish a long rest before you can use this feature again.

Any time before you regain the use of this feature, the DM can have you roll on the Wild Magic Surge table immediately after you cast a sorcerer spell of 1st level or higher. You then regain the use of this feature.', '', NULL, ''),
('Bend Luck', 636, 'Starting at 6th level, you have the ability to twist fate using your wild magic. When another creature you can see makes an attack roll, an ability check, or a saving throw, you can use your reaction and spend 2 sorcery points to roll 1d4 and apply the number rolled as a bonus or penalty (your choice) to the creature''s roll. You can do so after the creature rolls but before any effects of the roll occur.', '', NULL, ''),
('Controlled Chaos', 644, 'At 14th level, you gain a modicum of control over the surges of your wild magic. Whenever you roll on the Wild Magic Surge table, you can roll twice and use either number.', '', NULL, ''),
('Spell Bombardment', 648, 'Beginning at 18th level, the harmful energy of your spells intensifies. When you roll damage for a spell and roll the highest number possible on any of the dice, choose one of those dice, roll it again and add that roll to the damage. You can use the feature only once per turn.', '', NULL, ''),
('Saving Throw Proficiency (Wisdom, Charisma)', 651, '', '', NULL, 'savingThrowProficiency,wis|savingThrowProficiency,cha'),
('Armor Proficiency (Light)', 651, '', '', NULL, 'armorProficiency,light'),
('Weapon Proficiency (Simple)', 651, 'As a warlock, you have proficiency with all simple weapons.', '', NULL, 'weaponProficiency,simple'),
('Skill Proficiency', 651, '', '', NULL, 'skillSelect,5,6,7,8,9,15,16|skillSelect,5,6,7,8,9,15,16'),
('Pact Magic', 651, 'Your arcane research and the magic bestowed on you by your patron have given you facility with spells.

At 1st level, you have 1 spell slot of 1st level. The number and level of your spell slots increases as you gain warlock levels. To cast one of your warlock spells of 1st level or higher, you must expend a spell slot. You regain all expended spell slots when you finish a short or long rest.', '', NULL, ''),
('Additional Spell Slot', 652, 'You gain an additional warlock spell slot.', '', NULL, ''),
('Additional Spell Slot', 661, 'You gain an additional warlock spell slot.', '', NULL, ''),
('Additional Spell Slot', 667, 'You gain an additional warlock spell slot.', '', NULL, ''),
('Spell Slot Level Increase', 653, 'Your warlock spell slots upgrade to 2nd level.', '', NULL, ''),
('Spell Slot Level Increase', 655, 'Your warlock spell slots upgrade to 3rd level.', '', NULL, ''),
('Spell Slot Level Increase', 657, 'Your warlock spell slots upgrade to 4th level.', '', NULL, ''),
('Spell Slot Level Increase', 659, 'Your warlock spell slots upgrade to 5th level.', '', NULL, ''),
('Eldritch Invocations', 652, 'In your study of occult lore, you have unearthed Eldritch Invocations, fragments of forbidden knowledge that imbue you with an abiding magical ability.

At 2nd level, you gain two eldritch invocations of your choice. When you reach 5th, 7th, 9th, 12th, 15th and 18th warlock level, you gain additional invocations of your choice. A level prerequisite refers to your level in this class.

Additionally, when you gain a level in this class, you can choose one of the invocations you know and replace it with another invocation that you could learn at that level.', '', NULL, ''),
('Eldritch Invocation Selection', 652, '', '', 2, ''),
('Eldritch Invocation Selection', 655, '', '', 1, ''),
('Eldritch Invocation Selection', 657, '', '', 1, ''),
('Eldritch Invocation Selection', 659, '', '', 1, ''),
('Eldritch Invocation Selection', 662, '', '', 1, ''),
('Eldritch Invocation Selection', 665, '', '', 1, ''),
('Eldritch Invocation Selection', 668, '', '', 1, ''),
('Pact Boon', 653, 'At 3rd level, your otherworldly patron bestows a gift upon you for your loyal service. You gain one of the following features of your choice.

Pact of the Blade:
- You can use your action to create a pact weapon in your empty hand. You can choose the form that this melee weapon takes each time you create it. You are proficient with it while you wield it. This weapon counts as magical for the purpose of overcoming resistance and immunity to nonmagical attacks and damage.
- Your pact weapon disappears if it is more than 5 feet away from you for 1 minute or more. It also disappears if you use this feature again, if you dismiss the weapon (no action required), or if you die.
- You can transform one magic weapon into your pact weapon by performing a special ritual while you hold the weapon. You perform the ritual over the course of 1 hour, which can be done during a short rest.
- You can then dismiss the weapon, shunting it into an extradimensional space, and it appears whenever you create your pact weapon thereafter. You can''t affect an artifact or a sentient weapon in this way. The weapon ceases being your pact weapon if you die, if you perform the 1-hour ritual on a different weapon, or if you use a 1-hour ritual to break your bond to it. The weapon appears at your feet if it is in the extradimensional space when the bond breaks.

Pact of the Chain:
- You learn the find familiar spell and can cast it as a ritual. The spell doesn''t count against your number of spells known.
- When you cast the spell, you can choose one of the normal forms for your familiar or one of the following special forms: imp, pseudodragon, quasit, or sprite.
- Additionally, when you take the Attack action, you can forgo one of your own attacks to allow your familiar to make one attack with its reaction.

Pact of the Tome:
- Your patron gives you a grimoire called a Book of Shadows. When you gain this feature, choose three cantrips from any class''s spell list (the three needn''t be from the same list). While the book is on your person, you can cast those cantrips at will. They don''t count against your number of cantrips known. If they don''t appear on the warlock spell list, they are nonetheless warlock spells for you.
- If you lose your Book of Shadows, you can perform a 1-hour ceremony to receive a replacement from your patron. This ceremony can be performed during a short or long rest, and it destroys the previous book. The book turns to ash when you die.', '', 1, ''),
('Pact of the Blade', NULL, 'You can use your action to create a pact weapon in your empty hand. You can choose the form that this melee weapon takes each time you create it. You are proficient with it while you wield it. This weapon counts as magical for the purpose of overcoming resistance and immunity to nonmagical attacks and damage.
Your pact weapon disappears if it is more than 5 feet away from you for 1 minute or more. It also disappears if you use this feature again, if you dismiss the weapon (no action required), or if you die.
You can transform one magic weapon into your pact weapon by performing a special ritual while you hold the weapon. You perform the ritual over the course of 1 hour, which can be done during a short rest.
You can then dismiss the weapon, shunting it into an extradimensional space, and it appears whenever you create your pact weapon thereafter. You can''t affect an artifact or a sentient weapon in this way. The weapon ceases being your pact weapon if you die, if you perform the 1-hour ritual on a different weapon, or if you use a 1-hour ritual to break your bond to it. The weapon appears at your feet if it is in the extradimensional space when the bond breaks.', 'Pact Boon', NULL, ''),
('Pact of the Chain', NULL, 'You learn the find familiar spell and can cast it as a ritual. The spell doesn''t count against your number of spells known.
When you cast the spell, you can choose one of the normal forms for your familiar or one of the following special forms: imp, pseudodragon, quasit, or sprite.
Additionally, when you take the Attack action, you can forgo one of your own attacks to allow your familiar to make one attack with its reaction.', 'Pact Boon', NULL, 'spell,132'),
('Pact of the Tome', NULL, 'Your patron gives you a grimoire called a Book of Shadows. When you gain this feature, choose three cantrips from any class''s spell list (the three needn''t be from the same list). While the book is on your person, you can cast those cantrips at will. They don''t count against your number of cantrips known. If they don''t appear on the warlock spell list, they are nonetheless warlock spells for you.
If you lose your Book of Shadows, you can perform a 1-hour ceremony to receive a replacement from your patron. This ceremony can be performed during a short or long rest, and it destroys the previous book. The book turns to ash when you die.', 'Pact Boon', NULL, 'spellSelectAny,0|spellSelectAny,0|spellSelectAny,0'),
('Feat', 654, '', '', NULL, 'feat'),
('Feat', 658, '', '', NULL, 'feat'),
('Feat', 662, '', '', NULL, 'feat'),
('Feat', 666, '', '', NULL, 'feat'),
('Feat', 669, '', '', NULL, 'feat'),
('Mystic Arcanum', 661, 'At 11th level, your patron bestows upon you a magical secret called an arcanum. Choose one 6th-level spell from the warlock spell list as this arcanum.

You can cast your arcanum spell once without expending a spell slot. You must finish a long rest before you can do so again.

At higher levels, you gain more warlock spells of your choice that can be cast in this way: one 7th-level spell at 13th level, one 8th-level spell at 15th level, and one 9th-level spell at 17th level. You regain all uses of your Mystic Arcanum when you finish a long rest.', '', NULL, 'spellSelect,war,6'),
('Mystic Arcanum', 663, '', '', NULL, 'spellSelect,war,7'),
('Mystic Arcanum', 665, '', '', NULL, 'spellSelect,war,8'),
('Mystic Arcanum', 667, '', '', NULL, 'spellSelect,war,9'),
('Eldritch Master', 670, 'At 20th level, you can draw on your inner reserve of mystical power while entreating your patron to regain expended spell slots. You can spend 1 minute entreating your patron for aid to regain all your expended spell slots from your Pact Magic feature. Once you regain spell slots with this feature, you must finish a long rest before you can do so again.', '', NULL, ''),
('Expanded Spell List', 651, 'The Archfey lets you choose from an expanded list of spells when you learn a warlock spell. You add Faerie Fire and Sleep to the warlock spell list.', '', NULL, 'expandedSpellList,126,302'),
('Expanded Spell List', 653, 'The Archfey lets you choose from an expanded list of spells when you learn a warlock spell. You add Calm Emotions and Phantasmal Force to the warlock spell list.', '', NULL, 'expandedSpellList,43,248'),
('Expanded Spell List', 655, 'The Archfey lets you choose from an expanded list of spells when you learn a warlock spell. You add Blink and Plant Growth to the warlock spell list.', '', NULL, 'expandedSpellList,38,254'),
('Expanded Spell List', 657, 'The Archfey lets you choose from an expanded list of spells when you learn a warlock spell. You add Dominate Beast and Greater Invisibility to the warlock spell list.', '', NULL, 'expandedSpellList,107,163'),
('Expanded Spell List', 659, 'The Archfey lets you choose from an expanded list of spells when you learn a warlock spell. You add Dominate Person and Seeming to the warlock spell list.', '', NULL, 'expandedSpellList,109,290'),
('Fey Presence', 651, 'Starting at 1st level, your patron bestows upon you the ability to project the beguiling and fearsome presence of the fey. As an action, you can cause each creature in a 10-foot cube originating from you to make a Wisdom saving throw against your warlock spell save DC. The creatures that fail their saving throws are all charmed or frightened by you (your choice) until the end of your next turn.

Once you use this feature, you can''t use it again until you finish a short or long rest.', '', NULL, ''),
('Misty Escape', 656, 'Starting at 6th level, you can vanish in a puff of mist in response to harm. When you take damage, you can use your reaction to turn invisible and teleport up to 60 feet to an unoccupied space you can see. You remain invisible until the start of your next turn or until you attack or cast a spell.

Once you use this feature, you can''t use it again until you finish a short or long rest.', '', NULL, ''),
('Beguiling Defenses', 660, 'Beginning at 10th level, your patron teaches you how to turn the mind-affecting magic of your enemies against them. You are immune to being charmed, and when another creature attempts to charm you, you can use your reaction to attempt to turn the charm back on that creature. The creature must succeed on a Wisdom saving throw against your warlock spell save DC or be charmed by you for 1 minute or until the creature takes any damage.', '', NULL, ''),
('Dark Delirium', 664, 'Starting at 14th level, you can plunge a creature into an illusory realm. As an action, choose a creature that you can see within 60 feet of you. It must make a Wisdom saving throw against your warlock spell save DC. On a failed save, it is charmed or frightened by you (your choice) for 1 minute or until your concentration is broken (as if you are concentrating on a spell). This effect ends early if the creature takes any damage.

Until this illusion ends, the creature thinks it is lost in a misty realm, the appearance of which you choose. The creature can see and hear only itself, you, and the illusion.

You must finish a short or long rest before you can use this feature again.', '', NULL, ''),
('Saving Throw Proficiency (Wisdom, Charisma)', 671, '', '', NULL, 'savingThrowProficiency,wis|savingThrowProficiency,cha'),
('Armor Proficiency (Light)', 671, '', '', NULL, 'armorProficiency,light'),
('Weapon Proficiency (Simple)', 671, 'As a warlock, you have proficiency with all simple weapons.', '', NULL, 'weaponProficiency,simple'),
('Skill Proficiency', 671, '', '', NULL, 'skillSelect,5,6,7,8,9,15,16|skillSelect,5,6,7,8,9,15,16'),
('Pact Magic', 671, 'Your arcane research and the magic bestowed on you by your patron have given you facility with spells.

At 1st level, you have 1 spell slot of 1st level. The number and level of your spell slots increases as you gain warlock levels. To cast one of your warlock spells of 1st level or higher, you must expend a spell slot. You regain all expended spell slots when you finish a short or long rest.', '', NULL, ''),
('Additional Spell Slot', 672, 'You gain an additional warlock spell slot.', '', NULL, ''),
('Additional Spell Slot', 681, 'You gain an additional warlock spell slot.', '', NULL, ''),
('Additional Spell Slot', 687, 'You gain an additional warlock spell slot.', '', NULL, ''),
('Spell Slot Level Increase', 673, 'Your warlock spell slots upgrade to 2nd level.', '', NULL, ''),
('Spell Slot Level Increase', 675, 'Your warlock spell slots upgrade to 3rd level.', '', NULL, ''),
('Spell Slot Level Increase', 677, 'Your warlock spell slots upgrade to 4th level.', '', NULL, ''),
('Spell Slot Level Increase', 679, 'Your warlock spell slots upgrade to 5th level.', '', NULL, ''),
('Eldritch Invocations', 672, 'In your study of occult lore, you have unearthed Eldritch Invocations, fragments of forbidden knowledge that imbue you with an abiding magical ability.

At 2nd level, you gain two eldritch invocations of your choice. When you reach 5th, 7th, 9th, 12th, 15th and 18th warlock level, you gain additional invocations of your choice. A level prerequisite refers to your level in this class.

Additionally, when you gain a level in this class, you can choose one of the invocations you know and replace it with another invocation that you could learn at that level.', '', NULL, ''),
('Eldritch Invocation Selection', 672, '', '', 2, ''),
('Eldritch Invocation Selection', 675, '', '', 1, ''),
('Eldritch Invocation Selection', 677, '', '', 1, ''),
('Eldritch Invocation Selection', 679, '', '', 1, ''),
('Eldritch Invocation Selection', 682, '', '', 1, ''),
('Eldritch Invocation Selection', 685, '', '', 1, ''),
('Eldritch Invocation Selection', 688, '', '', 1, ''),
('Agonizing Blast', NULL, 'When you cast eldritch blast, add your Charisma modifier to the damage it deals on a hit.', 'Eldritch Invocation Selection', NULL, 'invocationRequirement,spell,114'),
('Armor of Shadows', NULL, 'You can cast mage armor on yourself at will, without expending a spell slot or material components.', 'Eldritch Invocation Selection', NULL, ''),
('Ascendant Step', NULL, 'You can cast levitate on yourself at will, without expending a spell slot or material components.', 'Eldritch Invocation Selection', NULL, 'invocationRequirement,level,9'),
('Beast Speech', NULL, 'You can cast speak with animals at will, without expending a spell slot.', 'Eldritch Invocation Selection', NULL, ''),
('Beguiling Influence', NULL, 'You gain proficiency in the Deception and Persuasion skills.', 'Eldritch Invocation Selection', NULL, ''),
('Bewitching Whispers', NULL, 'You can cast compulsion once using a warlock spell slot. You can''t do so again until you finish a long rest.', 'Eldritch Invocation Selection', NULL, 'invocationRequirement,level,7'),
('Book of Ancient Secrets', NULL, 'You can now inscribe magical rituals in your Book of Shadows. Choose two 1st-level spells that have the ritual tag from any class''s spell list (the two needn''t be from the same list). The spells appear in the book and don''t count against the number of spells you know. With your Book of Shadows in hand, you can cast the chosen spells as rituals. You can''t cast the spells except as rituals, unless you''ve learned them by some other means. You can also cast a warlock spell you know as a ritual if it has the ritual tag.

On your adventures, you can add other ritual spells to your Book of Shadows. When you find such a spell, you can add it to the book if the spell''s level is equal to or less than half your warlock level (rounded up) and if you can spare the time to transcribe the spell. For each level of the spell, the transcription process takes 2 hours and costs 50 gp for the rare inks needed to inscribe it.', 'Eldritch Invocation Selection', NULL, 'invocationRequirement,pact,tome'),
('Chains of Carceri', NULL, 'You can cast hold monster at will – targeting a celestial, fiend, or elemental – without expending a spell slot or material components. You must finish a long rest before you can use this invocation on the same creature again.', 'Eldritch Invocation Selection', NULL, 'invocationRequirement,level,15|invocationRequirement,pact,chain'),
('Devil''s Sight', NULL, 'You can see normally in darkness, both magical and nonmagical, to a distance of 120 feet.', 'Eldritch Invocation Selection', NULL, ''),
('Dreadful Word', NULL, 'You can cast confusion once using a warlock spell slot. You can''t do so again until you finish a long rest.', 'Eldritch Invocation Selection', NULL, 'invocationRequirement,level,7'),
('Eldritch Sight', NULL, 'You can cast detect magic at will, without expending a spell slot or material components.', 'Eldritch Invocation Selection', NULL, ''),
('Eldritch Spear', NULL, 'When you cast eldritch blast, its range is 300 feet.', 'Eldritch Invocation Selection', NULL, 'invocationRequirement,spell,114'),
('Eyes of the Rune Keeper', NULL, 'You can read all writing.', 'Eldritch Invocation Selection', NULL, ''),
('Fiendish Vigor', NULL, 'You can cast false life on yourself at will as a 1st-level spell, without expending a spell slot or material components.', 'Eldritch Invocation Selection', NULL, ''),
('Gaze of Two Minds', NULL, 'You can use your action to touch a willing humanoid and perceive through its senses until the end of your next turn. As long as the creature is on the same plane of existence as you, you can use your action on subsequent turns to maintain this connection, extending the duration until the end of your next turn. While perceiving through the other creature''s senses, you benefit from any special senses possessed by that creature, and you are blinded and deafened to your own surroundings.', 'Eldritch Invocation Selection', NULL, ''),
('Lifedrinker', NULL, 'When you hit a creature with your pact weapon, the creature takes extra necrotic damage equal to your Charisma modifier (minimum 1).', 'Eldritch Invocation Selection', NULL, 'invocationRequirement,level,12|invocationRequirement,pact,blade'),
('Mask of Many Faces', NULL, 'You can cast disguise self at will, without expending a spell slot.', 'Eldritch Invocation Selection', NULL, ''),
('Master of Myriad Forms', NULL, 'You can cast alter self at will, without expending a spell slot.', 'Eldritch Invocation Selection', NULL, 'invocationRequirement,level,15'),
('Minions of Chaos', NULL, 'You can cast conjure elemental once using a warlock spell slot. You can''t do so again until you finish a long rest.', 'Eldritch Invocation Selection', NULL, 'invocationRequirement,level,9'),
('Mire the Mind', NULL, 'You can cast slow once using a warlock spell slot. You can''t do so again until you finish a long rest.', 'Eldritch Invocation Selection', NULL, 'invocationRequirement,level,5'),
('Misty Visions', NULL, 'You can cast silent image at will, without expending a spell slot or material components.', 'Eldritch Invocation Selection', NULL, ''),
('One with Shadows', NULL, 'When you are in an area of dim light or darkness, you can use your action to become invisible until you move or take an action or a reaction.', 'Eldritch Invocation Selection', NULL, 'invocationRequirement,level,5'),
('Otherwordly Leap', NULL, 'You can cast jump at will, without expending a spell slot.', 'Eldritch Invocation Selection', NULL, 'invocationRequirement,level,9'),
('Repelling Blast', NULL, 'When you hit a creature with eldritch blast, you can push the creature up to 10 feet away from you in a straight line.', 'Eldritch Invocation Selection', NULL, 'invocationRequirement,spell,114'),
('Sculptor of Flesh', NULL, 'You can cast polymorph once using a warlock spell slot. You can''t do so again until you finish a long rest.', 'Eldritch Invocation Selection', NULL, 'invocationRequirement,level,7'),
('Sign of Ill Omen', NULL, 'You can cast bestow curse once using a warlock spell slot. You can''t do so again until you finish a long rest.', 'Eldritch Invocation Selection', NULL, 'invocationRequirement,level,5'),
('Thief of Five Fates', NULL, 'You can cast bane once using a warlock spell slot. You can''t do so again until you finish a long rest.', 'Eldritch Invocation Selection', NULL, ''),
('Thirsting Blade', NULL, 'You can attack with your pact weapon twice, instead of once, whenever you take the Attack action on your turn.', 'Eldritch Invocation Selection', NULL, 'invocationRequirement,level,5|invocationRequirement,pact,blade'),
('Visions of Distant Realms', NULL, 'You can cast arcane eye at will, without expending a spell slot.', 'Eldritch Invocation Selection', NULL, 'invocationRequirement,level,15'),
('Voice of the Chain Master', NULL, 'You can communicate telepathically with your familiar and perceive through your familiar''s senses as long as you are on the same plane of existence. Additionally, while perceiving through your familiar''s senses, you can also speak through your familiar in your own voice, even if your familiar is normally incapable of speech.', 'Eldritch Invocation Selection', NULL, 'invocationRequirement,pact,chain'),
('Whisper of the Grave', NULL, 'You can cast speak with dead at will, without expending a spell slot.', 'Eldritch Invocation Selection', NULL, 'invocationRequirement,level,9'),
('Witch Sight', NULL, 'You can see the true form of any shapechanger or creature concealed by illusion or transmutation magic while the creature is within 30 feet of you and within line of sight.', 'Eldritch Invocation Selection', NULL, 'invocationRequirement,level,5'),
('Pact Boon', 673, 'At 3rd level, your otherworldly patron bestows a gift upon you for your loyal service. You gain one of the following features of your choice.

Pact of the Blade:
- You can use your action to create a pact weapon in your empty hand. You can choose the form that this melee weapon takes each time you create it. You are proficient with it while you wield it. This weapon counts as magical for the purpose of overcoming resistance and immunity to nonmagical attacks and damage.
- Your pact weapon disappears if it is more than 5 feet away from you for 1 minute or more. It also disappears if you use this feature again, if you dismiss the weapon (no action required), or if you die.
- You can transform one magic weapon into your pact weapon by performing a special ritual while you hold the weapon. You perform the ritual over the course of 1 hour, which can be done during a short rest.
- You can then dismiss the weapon, shunting it into an extradimensional space, and it appears whenever you create your pact weapon thereafter. You can''t affect an artifact or a sentient weapon in this way. The weapon ceases being your pact weapon if you die, if you perform the 1-hour ritual on a different weapon, or if you use a 1-hour ritual to break your bond to it. The weapon appears at your feet if it is in the extradimensional space when the bond breaks.

Pact of the Chain:
- You learn the find familiar spell and can cast it as a ritual. The spell doesn''t count against your number of spells known.
- When you cast the spell, you can choose one of the normal forms for your familiar or one of the following special forms: imp, pseudodragon, quasit, or sprite.
- Additionally, when you take the Attack action, you can forgo one of your own attacks to allow your familiar to make one attack with its reaction.

Pact of the Tome:
- Your patron gives you a grimoire called a Book of Shadows. When you gain this feature, choose three cantrips from any class''s spell list (the three needn''t be from the same list). While the book is on your person, you can cast those cantrips at will. They don''t count against your number of cantrips known. If they don''t appear on the warlock spell list, they are nonetheless warlock spells for you.
- If you lose your Book of Shadows, you can perform a 1-hour ceremony to receive a replacement from your patron. This ceremony can be performed during a short or long rest, and it destroys the previous book. The book turns to ash when you die.', '', 1, ''),
('Pact of the Blade', NULL, 'You can use your action to create a pact weapon in your empty hand. You can choose the form that this melee weapon takes each time you create it. You are proficient with it while you wield it. This weapon counts as magical for the purpose of overcoming resistance and immunity to nonmagical attacks and damage.
Your pact weapon disappears if it is more than 5 feet away from you for 1 minute or more. It also disappears if you use this feature again, if you dismiss the weapon (no action required), or if you die.
You can transform one magic weapon into your pact weapon by performing a special ritual while you hold the weapon. You perform the ritual over the course of 1 hour, which can be done during a short rest.
You can then dismiss the weapon, shunting it into an extradimensional space, and it appears whenever you create your pact weapon thereafter. You can''t affect an artifact or a sentient weapon in this way. The weapon ceases being your pact weapon if you die, if you perform the 1-hour ritual on a different weapon, or if you use a 1-hour ritual to break your bond to it. The weapon appears at your feet if it is in the extradimensional space when the bond breaks.', 'Pact Boon', NULL, ''),
('Pact of the Chain', NULL, 'You learn the find familiar spell and can cast it as a ritual. The spell doesn''t count against your number of spells known.
When you cast the spell, you can choose one of the normal forms for your familiar or one of the following special forms: imp, pseudodragon, quasit, or sprite.
Additionally, when you take the Attack action, you can forgo one of your own attacks to allow your familiar to make one attack with its reaction.', 'Pact Boon', NULL, 'spell,132'),
('Pact of the Tome', NULL, 'Your patron gives you a grimoire called a Book of Shadows. When you gain this feature, choose three cantrips from any class''s spell list (the three needn''t be from the same list). While the book is on your person, you can cast those cantrips at will. They don''t count against your number of cantrips known. If they don''t appear on the warlock spell list, they are nonetheless warlock spells for you.
If you lose your Book of Shadows, you can perform a 1-hour ceremony to receive a replacement from your patron. This ceremony can be performed during a short or long rest, and it destroys the previous book. The book turns to ash when you die.', 'Pact Boon', NULL, 'spellSelectAny,0|spellSelectAny,0|spellSelectAny,0'),
('Feat', 674, '', '', NULL, 'feat'),
('Feat', 678, '', '', NULL, 'feat'),
('Feat', 682, '', '', NULL, 'feat'),
('Feat', 686, '', '', NULL, 'feat'),
('Feat', 689, '', '', NULL, 'feat'),
('Mystic Arcanum', 681, 'At 11th level, your patron bestows upon you a magical secret called an arcanum. Choose one 6th-level spell from the warlock spell list as this arcanum.

You can cast your arcanum spell once without expending a spell slot. You must finish a long rest before you can do so again.

At higher levels, you gain more warlock spells of your choice that can be cast in this way: one 7th-level spell at 13th level, one 8th-level spell at 15th level, and one 9th-level spell at 17th level. You regain all uses of your Mystic Arcanum when you finish a long rest.', '', NULL, 'spellSelect,war,6'),
('Mystic Arcanum', 683, '', '', NULL, 'spellSelect,war,7'),
('Mystic Arcanum', 685, '', '', NULL, 'spellSelect,war,8'),
('Mystic Arcanum', 687, '', '', NULL, 'spellSelect,war,9'),
('Eldritch Master', 690, 'At 20th level, you can draw on your inner reserve of mystical power while entreating your patron to regain expended spell slots. You can spend 1 minute entreating your patron for aid to regain all your expended spell slots from your Pact Magic feature. Once you regain spell slots with this feature, you must finish a long rest before you can do so again.', '', NULL, ''),
('Expanded Spell List', 671, 'The Fiend lets you choose from an expanded list of spells when you learn a warlock spell. You add Burning Hands and Command to the warlock spell list.', '', NULL, 'expandedSpellList,41,55'),
('Expanded Spell List', 673, 'The Fiend lets you choose from an expanded list of spells when you learn a warlock spell. You add Blindess/Deafness and Scorching Ray to the warlock spell list.', '', NULL, 'expandedSpellList,37,286'),
('Expanded Spell List', 675, 'The Fiend lets you choose from an expanded list of spells when you learn a warlock spell. You add Fireball and Stinking Cloud to the warlock spell list.', '', NULL, 'expandedSpellList,137,314'),
('Expanded Spell List', 677, 'The Fiend lets you choose from an expanded list of spells when you learn a warlock spell. You add Fire Shield and Wall of Fire to the warlock spell list.', '', NULL, 'expandedSpellList,139,345'),
('Expanded Spell List', 679, 'The Fiend lets you choose from an expanded list of spells when you learn a warlock spell. You add Flame Strike and Hallow to the warlock spell list.', '', NULL, 'expandedSpellList,142,171'),
('Dark One''s Blessing', 671, 'Starting at 1st level, when you reduce a hostile creature to 0 hit points, you gain temporary hit points equal to your Charisma modifier + your warlock level (minimum of 1).', '', NULL, ''),
('Dark One''s Own Luck', 676, 'Starting at 6th level, you can call on your patron to alter fate in your favor. When you make an ability check or a saving throw, you can use this feature to add a d10 to your roll. You can do so after seeing the initial roll but before any of the roll''s effects occur.

Once you use this feature, you can''t use it again until you finish a short or long rest.', '', NULL, ''),
('Fiendish Resilience', 680, 'Starting at 10th level, you can choose one damage type when you finish a short or long rest. You gain resistance to that damage type until you choose a different one with this feature. Damage from magical weapons or silver weapons ignores this resistance.', '', NULL, ''),
('Hurl Through Hell', 684, 'Starting at 14th level, when you hit a creature with an attack, you can use this feature to instantly transport the target through the lower planes. The creature disappears and hurtles through a nightmare landscape.

At the end of your next turn, the target returns to the space it previously occupied, or the nearest unoccupied space. If the target is not a fiend, it takes 10d10 psychic damage as it reels from its horrific experience.

Once you use this feature, you can''t use it again until you finish a long rest.', '', NULL, ''),
('Saving Throw Proficiency (Wisdom, Charisma)', 691, '', '', NULL, 'savingThrowProficiency,wis|savingThrowProficiency,cha'),
('Armor Proficiency (Light)', 691, '', '', NULL, 'armorProficiency,light'),
('Weapon Proficiency (Simple)', 691, 'As a warlock, you have proficiency with all simple weapons.', '', NULL, 'weaponProficiency,simple'),
('Skill Proficiency', 691, '', '', NULL, 'skillSelect,5,6,7,8,9,15,16|skillSelect,5,6,7,8,9,15,16'),
('Pact Magic', 691, 'Your arcane research and the magic bestowed on you by your patron have given you facility with spells.

At 1st level, you have 1 spell slot of 1st level. The number and level of your spell slots increases as you gain warlock levels. To cast one of your warlock spells of 1st level or higher, you must expend a spell slot. You regain all expended spell slots when you finish a short or long rest.', '', NULL, ''),
('Additional Spell Slot', 692, 'You gain an additional warlock spell slot.', '', NULL, ''),
('Additional Spell Slot', 701, 'You gain an additional warlock spell slot.', '', NULL, ''),
('Additional Spell Slot', 707, 'You gain an additional warlock spell slot.', '', NULL, ''),
('Spell Slot Level Increase', 693, 'Your warlock spell slots upgrade to 2nd level.', '', NULL, ''),
('Spell Slot Level Increase', 695, 'Your warlock spell slots upgrade to 3rd level.', '', NULL, ''),
('Spell Slot Level Increase', 697, 'Your warlock spell slots upgrade to 4th level.', '', NULL, ''),
('Spell Slot Level Increase', 699, 'Your warlock spell slots upgrade to 5th level.', '', NULL, ''),
('Eldritch Invocations', 692, 'In your study of occult lore, you have unearthed Eldritch Invocations, fragments of forbidden knowledge that imbue you with an abiding magical ability.

At 2nd level, you gain two eldritch invocations of your choice. When you reach 5th, 7th, 9th, 12th, 15th and 18th warlock level, you gain additional invocations of your choice. A level prerequisite refers to your level in this class.

Additionally, when you gain a level in this class, you can choose one of the invocations you know and replace it with another invocation that you could learn at that level.', '', NULL, ''),
('Eldritch Invocation Selection', 692, '', '', 2, ''),
('Eldritch Invocation Selection', 695, '', '', 1, ''),
('Eldritch Invocation Selection', 697, '', '', 1, ''),
('Eldritch Invocation Selection', 699, '', '', 1, ''),
('Eldritch Invocation Selection', 702, '', '', 1, ''),
('Eldritch Invocation Selection', 705, '', '', 1, ''),
('Eldritch Invocation Selection', 708, '', '', 1, ''),
('Pact Boon', 693, 'At 3rd level, your otherworldly patron bestows a gift upon you for your loyal service. You gain one of the following features of your choice.

Pact of the Blade:
- You can use your action to create a pact weapon in your empty hand. You can choose the form that this melee weapon takes each time you create it. You are proficient with it while you wield it. This weapon counts as magical for the purpose of overcoming resistance and immunity to nonmagical attacks and damage.
- Your pact weapon disappears if it is more than 5 feet away from you for 1 minute or more. It also disappears if you use this feature again, if you dismiss the weapon (no action required), or if you die.
- You can transform one magic weapon into your pact weapon by performing a special ritual while you hold the weapon. You perform the ritual over the course of 1 hour, which can be done during a short rest.
- You can then dismiss the weapon, shunting it into an extradimensional space, and it appears whenever you create your pact weapon thereafter. You can''t affect an artifact or a sentient weapon in this way. The weapon ceases being your pact weapon if you die, if you perform the 1-hour ritual on a different weapon, or if you use a 1-hour ritual to break your bond to it. The weapon appears at your feet if it is in the extradimensional space when the bond breaks.

Pact of the Chain:
- You learn the find familiar spell and can cast it as a ritual. The spell doesn''t count against your number of spells known.
- When you cast the spell, you can choose one of the normal forms for your familiar or one of the following special forms: imp, pseudodragon, quasit, or sprite.
- Additionally, when you take the Attack action, you can forgo one of your own attacks to allow your familiar to make one attack with its reaction.

Pact of the Tome:
- Your patron gives you a grimoire called a Book of Shadows. When you gain this feature, choose three cantrips from any class''s spell list (the three needn''t be from the same list). While the book is on your person, you can cast those cantrips at will. They don''t count against your number of cantrips known. If they don''t appear on the warlock spell list, they are nonetheless warlock spells for you.
- If you lose your Book of Shadows, you can perform a 1-hour ceremony to receive a replacement from your patron. This ceremony can be performed during a short or long rest, and it destroys the previous book. The book turns to ash when you die.', '', 1, ''),
('Pact of the Blade', NULL, 'You can use your action to create a pact weapon in your empty hand. You can choose the form that this melee weapon takes each time you create it. You are proficient with it while you wield it. This weapon counts as magical for the purpose of overcoming resistance and immunity to nonmagical attacks and damage.
Your pact weapon disappears if it is more than 5 feet away from you for 1 minute or more. It also disappears if you use this feature again, if you dismiss the weapon (no action required), or if you die.
You can transform one magic weapon into your pact weapon by performing a special ritual while you hold the weapon. You perform the ritual over the course of 1 hour, which can be done during a short rest.
You can then dismiss the weapon, shunting it into an extradimensional space, and it appears whenever you create your pact weapon thereafter. You can''t affect an artifact or a sentient weapon in this way. The weapon ceases being your pact weapon if you die, if you perform the 1-hour ritual on a different weapon, or if you use a 1-hour ritual to break your bond to it. The weapon appears at your feet if it is in the extradimensional space when the bond breaks.', 'Pact Boon', NULL, ''),
('Pact of the Chain', NULL, 'You learn the find familiar spell and can cast it as a ritual. The spell doesn''t count against your number of spells known.
When you cast the spell, you can choose one of the normal forms for your familiar or one of the following special forms: imp, pseudodragon, quasit, or sprite.
Additionally, when you take the Attack action, you can forgo one of your own attacks to allow your familiar to make one attack with its reaction.', 'Pact Boon', NULL, 'spell,132'),
('Pact of the Tome', NULL, 'Your patron gives you a grimoire called a Book of Shadows. When you gain this feature, choose three cantrips from any class''s spell list (the three needn''t be from the same list). While the book is on your person, you can cast those cantrips at will. They don''t count against your number of cantrips known. If they don''t appear on the warlock spell list, they are nonetheless warlock spells for you.
If you lose your Book of Shadows, you can perform a 1-hour ceremony to receive a replacement from your patron. This ceremony can be performed during a short or long rest, and it destroys the previous book. The book turns to ash when you die.', 'Pact Boon', NULL, 'spellSelectAny,0|spellSelectAny,0|spellSelectAny,0'),
('Feat', 694, '', '', NULL, 'feat'),
('Feat', 698, '', '', NULL, 'feat'),
('Feat', 702, '', '', NULL, 'feat'),
('Feat', 706, '', '', NULL, 'feat'),
('Feat', 709, '', '', NULL, 'feat'),
('Mystic Arcanum', 701, 'At 11th level, your patron bestows upon you a magical secret called an arcanum. Choose one 6th-level spell from the warlock spell list as this arcanum.

You can cast your arcanum spell once without expending a spell slot. You must finish a long rest before you can do so again.

At higher levels, you gain more warlock spells of your choice that can be cast in this way: one 7th-level spell at 13th level, one 8th-level spell at 15th level, and one 9th-level spell at 17th level. You regain all uses of your Mystic Arcanum when you finish a long rest.', '', NULL, 'spellSelect,war,6'),
('Mystic Arcanum', 703, '', '', NULL, 'spellSelect,war,7'),
('Mystic Arcanum', 705, '', '', NULL, 'spellSelect,war,8'),
('Mystic Arcanum', 707, '', '', NULL, 'spellSelect,war,9'),
('Eldritch Master', 710, 'At 20th level, you can draw on your inner reserve of mystical power while entreating your patron to regain expended spell slots. You can spend 1 minute entreating your patron for aid to regain all your expended spell slots from your Pact Magic feature. Once you regain spell slots with this feature, you must finish a long rest before you can do so again.', '', NULL, ''),
('Expanded Spell List', 691, 'The Great Old One lets you choose from an expanded list of spells when you learn a warlock spell. You add Dissonant Whispers and Tasha''s Hideous Laughter to the warlock spell list.', '', NULL, 'expandedSpellList,103,323'),
('Expanded Spell List', 693, 'The Great Old One lets you choose from an expanded list of spells when you learn a warlock spell. You add Detect Thoughts and Phantasmal Force to the warlock spell list.', '', NULL, 'expandedSpellList,97,248'),
('Expanded Spell List', 695, 'The Great Old One lets you choose from an expanded list of spells when you learn a warlock spell. You add Clairvoyance and Sending to the warlock spell list.', '', NULL, 'expandedSpellList,50,291'),
('Expanded Spell List', 697, 'The Great Old One lets you choose from an expanded list of spells when you learn a warlock spell. You add Dominate Beast and Evard''s Black Tentacles to the warlock spell list.', '', NULL, 'expandedSpellList,107,122'),
('Expanded Spell List', 699, 'The Great Old One lets you choose from an expanded list of spells when you learn a warlock spell. You add Dominate Person and Telekinesis to the warlock spell list.', '', NULL, 'expandedSpellList,109,324'),
('Awakened Mind', 691, 'Starting at 1st level, your alien knowledge gives you the ability to touch the minds of other creatures. You can telepathically speak to any creature you can see within 30 feet of you. You don''t need to share a language with the creature for it to understand your telepathic utterances, but the creature must be able to understand at least one language.', '', NULL, ''),
('Entropic Ward', 696, 'At 6th level, you learn to magically ward yourself against attack and to turn an enemy''s failed strike into good luck for yourself. When a creature makes an attack roll against you, you can use your reaction to impose disadvantage on that roll. If the attack misses you, your next attack roll against the creature has advantage if you make it before the end of your next turn.

Once you use this feature, you can''t use it again until you finish a short or long rest.', '', NULL, ''),
('Thought Shield', 700, 'Starting at 10th level, your thoughts can''t be read by telepathy or other means unless you allow it. You also have resistance to psychic damage, and whenever a creature deals psychic damage to you, that creature takes the same amount of damage that you do.', '', NULL, ''),
('Create Thrall', 704, 'At 14th level, you gain the ability to infect a humanoid''s mind with the alien magic of your patron. You can use your action to touch an incapacitated humanoid. That creature is then charmed by you until a Remove Curse spell is cast on it, the charmed condition is removed from it, or you use this feature again.

You can communicate telepathically with the charmed creature as long as the two of you are on the same plane of existence.', '', NULL, ''),
('Saving Throw Proficiency (Intelligence, Wisdom)', 711, '', '', NULL, 'savingThrowProficiency,int|savingThrowProficiency,wis'),
('Wizard Weapon Proficiencies', 711, 'As a wizard, you have proficiency with daggers, darts, slings, quarterstaves and light crossbows.', '', NULL, 'weaponProficiency,multiple,2,8,12,13,15'),
('Skill Proficiency', 711, '', '', NULL, 'skillSelect,5,6,7,9,11,12|skillSelect,5,6,7,9,11,12'),
('Spellbook', 711, 'At 1st level, you have a spellbook containing six 1st-level wizard spells of your choice. Your spellbook is the repository of the wizard spells you know, except your cantrips, which are fixed in your mind.

The spells that you add to your spellbook as you gain levels reflect the arcane research you conduct on your own, as well as intellectual breakthroughs you have had about the nature of the multiverse. You might find other spells during your adventures. You could discover a spell recorded on a scroll in an evil wizard''s chest, for example, or in a dusty tome in an ancient library.

Copying a Spell into the Book - When you find a wizard spell of 1st level or higher, you can add it to your spellbook if it is of a spell level you can prepare and if you can spare the time to decipher and copy it.

Copying a spell into your spellbook involves reproducing the basic form of the spell, then deciphering the unique system of notation used by the wizard who wrote it. You must practice the spell until you understand the sounds or gestures required, then transcribe it into your spellbook using your own notation.

For each level of the spell, the process takes 2 hours and costs 50 gp. The cost represents material components you expend as you experiment with the spell to master it, as well as the fine inks you need to record it. Once you have spent this time and money, you can prepare the spell just like your other spells.

Replacing the Book - You can copy a spell from your own spellbook into another book-for example, if you want to make a backup copy of your spellbook. This is just like copying a new spell into your spellbook, but faster and easier, since you understand your own notation and already know how to cast the spell. You need spend only 1 hour and 10 gp for each level of the copied spell.

If you lose your spellbook, you can use the same procedure to transcribe the spells that you have prepared into a new spellbook. Filling out the remainder of your spellbook requires you to find new spells to do so, as normal. For this reason, many wizards keep backup spellbooks in a safe place.

The Book''s Appearance - Your spellbook is a unique compilation of spells, with its own decorative flourishes and margin notes. It might be a plain, functional leather volume that you received as a gift from your master, a finely bound gilt-edged tome you found in an ancient library or even a loose collection of notes scrounged together after you lost your previous spellbook in a mishap.', '', NULL, ''),
('Arcane Recovery', 711, 'You have learned to regain some of your magical energy by studying your spellbook. Once per day when you finish a short rest, you can choose expended spell slots to recover. The spell slots can have a combined level that is equal to or less than half your wizard level (rounded up), and none of the slots can be 6th level or higher.

For example, if you''re a 4th-level wizard, you can recover up to two levels worth of spell slots. You can recover either a 2nd-level spell slot or two 1st-level spell slots.', '', NULL, ''),
('Feat', 714, '', '', NULL, 'feat'),
('Feat', 718, '', '', NULL, 'feat'),
('Feat', 722, '', '', NULL, 'feat'),
('Feat', 726, '', '', NULL, 'feat'),
('Feat', 729, '', '', NULL, 'feat'),
('Spell Mastery', 728, 'At 18th level, you have achieved such mastery over certain spells that you can cast them at will. Choose a 1st-level wizard spell and a 2nd-level wizard spell that are in your spellbook. You can cast those spells at their lowest level without expending a spell slot when you have them prepared. If you want to cast either spell at a higher level, you must expend a spell slot as normal.

By spending 8 hours in study, you can exchange one or both of the spells you chose for different spells of the same levels.', '', NULL, 'spellMastery,1|spellMastery,2'),
('Signature Spells', 730, 'When you reach 20th level, you gain mastery over two powerful spells and can cast them with little effort. Choose two 3rd-level wizard spells in your spellbook as your signature spells. You always have these spells prepared, they don''t count against the number of spells you have prepared, and you can cast each of them once at 3rd level without expending a spell slot. When you do so, you can''t do so again until you finish a short or long rest.

If you want to cast either spell at a higher level, you must expend a spell slot as normal.', '', NULL, 'spellMastery,3|spellMastery,3'),
('Abjuration Savant', 712, 'Beginning when you select this school at 2nd level, the gold and time you must spend to copy a abjuration spell into your spellbook is halved.', '', NULL, ''),
('Arcane Ward', 712, 'Starting at 2nd level, you can weave magic around yourself for protection. When you cast an abjuration spell of 1st level or higher, you can simultaneously use a strand of the spell''s magic to create a magical ward on yourself that lasts until you finish a long rest. The ward has hit points equal to twice your wizard level + your Intelligence modifier. Whenever you take damage, the ward takes the damage instead. If this damage reduces the ward to 0 hit points, you take any remaining damage.

While the ward has 0 hit points, it can''t absorb damage, but its magic remains. Whenever you cast an abjuration spell of 1st level or higher, the ward regains a number of hit points equal to twice the level of the spell.

Once you create the ward, you can''t create it again until you finish a long rest.', '', NULL, ''),
('Projected Ward', 716, 'Starting at 6th level, when a creature that you can see within 30 feet of you takes damage, you can use your reaction to cause your Arcane Ward to absorb that damage. If this damage reduces the ward to 0 hit points, the warded creature takes any remaining damage.', '', NULL, ''),
('Improved Abjuration', 720, 'Beginning at 10th level, when you cast an abjuration spell that requires you to make an ability check as a part of casting that spell (as in Counterspell and Dispel Magic), you add your proficiency bonus to that ability check.', '', NULL, ''),
('Spell Resistance', 724, 'Starting at 14th level, you have advantage on saving throws against spells.

Furthermore, you have resistance against the damage of spells.', '', NULL, 'damageResistance,spells'),
('Feat', 733, '', '', NULL, 'feat'),
('Feat', 737, '', '', NULL, 'feat'),
('Feat', 741, '', '', NULL, 'feat'),
('Feat', 745, '', '', NULL, 'feat'),
('Feat', 748, '', '', NULL, 'feat'),
('Spell Mastery', 747, 'At 18th level, you have achieved such mastery over certain spells that you can cast them at will. Choose a 1st-level wizard spell and a 2nd-level wizard spell that are in your spellbook. You can cast those spells at their lowest level without expending a spell slot when you have them prepared. If you want to cast either spell at a higher level, you must expend a spell slot as normal.

By spending 8 hours in study, you can exchange one or both of the spells you chose for different spells of the same levels.', '', NULL, 'spellMastery,1|spellMastery,2'),
('Signature Spells', 749, 'When you reach 20th level, you gain mastery over two powerful spells and can cast them with little effort. Choose two 3rd-level wizard spells in your spellbook as your signature spells. You always have these spells prepared, they don''t count against the number of spells you have prepared, and you can cast each of them once at 3rd level without expending a spell slot. When you do so, you can''t do so again until you finish a short or long rest.

If you want to cast either spell at a higher level, you must expend a spell slot as normal.', '', NULL, 'spellMastery,3|spellMastery,3'),
('Conjuration Savant', 731, 'Beginning when you select this school at 2nd level, the gold and time you must spend to copy a Conjuration spell into your spellbook is halved.', '', NULL, ''),
('Minor Conjuration', 731, 'Starting at 2nd level when you select this school, you can use your action to conjure up an inanimate object in your hand or on the ground in an unoccupied space that you can see within 10 feet of you. This object can be no larger than 3 feet on a side and weigh no more than 10 pounds, and its form must be that of a nonmagical object that you have seen. The object is visibly magical, radiating dim light out to 5 feet.

The object disappears after 1 hour, when you use this feature again, or if it takes or deals any damage.', '', NULL, ''),
('Benign Transposition', 735, 'Starting at 6th level, you can use your action to teleport up to 30 feet to an unoccupied space that you can see. Alternatively, you can choose a space within range that is occupied by a Small or Medium creature. If that creature is willing, you both teleport, swapping places.

Once you use this feature, you can''t use it again until you finish a long rest or you cast a conjuration spell of 1st level or higher.', '', NULL, ''),
('Focused Conjuration', 739, 'Beginning at 10th level, while you are concentrating on a conjuration spell, your concentration can''t be broken as a result of taking damage.', '', NULL, ''),
('Durable Summons', 743, 'Starting at 14th level, any creature that you summon or create with a conjuration spell has 30 temporary hit points.', '', NULL, ''),
('Feat', 752, '', '', NULL, 'feat'),
('Feat', 756, '', '', NULL, 'feat'),
('Feat', 760, '', '', NULL, 'feat'),
('Feat', 764, '', '', NULL, 'feat'),
('Feat', 767, '', '', NULL, 'feat'),
('Spell Mastery', 766, 'At 18th level, you have achieved such mastery over certain spells that you can cast them at will. Choose a 1st-level wizard spell and a 2nd-level wizard spell that are in your spellbook. You can cast those spells at their lowest level without expending a spell slot when you have them prepared. If you want to cast either spell at a higher level, you must expend a spell slot as normal.

By spending 8 hours in study, you can exchange one or both of the spells you chose for different spells of the same levels.', '', NULL, 'spellMastery,1|spellMastery,2'),
('Signature Spells', 768, 'When you reach 20th level, you gain mastery over two powerful spells and can cast them with little effort. Choose two 3rd-level wizard spells in your spellbook as your signature spells. You always have these spells prepared, they don''t count against the number of spells you have prepared, and you can cast each of them once at 3rd level without expending a spell slot. When you do so, you can''t do so again until you finish a short or long rest.

If you want to cast either spell at a higher level, you must expend a spell slot as normal.', '', NULL, 'spellMastery,3|spellMastery,3'),
('Divination Savant', 750, 'Beginning when you select this school at 2nd level, the gold and time you must spend to copy a Divination spell into your spellbook is halved.', '', NULL, ''),
('Portent', 750, 'Starting at 2nd level when you choose this school, glimpses of the future begin to press in on your awareness. When you finish a long rest, roll two d20s and record the numbers rolled. You can replace any attack roll, saving throw, or ability check made by you or a creature that you can see with one of these foretelling rolls. You must choose to do so before the roll, and you can replace a roll in this way only once per turn.

Each foretelling roll can be used only once. When you finish a long rest, you lose any unused foretelling rolls.', '', NULL, ''),
('Expert Divination', 754, 'Beginning at 6th level, casting divination spells comes so easily to you that it expends only a fraction of your spellcasting efforts. When you cast a divination spell of 2nd level or higher using a spell slot, you regain one expended spell slot. The slot you regain must be of a level lower than the spell you cast and can''t be higher than 5th level.', '', NULL, ''),
('The Third Eye', 758, 'Starting at 10th level, you can use your action to increase your powers of perception. When you do so, choose one of the following benefits, which lasts until you are incapacitated or you take a short or long rest. You can''t use the feature again until you finish a short or long rest.

Darkvision - You gain darkvision out to a range of 60 feet.

Ethereal Sight - You can see into the Ethereal Plane within 60 feet of you.

Greater Comprehension - You can read any language.

See Invisibility - You can see invisible creatures and objects within 10 feet of you that are within line of sight.', '', NULL, ''),
('Greater Portent', 762, 'Starting at 14th level, the visions in your dreams intensify and paint a more accurate picture in your mind of what is to come. You roll three d20s for your Portent feature, rather than two.', '', NULL, ''),
('Feat', 771, '', '', NULL, 'feat'),
('Feat', 775, '', '', NULL, 'feat'),
('Feat', 779, '', '', NULL, 'feat'),
('Feat', 783, '', '', NULL, 'feat'),
('Feat', 786, '', '', NULL, 'feat'),
('Spell Mastery', 785, 'At 18th level, you have achieved such mastery over certain spells that you can cast them at will. Choose a 1st-level wizard spell and a 2nd-level wizard spell that are in your spellbook. You can cast those spells at their lowest level without expending a spell slot when you have them prepared. If you want to cast either spell at a higher level, you must expend a spell slot as normal.

By spending 8 hours in study, you can exchange one or both of the spells you chose for different spells of the same levels.', '', NULL, 'spellMastery,1|spellMastery,2'),
('Signature Spells', 787, 'When you reach 20th level, you gain mastery over two powerful spells and can cast them with little effort. Choose two 3rd-level wizard spells in your spellbook as your signature spells. You always have these spells prepared, they don''t count against the number of spells you have prepared, and you can cast each of them once at 3rd level without expending a spell slot. When you do so, you can''t do so again until you finish a short or long rest.

If you want to cast either spell at a higher level, you must expend a spell slot as normal.', '', NULL, 'spellMastery,3|spellMastery,3'),
('Enchantment Savant', 769, 'Beginning when you select this school at 2nd level, the gold and time you must spend to copy a Enchantment spell into your spellbook is halved.', '', NULL, ''),
('Hypnotic Gaze', 769, 'Starting at 2nd level when you choose this school, your soft words and enchanting gaze can magically enthrall another creature. As an action, choose one creature that you can see within 5 feet of you. If the target can see or hear you, it must succeed on a Wisdom saving throw against your wizard spell save DC or be charmed by you until the end of your next turn. The charmed creature''s speed drops to 0, and the creature is incapacitated and visibly dazed.

On subsequent turns, you can use your action to maintain this effect, extending its duration until the end of your next turn. However, the effect ends if you move more than 5 feet away from the creature, if the creature can neither see nor hear you, or if the creature takes damage.

Once the effect ends, or if the creature succeeds on its initial saving throw against this effect, you can''t use this feature on that creature again until you finish a long rest.', '', NULL, ''),
('Instinctive Charm', 773, 'Beginning at 6th level, when a creature you can see within 30 feet of you makes an attack roll against you, you can use your reaction to divert the attack, provided that another creature is within the attack''s range. The attacker must make a Wisdom saving throw against your wizard spell save DC. On a failed save, the attacker must target the creature that is closest to it, not including you or itself. If multiple creatures are closest, the attacker chooses which one to target.

On a successful save, you can''t use this feature on the attacker again until you finish a long rest.

You must choose to use this feature before knowing whether the attack hits or misses. Creatures that can''t be charmed are immune to this effect.', '', NULL, ''),
('Split Enchantment', 777, 'Starting at 10th level, when you cast an enchantment spell of 1st level or higher that targets only one creature, you can have it target a second creature.', '', NULL, ''),
('Alter Memories', 781, 'At 14th level, you gain the ability to make a creature unaware of your magical influence on it. When you cast an enchantment spell to charm one or more creatures, you can alter one creature''s understanding so that it remains unaware of being charmed.

Additionally, once before the spell expires, you can use your action to try to make the chosen creature forget some of the time it spent charmed. The creature must succeed on an Intelligence saving throw against your wizard spell save DC or lose a number of hours of its memories equal to 1 + your Charisma modifier (minimum 1). You can make the creature forget less time, and the amount of time can''t exceed the duration of your enchantment spell.', '', NULL, ''),
('Feat', 790, '', '', NULL, 'feat'),
('Feat', 794, '', '', NULL, 'feat'),
('Feat', 798, '', '', NULL, 'feat'),
('Feat', 802, '', '', NULL, 'feat'),
('Feat', 805, '', '', NULL, 'feat'),
('Spell Mastery', 804, 'At 18th level, you have achieved such mastery over certain spells that you can cast them at will. Choose a 1st-level wizard spell and a 2nd-level wizard spell that are in your spellbook. You can cast those spells at their lowest level without expending a spell slot when you have them prepared. If you want to cast either spell at a higher level, you must expend a spell slot as normal.

By spending 8 hours in study, you can exchange one or both of the spells you chose for different spells of the same levels.', '', NULL, 'spellMastery,1|spellMastery,2'),
('Signature Spells', 806, 'When you reach 20th level, you gain mastery over two powerful spells and can cast them with little effort. Choose two 3rd-level wizard spells in your spellbook as your signature spells. You always have these spells prepared, they don''t count against the number of spells you have prepared, and you can cast each of them once at 3rd level without expending a spell slot. When you do so, you can''t do so again until you finish a short or long rest.

If you want to cast either spell at a higher level, you must expend a spell slot as normal.', '', NULL, 'spellMastery,3|spellMastery,3'),
('Evocation Savant', 788, 'Beginning when you select this school at 2nd level, the gold and time you must spend to copy a Evocation spell into your spellbook is halved.', '', NULL, ''),
('Sculpt Spells', 788, 'Beginning at 2nd level, you can create pockets of relative safety within the effects of your evocation spells. When you cast an evocation spell that affects other creatures that you can see, you can choose a number of them equal to 1 + the spell''s level. The chosen creatures automatically succeed on their saving throws against the spell, and they take no damage if they would normally take half damage on a successful save.', '', NULL, ''),
('Potent Cantrip', 792, 'Starting at 6th level, your damaging cantrips affect even creatures that avoid the brunt of the effect. When a creature succeeds on a saving throw against your cantrip, the creature takes half the cantrip''s damage (if any) but suffers no additional effect from the cantrip.', '', NULL, ''),
('Empowered Evocation', 796, 'Beginning at 10th level, you can add your Intelligence modifier (minimum of +1) to one damage roll of any wizard evocation spell that you cast.', '', NULL, ''),
('Overchannel', 800, 'Starting at 14th level, you can increase the power of your simpler spells. When you cast a wizard spell of 1st through 5th level that deals damage, you can deal maximum damage with that spell.

The first time you do so, you suffer no adverse effect. If you use this feature again before you finish a long rest, you take 2d12 necrotic damage for each level of the spell, immediately after you cast it. Each time you use this feature again before finishing a long rest, the necrotic damage per spell level increases by 1d12. This damage ignores resistance and immunity.', '', NULL, ''),
('Feat', 809, '', '', NULL, 'feat'),
('Feat', 813, '', '', NULL, 'feat'),
('Feat', 817, '', '', NULL, 'feat'),
('Feat', 821, '', '', NULL, 'feat'),
('Feat', 824, '', '', NULL, 'feat'),
('Spell Mastery', 823, 'At 18th level, you have achieved such mastery over certain spells that you can cast them at will. Choose a 1st-level wizard spell and a 2nd-level wizard spell that are in your spellbook. You can cast those spells at their lowest level without expending a spell slot when you have them prepared. If you want to cast either spell at a higher level, you must expend a spell slot as normal.

By spending 8 hours in study, you can exchange one or both of the spells you chose for different spells of the same levels.', '', NULL, 'spellMastery,1|spellMastery,2'),
('Signature Spells', 825, 'When you reach 20th level, you gain mastery over two powerful spells and can cast them with little effort. Choose two 3rd-level wizard spells in your spellbook as your signature spells. You always have these spells prepared, they don''t count against the number of spells you have prepared, and you can cast each of them once at 3rd level without expending a spell slot. When you do so, you can''t do so again until you finish a short or long rest.

If you want to cast either spell at a higher level, you must expend a spell slot as normal.', '', NULL, 'spellMastery,3|spellMastery,3'),
('Illusion Savant', 807, 'Beginning when you select this school at 2nd level, the gold and time you must spend to copy a Illusion spell into your spellbook is halved.', '', NULL, ''),
('Improved Minor Illusion', 807, 'When you choose this school at 2nd level, you learn the Minor Illusion cantrip. If you already know this cantrip, you learn a different wizard cantrip of your choice. The cantrip doesn''t count against your number of cantrips known.

When you cast Minor Illusion, you can create both a sound and an image with a single casting of the spell.', '', NULL, ''),
('Malleable Illusions', 811, 'Starting at 6th level, when you cast an illusion spell that has a duration of 1 minute or longer, you can use your action to change the nature of that illusion (using the spell''s normal parameters for the illusion), provided that you can see the illusion.', '', NULL, ''),
('Illusory Self', 815, 'Beginning at 10th level, you can create an illusory duplicate of yourself as an instant, almost instinctual reaction to danger. When a creature makes an attack roll against you, you can use your reaction to interpose the illusory duplicate between the attacker and yourself. The attack automatically misses you, then the illusion dissipates.

Once you use this feature, you can''t use it again until you finish a short or long rest.', '', NULL, ''),
('Illusory Reality', 819, 'By 14th level, you have learned the secret of weaving shadow magic into your illusions to give them a semi-reality. When you cast an illusion spell of 1st level or higher, you can choose one inanimate, nonmagical object that is part of the illusion and make that object real. You can do this on your turn as a bonus action while the spell is ongoing. The object remains real for 1 minute. For example, you can create an illusion of a bridge over a chasm and then make it real long enough for your allies to cross.

The object can''t deal damage or otherwise directly harm anyone.', '', NULL, ''),
('Feat', 828, '', '', NULL, 'feat'),
('Feat', 832, '', '', NULL, 'feat'),
('Feat', 836, '', '', NULL, 'feat'),
('Feat', 840, '', '', NULL, 'feat'),
('Feat', 843, '', '', NULL, 'feat'),
('Spell Mastery', 842, 'At 18th level, you have achieved such mastery over certain spells that you can cast them at will. Choose a 1st-level wizard spell and a 2nd-level wizard spell that are in your spellbook. You can cast those spells at their lowest level without expending a spell slot when you have them prepared. If you want to cast either spell at a higher level, you must expend a spell slot as normal.

By spending 8 hours in study, you can exchange one or both of the spells you chose for different spells of the same levels.', '', NULL, 'spellMastery,1|spellMastery,2'),
('Signature Spells', 844, 'When you reach 20th level, you gain mastery over two powerful spells and can cast them with little effort. Choose two 3rd-level wizard spells in your spellbook as your signature spells. You always have these spells prepared, they don''t count against the number of spells you have prepared, and you can cast each of them once at 3rd level without expending a spell slot. When you do so, you can''t do so again until you finish a short or long rest.

If you want to cast either spell at a higher level, you must expend a spell slot as normal.', '', NULL, 'spellMastery,3|spellMastery,3'),
('Necromancy Savant', 826, 'Beginning when you select this school at 2nd level, the gold and time you must spend to copy a Necromancy spell into your spellbook is halved.', '', NULL, ''),
('Grim Harvest', 826, 'At 2nd level, you gain the ability to reap life energy from creatures you kill with your spells. Once per turn when you kill one or more creatures with a spell of 1st level or higher, you regain hit points equal to twice the spell''s level, or three times its level if the spell belongs to the School of Necromancy. You don''t gain this benefit for killing constructs or undead.', '', NULL, ''),
('Undead Thralls', 830, 'At 6th level, you add the Animate Dead spell to your spellbook if it is not there already. When you cast Animate Dead, you can target one additional corpse or pile of bones, creating another zombie or skeleton, as appropriate.

Whenever you create an undead using a necromancy spell, it has additional benefits:

- The creature''s hit point maximum is increased by an amount equal to your wizard level.
- The creature adds your proficiency bonus to its weapon damage rolls.', '', NULL, ''),
('Inured to Undeath', 834, 'Beginning at 10th level, you have resistance to necrotic damage, and your hit point maximum can''t be reduced. You have spent so much time dealing with undead and the forces that animate them that you have become inured to some of their worst effects.', '', NULL, 'damageResistance,necrotic'),
('Command Undead', 838, 'Starting at 14th level, you can use magic to bring undead under your control, even those created by other wizards. As an action, you can choose one undead that you can see within 60 feet of you. That creature must make a Charisma saving throw against your wizard spell save DC. If it succeeds, you can''t use this feature on it again. If it fails, it becomes friendly to you and obeys your commands until you use this feature again.

Intelligent undead are harder to control in this way. If the target has an Intelligence of 8 or higher, it has advantage on the saving throw. If it fails the saving throw and has an Intelligence of 12 or higher, it can repeat the saving throw at the end of every hour until it succeeds and breaks free.', '', NULL, ''),
('Feat', 847, '', '', NULL, 'feat'),
('Feat', 851, '', '', NULL, 'feat'),
('Feat', 855, '', '', NULL, 'feat'),
('Feat', 859, '', '', NULL, 'feat'),
('Feat', 862, '', '', NULL, 'feat'),
('Spell Mastery', 861, 'At 18th level, you have achieved such mastery over certain spells that you can cast them at will. Choose a 1st-level wizard spell and a 2nd-level wizard spell that are in your spellbook. You can cast those spells at their lowest level without expending a spell slot when you have them prepared. If you want to cast either spell at a higher level, you must expend a spell slot as normal.

By spending 8 hours in study, you can exchange one or both of the spells you chose for different spells of the same levels.', '', NULL, 'spellMastery,1|spellMastery,2'),
('Signature Spells', 863, 'When you reach 20th level, you gain mastery over two powerful spells and can cast them with little effort. Choose two 3rd-level wizard spells in your spellbook as your signature spells. You always have these spells prepared, they don''t count against the number of spells you have prepared, and you can cast each of them once at 3rd level without expending a spell slot. When you do so, you can''t do so again until you finish a short or long rest.

If you want to cast either spell at a higher level, you must expend a spell slot as normal.', '', NULL, 'spellMastery,3|spellMastery,3'),
('Transmutation Savant', 845, 'Beginning when you select this school at 2nd level, the gold and time you must spend to copy a Transmutation spell into your spellbook is halved.', '', NULL, ''),
('Minor Alchemy', 845, 'Starting at 2nd level when you select this school, you can temporarily alter the physical properties of one nonmagical object, changing it from one substance into another. You perform a special alchemical procedure on one object composed entirely of wood, stone (but not a gemstone), iron, copper, or silver, transforming it into a different one of those materials. For each 10 minutes you spend performing the procedure, you can transform up to 1 cubic foot of material. After 1 hour, or until you lose your concentration (as if you were concentrating on a spell), the material reverts to its original substance.', '', NULL, ''),
('Transmuter''s Stone', 849, 'Starting at 6th level, you can spend 8 hours creating a transmuter''s stone that stores transmutation magic. You can benefit from the stone yourself or give it to another creature. A creature gains a benefit of your choice as long as the stone is in the creature''s possession. When you create the stone, choose the benefit from the following options:

Darkvision out to a range of 60 feet
An increase to speed of 10 feet while the creature is unencumbered
Proficiency in Constitution saving throws
Resistance to acid, cold, fire, lightning, or thunder damage (your choice whenever you choose this benefit)
Each time you cast a transmutation spell of 1st level or higher, you can change the effect of your stone if the stone is on your person.

If you create a new transmuter''s stone, the previous one ceases to function.', '', NULL, ''),
('Shapechanger', 853, 'At 10th level, you add the Polymorph spell to your spellbook, if it is not there already. You can cast Polymorph without expending a spell slot. When you do so, you can target only yourself and transform into a beast whose challenge rating is 1 or lower.

Once you cast Polymorph in this way, you can''t do so again until you finish a short or long rest, though you can still cast it normally using an available spell slot.', '', NULL, ''),
('Master Transmuter', 857, 'Starting at 14th level, you can use your action to consume the reserve of transmutation magic stored within your transmuter''s stone in a single burst. When you do so, choose one of the following effects. Your transmuter''s stone is destroyed and can''t be remade until you finish a long rest.

Major Transformation. You can transmute one nonmagical object – no larger than a 5-foot cube – into another nonmagical object of similar size and mass and of equal or lesser value. You must spend 10 minutes handling the object to transform it.

Panacea. You remove all curses, diseases, and poisons affecting a creature that you touch with the transmuter''s stone. The creature also regains all its hit points.

Restore Life. You cast the Raise Dead spell on a creature you touch with the transmuter''s stone, without expending a spell slot or needing to have the spell in your spellbook.

Restore Youth. You touch the transmuter''s stone to a willing creature, and that creature''s apparent age is reduced by 3d10 years, to a minimum of 13 years. This effect doesn''t extend the creature''s lifespan.', '', NULL, '');
end
if not exists (select 1 from dbo.[RacialFeatures])
begin
	insert into dbo.[RacialFeatures] ([Name], [RaceId], [Description], [ParentFeatureName], [SubfeatureSelections], [Tags])
	values ('Ability Score Increase: Strength +2', 1, '', '', NULL, 'abilityImprovement,str,2'),
('Ability Score Increase: Charisma +1', 1, '', '', NULL, 'abilityImprovement,cha,1'),
('Draconic Ancestry', 1, 'You are distantly related to a particular kind of dragon. Choose a type of dragon from the below list; this determines the damage and area of your breath weapon, and the type of resistance you gain.', '', 1, ''),
('Draconic Ancestry: Black', NULL, '', 'Draconic Ancestry', 0, ''),
('Draconic Ancestry: Blue', NULL, '', 'Draconic Ancestry', 0, ''),
('Draconic Ancestry: Brass', NULL, '', 'Draconic Ancestry', 0, ''),
('Draconic Ancestry: Bronze', NULL, '', 'Draconic Ancestry', 0, ''),
('Draconic Ancestry: Copper', NULL, '', 'Draconic Ancestry', 0, ''),
('Draconic Ancestry: Gold', NULL, '', 'Draconic Ancestry', 0, ''),
('Draconic Ancestry: Green', NULL, '', 'Draconic Ancestry', 0, ''),
('Draconic Ancestry: Red', NULL, '', 'Draconic Ancestry', 0, ''),
('Draconic Ancestry: Silver', NULL, '', 'Draconic Ancestry', 0, ''),
('Draconic Ancestry: White', NULL, '', 'Draconic Ancestry', 0, ''),
('Breath Weapon: Acid', NULL, 'You can use your action to exhale destructive energy. It deals damage in a 5'' by 30'' line. When you use your breath weapon, all creatures in the area must make a Dexterity saving throw. The DC of this saving throw is 8 + your Constitution modifier + your proficiency bonus. A creature takes 2d6 acid damage on a failed save, and half as much damage on a successful one. The damage increase to 3d6 at 6th level, 4d6 at 11th, and 5d6 at 16th level. After using your breath weapon, you cannot use it again until you complete a short or long rest.', 'Draconic Ancestry: Black', NULL, ''),
('Breath Weapon: Lightning', NULL, 'You can use your action to exhale destructive energy. It deals damage in a 5'' by 30'' line. When you use your breath weapon, all creatures in the area must make a Dexterity saving throw. The DC of this saving throw is 8 + your Constitution modifier + your proficiency bonus. A creature takes 2d6 lightning damage on a failed save, and half as much damage on a successful one. The damage increase to 3d6 at 6th level, 4d6 at 11th, and 5d6 at 16th level. After using your breath weapon, you cannot use it again until you complete a short or long rest.', 'Draconic Ancestry: Blue', NULL, ''),
('Breath Weapon: Fire', NULL, 'You can use your action to exhale destructive energy. It deals damage in a 5'' by 30'' line. When you use your breath weapon, all creatures in the area must make a Dexterity saving throw. The DC of this saving throw is 8 + your Constitution modifier + your proficiency bonus. A creature takes 2d6 fire damage on a failed save, and half as much damage on a successful one. The damage increase to 3d6 at 6th level, 4d6 at 11th, and 5d6 at 16th level. After using your breath weapon, you cannot use it again until you complete a short or long rest.', 'Draconic Ancestry: Brass', NULL, ''),
('Breath Weapon: Lightning', NULL, 'You can use your action to exhale destructive energy. It deals damage in a 5'' by 30'' line. When you use your breath weapon, all creatures in the area must make a Dexterity saving throw. The DC of this saving throw is 8 + your Constitution modifier + your proficiency bonus. A creature takes 2d6 lightning damage on a failed save, and half as much damage on a successful one. The damage increase to 3d6 at 6th level, 4d6 at 11th, and 5d6 at 16th level. After using your breath weapon, you cannot use it again until you complete a short or long rest.', 'Draconic Ancestry: Bronze', NULL, ''),
('Breath Weapon: Acid', NULL, 'You can use your action to exhale destructive energy. It deals damage in a 5'' by 30'' line. When you use your breath weapon, all creatures in the area must make a Dexterity saving throw. The DC of this saving throw is 8 + your Constitution modifier + your proficiency bonus. A creature takes 2d6 acid damage on a failed save, and half as much damage on a successful one. The damage increase to 3d6 at 6th level, 4d6 at 11th, and 5d6 at 16th level. After using your breath weapon, you cannot use it again until you complete a short or long rest.', 'Draconic Ancestry: Copper', NULL, ''),
('Breath Weapon: Fire', NULL, 'You can use your action to exhale destructive energy. It deals damage in a 15'' cone. When you use your breath weapon, all creatures in the area must make a Dexterity saving throw. The DC of this saving throw is 8 + your Constitution modifier + your proficiency bonus. A creature takes 2d6 fire damage on a failed save, and half as much damage on a successful one. The damage increase to 3d6 at 6th level, 4d6 at 11th, and 5d6 at 16th level. After using your breath weapon, you cannot use it again until you complete a short or long rest.', 'Draconic Ancestry: Gold', NULL, ''),
('Breath Weapon: Poison', NULL, 'You can use your action to exhale destructive energy. It deals damage in a 15'' cone. When you use your breath weapon, all creatures in the area must make a Constitution saving throw. The DC of this saving throw is 8 + your Constitution modifier + your proficiency bonus. A creature takes 2d6 poison damage on a failed save, and half as much damage on a successful one. The damage increase to 3d6 at 6th level, 4d6 at 11th, and 5d6 at 16th level. After using your breath weapon, you cannot use it again until you complete a short or long rest.', 'Draconic Ancestry: Green', NULL, ''),
('Breath Weapon: Fire', NULL, 'You can use your action to exhale destructive energy. It deals damage in a 15'' cone. When you use your breath weapon, all creatures in the area must make a Dexterity saving throw. The DC of this saving throw is 8 + your Constitution modifier + your proficiency bonus. A creature takes 2d6 fire damage on a failed save, and half as much damage on a successful one. The damage increase to 3d6 at 6th level, 4d6 at 11th, and 5d6 at 16th level. After using your breath weapon, you cannot use it again until you complete a short or long rest.', 'Draconic Ancestry: Red', NULL, ''),
('Breath Weapon: Cold', NULL, 'You can use your action to exhale destructive energy. It deals damage in a 15'' cone. When you use your breath weapon, all creatures in the area must make a Constitution saving throw. The DC of this saving throw is 8 + your Constitution modifier + your proficiency bonus. A creature takes 2d6 cold damage on a failed save, and half as much damage on a successful one. The damage increase to 3d6 at 6th level, 4d6 at 11th, and 5d6 at 16th level. After using your breath weapon, you cannot use it again until you complete a short or long rest.', 'Draconic Ancestry: Silver', NULL, ''),
('Breath Weapon: Cold', NULL, 'You can use your action to exhale destructive energy. It deals damage in a 15'' cone. When you use your breath weapon, all creatures in the area must make a Constitution saving throw. The DC of this saving throw is 8 + your Constitution modifier + your proficiency bonus. A creature takes 2d6 cold damage on a failed save, and half as much damage on a successful one. The damage increase to 3d6 at 6th level, 4d6 at 11th, and 5d6 at 16th level. After using your breath weapon, you cannot use it again until you complete a short or long rest.', 'Draconic Ancestry: White', NULL, ''),
('Damage Resistance: Acid', NULL, 'Black dragon heritage grants you resistance to acid damage.', 'Draconic Ancestry: Black', NULL, 'damageResistance,acid'),
('Damage Resistance: Lightning', NULL, 'Blue dragon heritage grants you resistance to lightning damage.', 'Draconic Ancestry: Blue', NULL, 'damageResistance,lightning'),
('Damage Resistance: Fire', NULL, 'Brass dragon heritage grants you resistance to fire damage.', 'Draconic Ancestry: Brass', NULL, 'damageResistance,fire'),
('Damage Resistance: Lightning', NULL, 'Bronze dragon heritage grants you resistance to lightning damage.', 'Draconic Ancestry: Bronze', NULL, 'damageResistance,lightning'),
('Damage Resistance: Acid', NULL, 'Copper dragon heritage grants you resistance to acid damage.', 'Draconic Ancestry: Copper', NULL, 'damageResistance,acid'),
('Damage Resistance: Fire', NULL, 'Gold dragon heritage grants you resistance to fire damage.', 'Draconic Ancestry: Gold', NULL, 'damageResistance,fire'),
('Damage Resistance: Poison', NULL, 'Green dragon heritage grants you resistance to poison damage.', 'Draconic Ancestry: Green', NULL, 'damageResistance,poison'),
('Damage Resistance: Fire', NULL, 'Red dragon heritage grants you resistance to fire damage.', 'Draconic Ancestry: Red', NULL, 'damageResistance,fire'),
('Damage Resistance: Cold', NULL, 'Silver dragon heritage grants you resistance to cold damage.', 'Draconic Ancestry: Silver', NULL, 'damageResistance,cold'),
('Damage Resistance: Cold', NULL, 'White dragon heritage grants you resistance to cold damage.', 'Draconic Ancestry: White', NULL, 'damageResistance,cold'),
('Ability Score Increase: Dexterity +2', 2, '', '', NULL, 'abilityImprovement,dex,2'),
('Ability Score Increase: Charisma +1', 2, '', '', NULL, 'abilityImprovement,cha,1'),
('Superior Darkvision', 2, 'You can see in dim light within 120 feet of you as if it were bright light, and in darkness as if it were dim light. You can''t discern color in darkness, only shades of gray.', '', NULL, 'superiorDarkvision'),
('Keen Senses', 2, 'You have proficiency in the Perception skill.', '', NULL, 'skillProficiency,13'),
('Fey Ancestry', 2, 'You have advantage on saving throws against being charmed, and magic can''t put you to sleep.', '', NULL, ''),
('Trance', 2, 'Elves do not sleep. Instead they meditate deeply, remaining semi-conscious, for 4 hours a day. The Common word for this meditation is "trance." While meditating, you dream after a fashion; such dreams are actually mental exercises that have become reflexive after years of practice. After resting in this way, you gain the same benefit a human would from 8 hours of sleep.', '', NULL, ''),
('Sunlight Sensitivity', 2, 'You have disadvantage on attack rolls and Wisdom (Perception) checks that rely on sight when you, the target of the attack, or whatever you are trying to perceive is in direct sunlight.', '', NULL, ''),
('Drow Magic', 2, 'You know the Dancing Lights cantrip. When you reach 3rd level, you can cast the Faerie Fire spell once with this trait and regain the ability to do so when you finish a long rest. When you reach 5th level, you can cast the Darkness spell onceand regain the ability to do so when you finish a long rest. Charisma is your spellcasting ability for these spells.', '', NULL, 'spell,86'),
('Drow Weapon Training', 2, 'You have proficiency with rapiers, shortswords, and hand crossbows.', '', NULL, 'weaponProficiency,single,27|weaponProficiency,single,29|weaponProficiency,single,35'),
('Ability Score Increase: Constitution +2', 3, '', '', NULL, 'abilityImprovement,con,2'),
('Ability Score Increase: Strength +1', 3, '', '', NULL, 'abilityImprovement,str,1'),
('Dwarven Resilience', 3, 'You have advantage on saving throws against poison, and you have resistance against poison damage.', '', NULL, 'damageResistance,poison'),
('Dwarven Combat Training', 3, 'You have proficiency with the battleaxe, handaxe, light hammer, and warhammer.', '', NULL, 'weaponProficiency,single,16|weaponProficiency,single,4|weaponProficiency,single,6|weaponProficiency,single,32'),
('Superior Darkvision', 3, 'You can see in dim light within 120 feet of you as if it were bright light, and in darkness as if it were dim light. You can''t discern color in darkness, only shades of gray.', '', NULL, 'superiorDarkvision'),
('Duergar Resilience', 3, 'You have advantage on saving throws against illusions and against being charmed or paralyzed.', '', NULL, ''),
('Duergar Magic', 3, 'Starting at 3rd level, you can cast the Enlarge/Reduce spell with this trait, without requiring a material component. Starting at 5th level, you can also cast the Invisibility spell with it, without requiring a material component. Once you cast either of these spells with this trait, you can’t cast that spell with it again until you finish a long rest. You can also cast these spells using spell slots you have of the appropriate level.
Intelligence, Wisdom, or Charisma is your spellcasting ability for these spells when you cast them with this trait (choose when you select this race).', '', NULL, ''),
('Sunlight Sensitivity', 3, 'You have disadvantage on attack rolls and Wisdom (Perception) checks that rely on sight when you, the target of the attack, or whatever you are trying to perceive is in direct sunlight.', '', NULL, ''),
('Ability Score Increase: Constitution +2', 4, '', '', NULL, 'abilityImprovement,con,2'),
('Ability Score Increase: Wisdom +1', 4, '', '', NULL, 'abilityImprovement,wis,1'),
('Darkvision', 4, 'Accustomed to life underground, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can''t discern color in darkness, only shades of gray.', '', NULL, 'darkvision'),
('Dwarven Resilience', 4, 'You have advantage on saving throws against poison, and you have resistance against poison damage.', '', NULL, 'damageResistance,poison'),
('Dwarven Combat Training', 4, 'You have proficiency with the battleaxe, handaxe, light hammer, and warhammer.', '', NULL, 'weaponProficiency,single,16|weaponProficiency,single,4|weaponProficiency,single,6|weaponProficiency,single,32'),
('Dwarven Toughness', 4, 'Your hit point maximum increases by 1, and it increases by 1 every time you gain a level.', '', NULL, 'bonusHP,1'),
('Ability Score Increase: Constitution +2', 5, '', '', NULL, 'abilityImprovement,con,2'),
('Ability Score Increase: Strength +2', 5, '', '', NULL, 'abilityImprovement,str,2'),
('Darkvision', 5, 'Accustomed to life underground, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can''t discern color in darkness, only shades of gray.', '', NULL, 'darkvision'),
('Dwarven Resilience', 5, 'You have advantage on saving throws against poison, and you have resistance against poison damage.', '', NULL, 'damageResistance,poison'),
('Dwarven Combat Training', 5, 'You have proficiency with the battleaxe, handaxe, light hammer, and warhammer.', '', NULL, 'weaponProficiency,single,16|weaponProficiency,single,4|weaponProficiency,single,6|weaponProficiency,single,32'),
('Dwarven Armor Training', 5, 'You have proficiency with light and medium armor.', '', NULL, 'armorProficiency,light|armorProficiency,med'),
('Ability Score Increase: Dexterity +2', 6, '', '', NULL, 'abilityImprovement,dex,2'),
('Ability Score Increase: Intelligence +1', 6, '', '', NULL, 'abilityImprovement,int,1'),
('Darkvision', 6, 'Accustomed to twilit forests and the night sky, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can''t discern color in darkness, only shades of gray.', '', NULL, 'darkvision'),
('Keen Senses', 6, 'You have proficiency in the Perception skill.', '', NULL, 'skillProficiency,13'),
('Fey Ancestry', 6, 'You have advantage on saving throws against being charmed, and magic can''t put you to sleep.', '', NULL, ''),
('Trance', 6, 'Elves do not sleep. Instead they meditate deeply, remaining semi-conscious, for 4 hours a day. The Common word for this meditation is "trance." While meditating, you dream after a fashion; such dreams are actually mental exercises that have become reflexive after years of practice. After resting in this way, you gain the same benefit a human would from 8 hours of sleep.', '', NULL, ''),
('Elf Weapon Training', 6, 'You have proficiency with the longsword, shortsword, shortbow, and longbow.', '', NULL, 'weaponProficiency,single,23|weaponProficiency,single,29|weaponProficiency,single,14|weaponProficiency,single,37'),
('Cantrip', 6, 'You know one cantrip of your choice from the Wizard spell list. Intelligence is your spellcasting ability for it.', '', NULL, 'spellSelect,wiz,0'),
('Ability Score Increase: Dexterity +2', 7, '', '', NULL, 'abilityImprovement,dex,2'),
('Ability Score Increase: Wisdom +1', 7, '', '', NULL, 'abilityImprovement,wis,1'),
('Darkvision', 7, 'Accustomed to twilit forests and the night sky, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can''t discern color in darkness, only shades of gray.', '', NULL, 'darkvision'),
('Keen Senses', 7, 'You have proficiency in the Perception skill.', '', NULL, 'skillProficiency,13'),
('Fey Ancestry', 7, 'You have advantage on saving throws against being charmed, and magic can''t put you to sleep.', '', NULL, ''),
('Trance', 7, 'Elves do not sleep. Instead they meditate deeply, remaining semi-conscious, for 4 hours a day. The Common word for this meditation is "trance." While meditating, you dream after a fashion; such dreams are actually mental exercises that have become reflexive after years of practice. After resting in this way, you gain the same benefit a human would from 8 hours of sleep.', '', NULL, ''),
('Elf Weapon Training', 7, 'You have proficiency with the longsword, shortsword, shortbow, and longbow.', '', NULL, 'weaponProficiency,single,23|weaponProficiency,single,29|weaponProficiency,single,14|weaponProficiency,single,37'),
('Fleet of Foot', 7, 'Your base walking speed increases to 35 feet.', '', NULL, ''),
('Mask of the Wild', 7, 'You can attempt to hide even when you are only lightly obscured by foliage, heavy rain, falling snow, mist, and other natural phenomena.', '', NULL, ''),
('Ability Score Increase: Dexterity +2', 8, '', '', NULL, 'abilityImprovement,dex,2'),
('Ability Score Increase: Charisma +1', 8, '', '', NULL, 'abilityImprovement,cha,1'),
('Lucky', 8, 'When you roll a 1 on an attack roll, ability check, or saving throw, you can reroll the die. You must use the new result, even if it is a 1.', '', NULL, ''),
('Brave', 8, 'You have advantage on saving throws against being frightened.', '', NULL, ''),
('Halfling Nimbleness', 8, 'You can move through the space of any creature that is of a size larger than yours.', '', NULL, ''),
('Naturally Stealthy', 8, 'You can attempt to hide even when you are only obscured by a creature that is at least one size larger than you.', '', NULL, ''),
('Ability Score Increase: Dexterity +2', 9, '', '', NULL, ''),
('Ability Score Increase: Constitution +1', 9, '', '', NULL, ''),
('Lucky', 9, 'When you roll a 1 on an attack roll, ability check, or saving throw, you can reroll the die. You must use the new result, even if it is a 1.', '', NULL, ''),
('Brave', 9, 'You have advantage on saving throws against being frightened.', '', NULL, ''),
('Halfling Nimbleness', 9, 'You can move through the space of any creature that is of a size larger than yours.', '', NULL, ''),
('Stout Resilience', 9, 'You have advantage on saving throws against poison, and you have resistance to poison damage.', '', NULL, 'damageResistance,poison'),
('Ability Score Increase: Charisma +2', 10, '', '', NULL, 'abilityImprovement,cha,2'),
('Ability Score Increase', 10, '', '', 1, ''),
('Ability Score Increase: Strength +1', NULL, '', 'Ability Score Increase', NULL, 'abilityImprovement,str,1'),
('Ability Score Increase: Dexterity +1', NULL, '', 'Ability Score Increase', NULL, 'abilityImprovement,dex,1'),
('Ability Score Increase: Constitution +1', NULL, '', 'Ability Score Increase', NULL, 'abilityImprovement,con,1'),
('Ability Score Increase: Intelligence +1', NULL, '', 'Ability Score Increase', NULL, 'abilityImprovement,int,1'),
('Ability Score Increase: Wisdom +1', NULL, '', 'Ability Score Increase', NULL, 'abilityImprovement,wis,1'),
('Ability Score Increase: Charisma +1', NULL, '', 'Ability Score Increase', NULL, 'abilityImprovement,cha,1'),
('Ability Score Increase', 10, '', '', 1, ''),
('Darkvision', 10, 'Thanks to your elven heritage, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can''t discern color in darkness, only shades of gray.', '', NULL, 'darkvision'),
('Fey Ancestry', 10, 'You have advantage on saving throws against being charmed, and magic can''t put you to sleep.', '', NULL, ''),
('Half-Elf Versatility: High Elf Heritage', 10, 'Choose one of the following traits:', '', 1, ''),
('Elf Weapon Training', NULL, 'You have proficiency with the longsword, shortsword, shortbow, and longbow.', 'Half-Elf Versatility: High Elf Heritage', NULL, 'weaponProficiency,single,23|weaponProficiency,single,29|weaponProficiency,single,14|weaponProficiency,single,37'),
('Cantrip', NULL, 'You know one cantrip of your choice from the wizard spell list. Intelligence is your spellcasting ability for it.', 'Half-Elf Versatility: High Elf Heritage', NULL, 'spellSelect,wiz,0'),
('Skill Versatility', NULL, 'You gain proficiency in two skills of your choice.', 'Half-Elf Versatility: High Elf Heritage', NULL, 'skillSelectAny|skillSelectAny'),
('Ability Score Increase: Charisma +2', 11, '', '', NULL, 'abilityImprovement,cha,2'),
('Ability Score Increase', 11, '', '', 1, ''),
('Ability Score Increase', 11, '', '', 1, ''),
('Darkvision', 11, 'Thanks to your elven heritage, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can''t discern color in darkness, only shades of gray.', '', NULL, 'darkvision'),
('Fey Ancestry', 11, 'You have advantage on saving throws against being charmed, and magic can''t put you to sleep.', '', NULL, ''),
('Half-Elf Versatility: Wood Elf Heritage', 11, 'Choose one of the following traits:', '', 1, ''),
('Fleet of Foot', NULL, 'Your base walking speed increases to 35 feet.', 'Half-Elf Versatility: Wood Elf Heritage', NULL, 'bonusSpeed,5'),
('Mask of the Wild', NULL, 'You can attempt to hide even when you are only lightly obscured by foliage, heavy rain, falling snow, mist, and other natural phenomena.', 'Half-Elf Versatility: Wood Elf Heritage', NULL, ''),
('Elf Weapon Training', NULL, 'You have proficiency with the longsword, shortsword, shortbow, and longbow.', 'Half-Elf Versatility: Wood Elf Heritage', NULL, 'weaponProficiency,single,23|weaponProficiency,single,29|weaponProficiency,single,14|weaponProficiency,single,37'),
('Skill Versatility', NULL, 'You gain proficiency in two skills of your choice.', 'Half-Elf Versatility: Wood Elf Heritage', NULL, 'skillSelectAny|skillSelectAny'),
('Ability Score Increase: Charisma +2', 12, '', '', NULL, 'abilityImprovement,cha,2'),
('Ability Score Increase', 12, '', '', 1, ''),
('Ability Score Increase', 12, '', '', 1, ''),
('Darkvision', 12, 'Thanks to your elven heritage, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can''t discern color in darkness, only shades of gray.', '', NULL, 'darkvision'),
('Fey Ancestry', 12, 'You have advantage on saving throws against being charmed, and magic can''t put you to sleep.', '', NULL, ''),
('Half-Elf Versatility: Drow Heritage', 12, 'Choose one of the following traits:', '', 1, ''),
('Drow Magic', NULL, 'You know the Dancing Lights cantrip. When you reach 3rd level, you can cast Faerie Fire once, and it recharges after a long rest. When you reach 5th level, you can cast Darkness once, and it recharges after a long rest. Charisma is your spellcasting ability for these spells.', 'Half-Elf Versatility: Drow Elf Heritage', NULL, 'spell,86'),
('Skill Versatility', NULL, 'You gain proficiency in two skills of your choice.', 'Half-Elf Versatility: Drow Elf Heritage', NULL, 'skillSelectAny|skillSelectAny'),
('Ability Score Increase: Strength +2', 13, '', '', NULL, 'abilityImprovement,str,2'),
('Ability Score Increase: Constitution +1', 13, '', '', NULL, 'abilityImprovement,con,1'),
('Darkvision', 13, 'Thanks to your orc blood, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can''t discern color in darkness, only shades of gray.', '', NULL, 'darkvision'),
('Menacing', 13, 'You gain proficiency in the Intimidation skill.', '', NULL, 'skillProficiency,16'),
('Relentless Endurance', 13, 'When you are reduced to 0 hit points but not killed outright, you can drop to 1 hit point instead. You can''t use this feature again until you finish a long rest.', '', NULL, ''),
('Savage Attacks', 13, 'When you score a critical hit with a melee weapon attack, you can roll one of the weapon''s damage dice one additional time and add it to the extra damage of the critical hit.', '', NULL, ''),
('Ability Score Increase: All +1', 14, '', '', NULL, 'abilityImprovement,str,1|AbilityImprovement,dex,1|AbilityImprovement,con,1|AbilityImprovement,int,1|AbilityImprovement,wis,1|AbilityImprovement,cha,1'),
('Ability Score Increase: Intelligence +2', 15, '', '', NULL, 'abilityImprovement,int,2'),
('Ability Score Increase: Dexterity +1', 15, '', '', NULL, 'abilityImprovement,dex,1'),
('Gnome Cunning', 15, 'You have advantage on all Intelligence, Wisdom, and Charisma saves against magic.', '', NULL, ''),
('Superior Darkvision', 15, 'You can see in dim light within 120 feet of you as if it were bright light, and in darkness as if it were dim light. You can''t discern color in darkness, only shades of gray.', '', NULL, 'superiorDarkvision'),
('Stone Camouflage', 15, 'You have advantage on Dexterity (stealth) checks to hide in rocky terrain.', '', NULL, ''),
('Ability Score Increase: Intelligence +2', 16, '', '', NULL, 'abilityImprovement,int,2'),
('Ability Score Increase: Dexterity +1', 16, '', '', NULL, 'abilityImprovement,dex,1'),
('Gnome Cunning', 16, 'You have advantage on all Intelligence, Wisdom, and Charisma saves against magic.', '', NULL, ''),
('Darkvision', 16, 'Accustomed to life underground, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can''t discern color in darkness, only shades of gray.', '', NULL, 'superiorDarkvision'),
('Natural Illusionist', 16, 'You know the Minor Illusion cantrip. Intelligence is your spellcasting modifier for it.', '', NULL, 'spell,229'),
('Speak with Small Beasts', 16, 'Through sound and gestures, you may communicate simple ideas with Small or smaller beasts.', '', NULL, ''),
('Ability Score Increase: Intelligence +2', 17, '', '', NULL, 'abilityImprovement,int,2'),
('Ability Score Increase: Constitution +1', 17, '', '', NULL, 'abilityImprovement,con,1'),
('Gnome Cunning', 17, 'You have advantage on all Intelligence, Wisdom, and Charisma saves against magic.', '', NULL, ''),
('Darkvision', 17, 'Accustomed to life underground, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can''t discern color in darkness, only shades of gray.', '', NULL, 'darkvision'),
('Artificer''s Lore', 17, 'Whenever you make an Intelligence (History) check related to magical, alchemical, or technological items, you can add twice your proficiency bonus instead of any other proficiency bonus that may apply.', '', NULL, ''),
('Tinker', 17, 'You have proficiency with artisan tools (tinker''s tools). Using those tools, you can spend 1 hour and 10 gp worth of materials to construct a Tiny clockwork device (AC 5, 1 hp). The device ceases to function after 24 hours (unless you spend 1 hour repairing it to keep the device functioning), or when you use your action to dismantle it; at that time, you can reclaim the materials used to create it. You can have up to three such devices active at a time. When you create a device, choose one of the following options:
- Clockwork Toy. This toy is a clockwork animal, monster, or person, such as a frog, mouse, bird, dragon, or soldier. When placed on the ground, the toy moves 5 feet across the ground on each of your turns in a random direction. It makes noises as appropriate to the creature it represents.
- Fire Starter. The device produces a miniature flame, which you can use to light a candle, torch, or campfire. Using the device requires your action.
- Music Box. When opened, this music box plays a single song at a moderate volume. The box stops playing when it reaches the song''s end or when it is closed.
At your DM''s discretion, you may make other objects with effects similar in power to these. The Prestidigitation cantrip is a good baseline for such effects.', '', NULL, ''),
('Ability Score Increase: Charisma +2', 18, '', '', NULL, 'abilityImprovement,cha,2'),
('Ability Score Increase Intelligence +1', 18, '', '', NULL, 'abilityImprovement,int,1'),
('Darkvision', 18, 'Thanks to your infernal heritage, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can’t discern color in darkness, only shades of gray.', '', NULL, 'darkvision'),
('Hellish Resistance', 18, 'You have resistance to fire damage.', '', NULL, 'damageResistance,fire'),
('Infernal Legacy', 18, 'You know the Thaumaturgy cantrip. Once you reach 3rd level, you can cast the Hellish Rebuke spell once as a 2nd-level spell. Once you reach 5th level, you can also cast the Darkness spell once. You must finish a long rest to cast these spells again with this trait. Charisma is your spellcasting ability for these spells.', '', NULL, 'spell,329'),
('Ability Score Increase: Charisma +2', 19, '', '', NULL, 'abilityImprovement,cha,2'),
('Ability Score Increase Intelligence +1', 19, '', '', NULL, 'abilityImprovement,int,1'),
('Darkvision', 19, 'Thanks to your infernal heritage, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can’t discern color in darkness, only shades of gray.', '', NULL, 'darkvision'),
('Hellish Resistance', 19, 'You have resistance to fire damage.', '', NULL, 'damageResistance,fire'),
('Legacy of Cania', 19, 'You know the Mage Hand cantrip. Once you reach 3rd level, you can cast the Burning Hands spell once as a 2nd-level spell. Once you reach 5th level, you can also cast the Flame Blade spell once as a 3rd-level spell. You must finish a long rest to cast these spells again with this trait. Charisma is your spellcasting ability for these spells.', '', NULL, 'spell,211'),
('Ability Score Increase: Charisma +2', 20, '', '', NULL, 'abilityImprovement,cha,2'),
('Ability Score Increase Strength +1', 20, '', '', NULL, 'abilityImprovement,str,1'),
('Darkvision', 20, 'Thanks to your infernal heritage, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can’t discern color in darkness, only shades of gray.', '', NULL, 'darkvision'),
('Hellish Resistance', 20, 'You have resistance to fire damage.', '', NULL, 'damageResistance,fire'),
('Legacy of Avernus', 20, 'You know the Thaumaturgy cantrip. Once you reach 3rd level, you can cast the Searing Smite spell once as a 2nd-level spell. Once you reach 5th level, you can also cast the Branding Smite spell once as a 3rd-level spell. You must finish a long rest to cast these spells again with this trait. Charisma is your spellcasting ability for these spells.', '', NULL, 'spell,329');
end
if not exists (select 1 from dbo.[Feats])
begin
	insert into dbo.[Feats] ([Name], [Description], [Requirements], [ParentFeatName], [FeatSubselections], [CanTakeMultiple], [Tags])
	values ('Ability Score Improvement', 'You can increase one ability score of your choice by 2, or you can increase two ability scores of your choice by 1. As normal, you can’t increase an ability score above 20 using this feature.', '', '', 2, 'TRUE', ''),
('Ability Score Increase: Strength +1', '', '', 'Ability Score Improvement', NULL, 'FALSE', 'abilityImprovement,str,1'),
('Ability Score Increase: Dexterity +1', '', '', 'Ability Score Improvement', NULL, 'FALSE', 'abilityImprovement,dex,1'),
('Ability Score Increase: Constitution +1', '', '', 'Ability Score Improvement', NULL, 'FALSE', 'abilityImprovement,con,1'),
('Ability Score Increase: Intelligence +1', '', '', 'Ability Score Improvement', NULL, 'FALSE', 'abilityImprovement,int,1'),
('Ability Score Increase: Wisdom +1', '', '', 'Ability Score Improvement', NULL, 'FALSE', 'abilityImprovement,wis,1'),
('Ability Score Increase: Charisma +1', '', '', 'Ability Score Improvement', NULL, 'FALSE', 'abilityImprovement,cha,1'),
('Actor', 'Skilled at mimicry and dramatics, you gain the following benefits:

- Increase your Charisma score by 1, to a maximum of 20.
You have an advantage on Charisma (Deception) and Charisma (Performance) checks when trying to pass yourself off as a different person.
- You can mimic the speech of another person or the sounds made by other creatures. You must have heard the person speaking, or heard the creature make the sound, for at least 1 minute. A successful Wisdom (Insight) check contested by your Charisma (Deception) check allows a listener to determine that the effect is faked.', '', '', NULL, 'FALSE', 'abilityImprovement,cha,1'),
('Alert', 'Always on the lookout for danger, you gain the following benefits:

- You can''t be surprised while you are conscious.
- You gain a +5 bonus to initiative.
- Other creatures don''t gain advantage on attack rolls against you as a result of being unseen by you.', '', '', NULL, 'FALSE', 'bonusInitiative,5'),
('Athlete', 'You have undergone extensive physical training to gain the following benefits:

- Increase your Strength or Dexterity score by 1, to a maximum of 20.
- When you are prone, standing up uses only 5 feet of your movement.
- Climbing doesn''t cost you extra movement.
- You can make a running long jump or a running high jump after moving only 5 feet on foot, rather than 10 feet.', '', '', 1, 'FALSE', ''),
('Ability Score Increase: Strength +1', '', '', 'Athlete', NULL, 'FALSE', 'abilityImprovement,str,1'),
('Ability Score Increase: Dexterity +1', '', '', 'Athlete', NULL, 'FALSE', 'abilityImprovement,dex,1'),
('Charger', 'When you use your action to Dash, you can use a bonus action to make one melee weapon attack or to shove a creature. If you move at least 10 feet in a straight line immediately before taking this bonus action, you either gain a +5 bonus to the attack’s damage roll (if you chose to make a melee attack and hit) or push the target up to 10 feet away from you (if you chose to shove and you succeed).', '', '', NULL, 'FALSE', ''),
('Crossbow Expert', 'Thanks to extensive practice with the crossbow, you gain the following benefits:

- You ignore the loading quality of crossbows with which you are proficient.
- Being within 5 feet of a hostile creature doesn’t impose disadvantage on your ranged attack rolls.
- When you use the Attack action and attack with a one handed weapon, you can use a bonus action to attack with a hand crossbow you are holding.', '', '', NULL, 'FALSE', ''),
('Defensive Duelist', 'When you are wielding a finesse weapon with which you are proficient and another creature hits you with a melee attack, you can use your reaction to add your proficiency bonus to your AC for that attack, potentially causing the attack to miss you.', 'abilityScore,dex,13', '', NULL, 'FALSE', ''),
('Dual Wielder', 'You master fighting with two weapons, gaining the following benefits:

- You gain a +1 bonus to AC while you are wielding a separate melee weapon in each hand.
- You can use two-weapon fighting even when the one handed melee weapons you are wielding aren''t light.
- You can draw or stow two one-handed weapons when you would normally be able to draw or stow only one.', '', '', NULL, 'FALSE', 'dualWielder'),
('Dungeon Delver', 'Alert to the hidden traps and secret doors found in many dungeons, you gain the following benefits:

- You have advantage on Wisdom (Perception) and Intelligence (Investigation) checks made to detect the presence of secret doors.
- You have advantage on saving throws made to avoid or resist traps.
- You have resistance to the damage dealt by traps.
- Travelling at a fast pace doesn''t impose the normal -5 penalty on your passive Wisdom (Perception) score.', '', '', NULL, 'FALSE', ''),
('Durable', 'Hardy and resilient, you gain the following benefits:

- Increase your Constitution score by 1, to a maximum of 20.
- When you roll a Hit Die to regain hit points, the minimum number of hit points you regain from the roll equals twice your Constitution modifier (minimum of 2).', '', '', NULL, 'FALSE', 'abilityImprovement,con,1'),
('Elemental Adept: Acid', 'When you gain this feat, choose one of the following damage types: acid, cold, fire, lightning, or thunder.

- Spells you cast ignore resistance to damage of the chosen type. In addition, when you roll damage for a spell you cast that deals damage of that type, you can treat any 1 on a damage die as a 2.
- You can select this feat multiple times. Each time you do so, you must choose a different damage type.', 'spellcastingAbility', '', NULL, 'FALSE', ''),
('Elemental Adept: Cold', 'When you gain this feat, choose one of the following damage types: acid, cold, fire, lightning, or thunder.

- Spells you cast ignore resistance to damage of the chosen type. In addition, when you roll damage for a spell you cast that deals damage of that type, you can treat any 1 on a damage die as a 2.
- You can select this feat multiple times. Each time you do so, you must choose a different damage type.', 'spellcastingAbility', '', NULL, 'FALSE', ''),
('Elemental Adept: Fire', 'When you gain this feat, choose one of the following damage types: acid, cold, fire, lightning, or thunder.

- Spells you cast ignore resistance to damage of the chosen type. In addition, when you roll damage for a spell you cast that deals damage of that type, you can treat any 1 on a damage die as a 2.
- You can select this feat multiple times. Each time you do so, you must choose a different damage type.', 'spellcastingAbility', '', NULL, 'FALSE', ''),
('Elemental Adept: Lightning', 'When you gain this feat, choose one of the following damage types: acid, cold, fire, lightning, or thunder.

- Spells you cast ignore resistance to damage of the chosen type. In addition, when you roll damage for a spell you cast that deals damage of that type, you can treat any 1 on a damage die as a 2.
- You can select this feat multiple times. Each time you do so, you must choose a different damage type.', 'spellcastingAbility', '', NULL, 'FALSE', ''),
('Elemental Adept: Thunder', 'When you gain this feat, choose one of the following damage types: acid, cold, fire, lightning, or thunder.

- Spells you cast ignore resistance to damage of the chosen type. In addition, when you roll damage for a spell you cast that deals damage of that type, you can treat any 1 on a damage die as a 2.
- You can select this feat multiple times. Each time you do so, you must choose a different damage type.', 'spellcastingAbility', '', NULL, 'FALSE', ''),
('Grappler', 'You''ve developed the skills necessary to hold your own in close-quarters grappling. You gain the following benefits:

- You have advantage on attack rolls against a creature you are grappling.
- You can use your action to try to pin a creature grappled by you. To do so, make another grapple check. If you succeed, you and the creature are both restrained until the grapple ends.', 'abilityScore,str,13', '', NULL, 'FALSE', ''),
('Great Weapon Master', 'You''ve learned to put the weight of a weapon to your advantage, letting its momentum empower your strikes. You gain the following benefits:

On your turn, when you score a critical hit with a melee weapon or reduce a creature to 0 hit points with one, you can make one melee weapon attack as a bonus action.
Before you make a melee attack with a heavy weapon that you are proficient with, you can choose to take a -5 penalty to the attack roll. If the attack hits, you add +10 to the attack''s damage.', '', '', NULL, 'FALSE', ''),
('Healer', 'You are an able physician, allowing you to mend wounds quickly and get your allies back in the fight. You gain the following benefits:

- When you use a healer''s kit to stabilize a dying creature, that creature also regains 1 hit point.
- As an action. you can spend one use of a healer''s kit to tend to a creature and restore 1d6 + 4 hit points to it, plus additional hit points equal to the creature''s maximum number of Hit Dice. The creature can''t regain hit points from this feat again until it finishes a short or long rest.', '', '', NULL, 'FALSE', ''),
('Heavily Armored', 'You have trained to master the use of heavy armor, gaining the following benefits:

- Increase your Strength score by 1, to a maximum of 20.
- You gain proficiency with heavy armor.', 'armorProficiency,medium', '', NULL, 'FALSE', 'abilityImprovement,str,1|armorProficiency,heavy'),
('Heavy Armor Master', 'You can use your armor to deflect strikes that would kill others. You gain the following benefits:

- Increase your Strength score by 1, to a maximum of 20.
- While you are wearing heavy armor, bludgeoning, piercing, and slashing damage that you take from nonmagical attacks is reduced by 3.', 'armorProficiency,heavy', '', NULL, 'FALSE', 'abilityImprovement,str,1'),
('Inspiring Leader', 'You can spend 10 minutes inspiring your companions, shoring up their resolve to fight. When you do so, choose up to six friendly creatures (which can include yourself) within 30 feet of you who can see or hear you and who can understand you. Each creature can gain temporary hit points equal to your level + your Charisma modifier. A creature can''t gain temporary hit points from this feat again until it has finished a short or long rest.', 'abilityScore,cha,13', '', NULL, 'FALSE', ''),
('Keen Mind', 'You have a mind that can track time, direction, and detail with uncanny precision. You gain the following benefits.

- Increase your Intelligence score by 1, to a maximum of 20.
- You always know which way is north.
- You always know the number of hours left before the next sunrise or sunset.
- You can accurately recall anything you have seen or heard within the past month.', '', '', NULL, 'FALSE', 'abilityImprovement,int,1'),
('Lightly Armored', 'You have trained to master the use of light armor, gaining the following benefits.

- Increase your Strength or Dexterity score by 1, to a maximum of 20.
- You gain proficiency with light armor.', '', '', 1, 'FALSE', 'armorProficiency,light'),
('Ability Score Increase: Strength +1', '', '', 'Lightly Armored', NULL, 'FALSE', 'abilityImprovement,str,1'),
('Ability Score Increase: Dexterity +1', '', '', 'Lightly Armored', NULL, 'FALSE', 'abilityImprovement,dex,1'),
('Linguist', 'You have studied languages and codes, gaining the following benefits:

- Increase your Intelligence score by 1, to a maximum of 20.
- You learn three languages of your choice.
- You can ably create written ciphers. Others can''t decipher a code you create unless you teach them, they succeed on an Intelligence check (DC equal to your Intelligence score + your proficiency bonus), or they use magic to decipher it.', '', '', NULL, 'FALSE', 'abilityImprovement,int,1'),
('Lucky', 'You have inexplicable luck that seems to kick in at just the right moment.

You have 3 luck points. Whenever you make an attack roll, an ability check, or a saving throw, you can spend one luck point to roll an additional d20. You can choose to spend one of your luck points after you roll the die, but before the outcome is determined. You choose which of the d20s is used for the attack roll, ability check, or saving throw.

You can also spend one luck point when an attack roll is made against you. Roll a d20 and then choose whether the attack uses the attacker''s roll or yours.

If more than one creature spends a luck point to influence the outcome of a roll, the points cancel each other out; no additional dice are rolled.

You regain your expended luck points when you finish a long rest.', '', '', NULL, 'FALSE', ''),
('Mage Slayer', 'You have practiced techniques in melee combat against spellcasters, gaining the following benefits.

- When a creature within 5 feet of you casts a spell, you can use your reaction to make a melee weapon attack against that creature.
- When you damage a creature that is concentrating on a spell, that creature has disadvantage on the saving throw it makes to maintain its concentration.
- You have advantage on saving throws against spells cast by creatures within 5 feet of you.', '', '', NULL, 'FALSE', ''),
('Magic Initiate: Bard', 'Choose a class: bard, cleric, druid, sorcerer, warlock, or wizard. You learn two cantrips of your choice from that class''s spell list.

In addition, choose one 1st-level spell to learn from that same list. Using this feat, you can cast the spell once at its lowest level, and you must finish a long rest before you can cast it in this way again.

Your spellcasting ability for these spells depends on the class you chose: Charisma for bard, sorcerer, or warlock; Wisdom for cleric or druid; or Intelligence for wizard.', '', '', NULL, 'FALSE', 'spellSelect,bar,0|spellSelect,bar,0|spellSelect,bar,1'),
('Magic Initiate: Cleric', 'Choose a class: bard, cleric, druid, sorcerer, warlock, or wizard. You learn two cantrips of your choice from that class''s spell list.

In addition, choose one 1st-level spell to learn from that same list. Using this feat, you can cast the spell once at its lowest level, and you must finish a long rest before you can cast it in this way again.

Your spellcasting ability for these spells depends on the class you chose: Charisma for bard, sorcerer, or warlock; Wisdom for cleric or druid; or Intelligence for wizard.', '', '', NULL, 'FALSE', 'spellSelect,cle,0|spellSelect,cle,0|spellSelect,cle,1'),
('Magic Initiate: Druid', 'Choose a class: bard, cleric, druid, sorcerer, warlock, or wizard. You learn two cantrips of your choice from that class''s spell list.

In addition, choose one 1st-level spell to learn from that same list. Using this feat, you can cast the spell once at its lowest level, and you must finish a long rest before you can cast it in this way again.

Your spellcasting ability for these spells depends on the class you chose: Charisma for bard, sorcerer, or warlock; Wisdom for cleric or druid; or Intelligence for wizard.', '', '', NULL, 'FALSE', 'spellSelect,dru,0|spellSelect,dru,0|spellSelect,dru,1'),
('Magic Initiate: Sorcerer', 'Choose a class: bard, cleric, druid, sorcerer, warlock, or wizard. You learn two cantrips of your choice from that class''s spell list.

In addition, choose one 1st-level spell to learn from that same list. Using this feat, you can cast the spell once at its lowest level, and you must finish a long rest before you can cast it in this way again.

Your spellcasting ability for these spells depends on the class you chose: Charisma for bard, sorcerer, or warlock; Wisdom for cleric or druid; or Intelligence for wizard.', '', '', NULL, 'FALSE', 'spellSelect,sor,0|spellSelect,sor,0|spellSelect,sor,1'),
('Magic Initiate: Warlock', 'Choose a class: bard, cleric, druid, sorcerer, warlock, or wizard. You learn two cantrips of your choice from that class''s spell list.

In addition, choose one 1st-level spell to learn from that same list. Using this feat, you can cast the spell once at its lowest level, and you must finish a long rest before you can cast it in this way again.

Your spellcasting ability for these spells depends on the class you chose: Charisma for bard, sorcerer, or warlock; Wisdom for cleric or druid; or Intelligence for wizard.', '', '', NULL, 'FALSE', 'spellSelect,war,0|spellSelect,war,0|spellSelect,war,1'),
('Magic Initiate: Wizard', 'Choose a class: bard, cleric, druid, sorcerer, warlock, or wizard. You learn two cantrips of your choice from that class''s spell list.

In addition, choose one 1st-level spell to learn from that same list. Using this feat, you can cast the spell once at its lowest level, and you must finish a long rest before you can cast it in this way again.

Your spellcasting ability for these spells depends on the class you chose: Charisma for bard, sorcerer, or warlock; Wisdom for cleric or druid; or Intelligence for wizard.', '', '', NULL, 'FALSE', 'spellSelect,wiz,0|spellSelect,wiz,0|spellSelect,wiz,1'),
('Martial Adept', 'You have martial training that allows you to perform special combat maneuvers. You gain the following benefits.

- You learn two maneuvers of your choice from among those available to the Battle Master archetype in the fighter class. If a maneuver you use requires your target to make a saving throw to resist the maneuver''s effects, the saving throw DC equals 8 + your proficiency bonus + your Strength or Dexterity modifier (your choice).
- You gain one superiority die, which is a d6 (this die is added to any superiority dice you have from another source). This die is used to fuel your maneuvers. A superiority die is expended when you use it. You regain your expended superiority dice when you finish a short or long rest.', '', '', 2, 'FALSE', ''),
('Commander''s Strike', 'When you take the Attack action on your turn, you can forgo one of your attacks and use a bonus action to direct one of your companions to strike. When you do so, choose a friendly creature who can see or hear you and expend one superiority die. That creature can immediately use its reaction to make one weapon attack, adding the superiority die to the attack''s damage roll.', '', 'Martial Adept', NULL, 'FALSE', ''),
('Disarming Attack', 'When you hit a creature with a weapon attack, you can expend one superiority die to attempt to disarm the target, forcing it to drop one item of your choice that it''s holding. You add the superiority die to the attack''s damage roll, and the target must make a Strength saving throw. On a failed save, it drops the object you choose. The object lands at its feet.', '', 'Martial Adept', NULL, 'FALSE', ''),
('Distracting Strike', 'When you hit a creature with a weapon attack, you can expend one superiority die to distract the creature, giving your allies an opening. You add the superiority die to the attack''s damage roll. The next attack roll against the target by an attacker other than you has advantage if the attack is made before the start of your next turn.', '', 'Martial Adept', NULL, 'FALSE', ''),
('Evasive Footwork', 'When you move, you can expend one superiority die, rolling the die and adding the number rolled to your AC until you stop moving.', '', 'Martial Adept', NULL, 'FALSE', ''),
('Feinting Attack', 'You can expend one superiority die and use a bonus action on your turn to feint, choosing one creature within 5 feet of you as your target. You have advantage on your next attack roll against that creature this turn. If that attack hits, add the superiority die to the attack''s damage roll.', '', 'Martial Adept', NULL, 'FALSE', ''),
('Goading Attack', 'When you hit a creature with a weapon attack, you can expend one superiority die to attempt to goad the target into attacking you. You add the superiority die to the attack''s damage roll, and the target must make a Wisdom saving throw. On a failed save, the target has disadvantage on all attack rolls against targets other than you until the end of your next turn.', '', 'Martial Adept', NULL, 'FALSE', ''),
('Lunging Attack', 'When you make a melee weapon attack on your turn, you can expend one superiority die to increase your reach for that attack by 5 feet. If you hit, you add the superiority die to the attack''s damage roll.', '', 'Martial Adept', NULL, 'FALSE', ''),
('Maneuvering Attack', 'When you hit a creature with a weapon attack, you can expend one superiority die to maneuver one of your comrades into a more advantageous position. You add the superiority die to the attack''s damage roll, and you choose a friendly creature who can see or hear you. That creature can use its reaction to move up to half its speed without provoking opportunity attacks from the target of your attack.', '', 'Martial Adept', NULL, 'FALSE', ''),
('Menacing Attack', 'When you hit a creature with a weapon attack, you can expend one superiority die to attempt to frighten the target. You add the superiority die to the attack''s damage roll, and the target must make a Wisdom saving throw. On a failed save, it is frightened of you until the end of your next turn.', '', 'Martial Adept', NULL, 'FALSE', ''),
('Parry', 'When another creature damages you with a melee attack, you can use your reaction and expend one superiority die to reduce the damage by the number you roll on your superiority die + your Dexterity modifier.', '', 'Martial Adept', NULL, 'FALSE', ''),
('Precision Attack', 'When you make a weapon attack roll against a creature, you can expend one superiority die to add it to the roll. You can use this maneuver before or after making the attack roll, but before any effects of the attack are applied.', '', 'Martial Adept', NULL, 'FALSE', ''),
('Pushing Attack', 'When you hit a creature with a weapon attack, you can expend one superiority die to attempt to drive the target back. You add the superiority die to the attack''s damage roll, and if the target is Large or smaller, it must make a Strength saving throw. On a failed save, you push the target up to 15 feet away from you.', '', 'Martial Adept', NULL, 'FALSE', ''),
('Rally', 'On your turn, you can use a bonus action and expend one superiority die to bolster the resolve of one of your companions. When you do so, choose a friendly creature who can see or hear you. That creature gains temporary hit points equal to the superiority die roll + your Charisma modifier.', '', 'Martial Adept', NULL, 'FALSE', ''),
('Riposte', 'When a creature misses you with a melee attack, you can use your reaction and expend one superiority die to make a melee weapon attack against the creature. If you hit, you add the superiority die to the attack''s damage roll.', '', 'Martial Adept', NULL, 'FALSE', ''),
('Sweeping Attack', 'When you hit a creature with a melee weapon attack, you can expend one superiority die to attempt to damage another creature with the same attack. Choose another creature within 5 feet of the original target and within your reach. If the original attack roll would hit the second creature, it takes damage equal to the number you roll on your superiority die. The damage is of the same type dealt by the original attack.', '', 'Martial Adept', NULL, 'FALSE', ''),
('Trip Attack', 'When you hit a creature with a weapon attack, you can expend one superiority die to attempt to knock the target down. You add the superiority die to the attack''s damage roll, and if the target is Large or smaller, it must make a Strength saving throw. On a failed save, you knock the target prone.', '', 'Martial Adept', NULL, 'FALSE', ''),
('Medium Armor Master', 'You have practiced moving in medium armor to gain the following benefits:

- Wearing medium armor doesn''t impose disadvantage on your Dexterity (Stealth) checks.
- When you wear medium armor, you can add 3, rather than 2, to your AC if you have a Dexterity of 16 or higher.', 'armorProficiency,medium', '', NULL, 'FALSE', 'mediumArmorMaster'),
('Mobile', 'You are exceptionally speedy and agile. You gain the following benefits:

- Your speed increases by 10 feet.
- When you use the Dash action, difficult terrain doesn''t cost you extra movement on that turn.
- When you make a melee attack against a creature, you don''t provoke opportunity attacks from that creature for the rest of the turn, whether you hit or not.', '', '', NULL, 'FALSE', 'bonusSpeed,10'),
('Moderately Armored', 'You have trained to master the use of medium armor and shields, gaining the following benefits:

- Increase your Strength or Dexterity score by 1, to a maximum of 20.
- You gain proficiency with medium armor and shields.', 'armorProficiency,light', '', 1, 'FALSE', 'weaponProficiency,single,38|armorProficiency,medium'),
('Ability Score Increase: Strength +1', '', '', 'Moderately Armored', NULL, 'FALSE', 'abilityImprovement,str,1'),
('Ability Score Increase: Dexterity +1', '', '', 'Moderately Armored', NULL, 'FALSE', 'abilityImprovement,dex,1'),
('Mounted Combatant', 'You are a dangerous foe to face while mounted. While you are mounted and aren''t incapacitated, you gain the following benefits:

- You have advantage on melee attack rolls against any unmounted creature that is smaller than your mount.
- You can force an attack targeted at your mount to target you instead.
- If your mount is subjected to an effect that allows it to make Dexterity saving throw to take only half damage, it instead takes no damage if it succeeds on the saving throw, and only half damage if it fails.', '', '', NULL, 'FALSE', ''),
('Observant', 'Quick to notice details of your environment, you gain the following benefits:

- Increase your Intelligence or Wisdom score by 1, to a maximum of 20.
- If you can see a creature''s mouth while it is speaking a language you understand, you can interpret what it''s saying by reading its lips.
- You have a +5 bonus to your passive Wisdom (Perception) and passive Intelligence (Investigation) scores.', '', '', 1, 'FALSE', 'skillValueBonus,13,5|skillValueBonus,7,5'),
('Ability Score Increase: Intelligence +1', '', '', 'Observant', NULL, 'FALSE', 'abilityImprovement,int,1'),
('Ability Score Increase: Wisdom +1', '', '', 'Observant', NULL, 'FALSE', 'abilityImprovement,wis,1'),
('Polearm Master', 'You gain the following benefits:

- When you take the Attack action and attack with only a glaive, halberd, quarterstaff, or spear, you can use a bonus action to make a melee attack with the opposite end of the weapon. This attack uses the same ability modifier as the primary attack. The weapon''s damage die for this attack is a d4, and it deals bludgeoning damage.
- While you are wielding a glaive, halberd, pike, quarterstaff, or spear, other creatures provoke an opportunity attack from you when they enter the reach you have with that weapon.', '', '', NULL, 'FALSE', ''),
('Resilient', 'Choose one ability score. You gain the following benefits:

- Increase the chosen ability score by 1, to a maximum of 20.
- You gain proficiency in saving throws using the chosen ability.', '', '', 1, 'FALSE', ''),
('Ability Score Increase: Strength +1', '', '', 'Resilient', NULL, 'FALSE', 'abilityImprovement,str,1|savingThrowProficiency,str'),
('Ability Score Increase: Dexterity +1', '', '', 'Resilient', NULL, 'FALSE', 'abilityImprovement,dex,1|savingThrowProficiency,dex'),
('Ability Score Increase: Constitution +1', '', '', 'Resilient', NULL, 'FALSE', 'abilityImprovement,con,1|savingThrowProficiency,con'),
('Ability Score Increase: Intelligence +1', '', '', 'Resilient', NULL, 'FALSE', 'abilityImprovement,int,1|savingThrowProficiency,int'),
('Ability Score Increase: Wisdom +1', '', '', 'Resilient', NULL, 'FALSE', 'abilityImprovement,wis,1|savingThrowProficiency,wis'),
('Ability Score Increase: Charisma +1', '', '', 'Resilient', NULL, 'FALSE', 'abilityImprovement,cha,1|savingThrowProficiency,cha'),
('Ritual Caster', 'You have learned a number of spells that you can cast as rituals. These spells are written in a ritual book, which you must have in hand while casting one of them.

When you choose this feat, you acquire a ritual book holding two 1st-level spells of your choice. Choose one of the following classes: bard, cleric, druid, sorcerer, warlock, or wizard. You must choose your spells from that class''s spell list, and the spells you choose must have the ritual tag. The class you choose also must have the ritual tag. The class you choose also determines your spellcasting ability for these spells: Charisma for bard, sorcerer, or warlock; Wisdom for cleric or druid; or Intelligence for wizard.

If you come across a spell in written form, such as a magical spell scroll or a wizard''s spellbook, you might be able to add it to your ritual book. The spell must be on the spell list for the class you chose, the spell''s level can be no higher than half your level (rounded up), and it must have the ritual tag. The process of copying the spell into your ritual book takes 2 hours per level of the spell, and costs 50 gp per level. The cost represents the material components you expend as you experiment with the spell to master it, as well as the fine inks you need to record it.', 'abilityScore,int,13|abilityScore,wis,13', '', NULL, 'FALSE', ''),
('Savage Attacker', 'Once per turn when you roll damage for a melee weapon attack, you can reroll the weapon''s damage dice and use either total.', '', '', NULL, 'FALSE', ''),
('Sentinel', 'You have mastered techniques to take advantage of every drop in any enemy''s guard, gaining the following benefits.

- When you hit a creature with an opportunity attack, the creature''s speed becomes 0 for the rest of the turn.
- Creatures provoke opportunity attacks from you even if they take the Disengage action before leaving your reach.
- When a creature within 5 feet of you makes an attack against a target other than you (and that target doesn''t have this feat), you can use your reaction to make a melee weapon attack against the attacking creature.', '', '', NULL, 'FALSE', ''),
('Sharpshooter', 'You have mastered ranged weapons and can make shots that others find impossible. You gain the following benefits:

- Attacking at long range doesn''t impose disadvantage on your ranged weapon attack rolls.
- Your ranged weapon attacks ignore half and three-quarters cover.
- Before you make an attack with a ranged weapon that you are proficient with, you can choose to take a -5 penalty to the attack roll. If that attack hits, you add +10 to the attack''s damage.', '', '', NULL, 'FALSE', ''),
('Shield Master', 'You use shields not just for protection but also for offense. You gain the following benefits while you are wielding a shield:

- If you take the Attack action on your turn, you can use a bonus action to try to shove a creature within 5 feet of you with your shield.
- If you aren''t incapacitated, you can add your shield''s AC bonus to any Dexterity saving throw you make against a spell or other harmful effect that targets only you.
- If you are subjected to an effect that allows you to make a Dexterity saving throw to take only half damage, you can use your reaction to take no damage if you succeed on the saving throw, interposing your shield between yourself and the source of the effect.', '', '', NULL, 'FALSE', ''),
('Skilled', 'You gain proficiency in any combination of three skills or tools of your choice.', '', '', NULL, 'FALSE', 'skillSelectAny|skillSelectAny|skillSelectAny'),
('Skulker', 'You are an expert at slinking through shadows. You gain the following benefits:

- You can try to hide when you are lightly obscured from the creature from which you are hiding.
- When you are hidden from a creature and miss it with a ranged weapon attack, making the attack doesn''t reveal your position.
- Dim light doesn''t impose disadvantage on your Wisdom (Perception) checks relying on sight.', 'abilityScore,dex,13', '', NULL, 'FALSE', ''),
('Spell Sniper', 'You have learned techniques to enhance your attacks with certain kinds of spells, gaining the following benefits:

- When you cast a spell that requires you to make an attack roll, the spell''s range is doubled.
- Your ranged spell attacks ignore half cover and three-quarters cover.
- You learn one cantrip that requires an attack roll. Choose the cantrip from the bard, cleric, druid, sorcerer, warlock, or wizard spell list. Your spellcasting ability for this cantrip depends on the spell list you chose from: Charisma for bard, sorcerer, and warlock; Wisdom for cleric or druid; or Intelligence for wizard.', 'spellcastingAbility', '', NULL, 'FALSE', 'spellSniper'),
('Tavern Brawler', 'Accustomed to the rough-and-tumble fighting using whatever weapons happen to be at hand, you gain the following benefits:

- Increase your Strength or Consititution score by 1, to a maximum of 20.
- You are proficient with improvised weapons.
- Your unarmed strike uses a d4 for damage.
- When you hit a creature with an unarmed strike or an improvised weapon on your turn, you can use a bonus action to attempt to grapple the target.', '', '', 1, 'FALSE', ''),
('Ability Score Increase: Strength +1', '', '', 'Tavern Brawler', NULL, 'FALSE', 'abilityImprovement,str,1'),
('Ability Score Increase: Constitution +1', '', '', 'Tavern Brawler', NULL, 'FALSE', 'abilityImprovement,con,1'),
('Tough', 'Your hit point maximum increases by an amount equal to twice your level when you gain this feat. Whenever you gain a level thereafter, your hit point maximum increases by an additional 2 hit points.', '', '', NULL, 'FALSE', 'bonusHP,2'),
('War Caster', 'You have practiced casting spells in the midst of combat, learning techniques that grant you the following benefits:

- You have advantage on Constitution saving throws that you make to maintain your concentration on a spell when you take damage.
- You can perform the somatic components of spells even when you have weapons or a shield in one or both hands.
- When a hostile creature''s movement provokes an opportunity attack from you, you can use your reaction to cast a spell at the creature, rather than making an opportunity attack. The spell must have a casting time of 1 action and must target only that creature.', 'spellcastingAbility', '', NULL, 'FALSE', ''),
('Weapon Master', 'You have practiced extensively with a variety of weapons, gaining the following benefits:

- Increase your Strength or Dexterity score by 1, to a maximum of 20.
- You gain proficiency with four weapons of your choice. Each one must be a simple or a martial weapon.', '', '', 1, 'FALSE', 'weaponProficiencySelect|weaponProficiencySelect|weaponProficiencySelect'),
('Ability Score Increase: Strength +1', '', '', 'Weapon Master', NULL, 'FALSE', 'abilityImprovement,str,1'),
('Ability Score Increase: Dexterity +1', '', '', 'Weapon Master', NULL, 'FALSE', 'abilityImprovement,dex,1');

end