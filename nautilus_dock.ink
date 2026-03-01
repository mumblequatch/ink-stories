// The Loading Dock — a short Ink story

VAR courage = 0
VAR curiosity = 0

-> cold_iron

=== cold_iron ===
— Cold Iron —

Cold metal against your cheek.

You open your eyes. Slowly. The ceiling is impossibly far above you — riveted iron plates curving upward like the inside of a whale's belly.

Water laps somewhere in the dark.

You sit up. Your hands are shaking. You don't remember how you got here.

+ [Look around] -> the_loading_dock
+ [Call out "Hello?"] -> echoes_in_the_dark

=== echoes_in_the_dark ===
— Echoes in the Dark —

"Hello?"

Your voice hits the far wall and comes back to you, broken into echoes. Three of them. Four. Then silence.

Nobody answers. But something changes — a low hum, deep in the floor beneath you, shifts pitch. As if the room itself heard you.

~ courage++

+ [Look around] -> the_loading_dock

=== the_loading_dock ===
— The Loading Dock —

The chamber is enormous. A loading dock of some kind — a wide pool of black water opens in the center of the floor, connected to the sea through a passage you can't see the end of.

Two shapes sit at the edge of the pool, moored to iron cleats with heavy rope.

On the left: a submarine. Small, sleek, modern-looking. Its hull is smooth and dark, like a dolphin made of glass. A single seat glows faintly inside.

On the right: a bathysphere. A bronze orb covered in rivets and scrollwork, hung from a crane by a thick cable. A round porthole stares at you like an eye. It looks ancient. It looks hand-made. It looks like something Captain Nemo himself would have built.

Between them, bolted to the floor, a brass plaque reads:

    CHOOSE WELL. THE SEA DOES NOT WAIT.

+ [Examine the submarine] -> the_glass_dolphin
+ [Examine the bathysphere] -> the_bronze_eye
+ [Look for another way out] -> sealed_shut

=== sealed_shut ===
— Sealed Shut —

You turn away from the water and search the walls. There must be a door. A hatch. Something.

You find rivets. You find rust. You find the faint outline of a door that has been welded shut from the other side.

Whoever left you here wanted you to go down, not up.

+ [Examine the submarine] -> the_glass_dolphin
+ [Examine the bathysphere] -> the_bronze_eye

=== the_glass_dolphin ===
— The Glass Dolphin —
~ curiosity++

You run your hand along the submarine's hull. It's warm to the touch — almost alive. The cockpit opens at your approach with a soft hiss, like it was expecting you.

Inside: a single pilot's seat, a curved display, and a joystick. The screen flickers to life as you lean in.

    DEPTH RATING: 11,000 METERS
    NAVIGATION: AUTOMATED
    DESTINATION: ███████████

The destination is redacted. Blacked out.

A green button pulses steadily. START.

+ [Get in the submarine] -> a_breath_held
+ [Wait — check the bathysphere first] -> the_bronze_eye

=== the_bronze_eye ===
— The Bronze Eye —
~ curiosity++

The bathysphere hangs from its cable, swaying almost imperceptibly. You climb the short ladder bolted to its side and peer through the porthole.

Inside it's small and round, lined with tufted red velvet — like the inside of a music box. Brass instruments crowd the walls: pressure gauges, a compass spinning lazily, a depth meter with hand-painted numerals.

Sitting on the seat is a leather-bound journal. The cover is stamped with a single letter:

    N

+ [Open the journal] -> nemos_last_entry
+ [Get in the bathysphere] -> into_the_velvet_dark
+ [Go back and take the submarine instead] -> a_breath_held

=== nemos_last_entry ===
— Nemo's Last Entry —
~ curiosity++

The pages are filled with tight, elegant handwriting. Most of it is in a language you don't recognize. But the last entry — the very last page — is in English.

    "If you are reading this, then the Nautilus has found you worthy.

    The submarine will take you where you wish to go.
    The bathysphere will take you where you NEED to go.

    I have seen both paths. I chose the sphere.

    I was not disappointed.

    — N."

You close the journal. Your hands have stopped shaking.

+ [Get in the bathysphere] -> into_the_velvet_dark
+ [Get in the submarine] -> a_breath_held

=== a_breath_held ===
— A Breath Held —

You climb into the submarine. The cockpit seals shut behind you with a sound like a breath held.

The green button pulses.

+ [Press START] -> swallowed_gently

=== swallowed_gently ===
— Swallowed Gently —

The water swallows you gently. The submarine knows where it's going — it dives at a steep angle, and the loading dock disappears above you in seconds.

Through the glass hull you watch the ocean unfold.

First: darkness.

Then: light. Bioluminescence. Creatures you have no names for, drifting past like living lanterns — blue, green, pale gold.

The submarine levels out. Ahead of you, just at the edge of visibility, something vast takes shape. A structure. No — a city. Towers of coral and glass, lit from within, sprawling across the ocean floor like a fallen constellation.

The display flickers. The redacted destination fills itself in, letter by letter:

    DESTINATION: ATLANTIS

The submarine begins its descent toward the city gates.

{curiosity > 1: You think of the journal. Captain Nemo's handwriting. He said the submarine takes you where you WISH to go.}

{curiosity > 1: You've wished for this your whole life, haven't you?}

+ [Approach the gates] -> the_gates_unfold

=== the_gates_unfold ===
— The Gates Unfold —

The gates are made of something that isn't metal and isn't stone. They shimmer — translucent, veined with light, tall as cathedral doors.

As the submarine draws near, they open. Not mechanically. They unfold, like the petals of a flower that has been waiting a very long time to bloom.

Beyond them: a boulevard. Wide and silent. Buildings rise on either side — organic shapes, grown more than built, crusted with barnacles and studded with pearls the size of your fist.

The submarine glides forward on its own. You take your hands off the joystick. It doesn't matter — the city is guiding you now.

+ [Look out the left side] -> the_drowned_garden
+ [Look out the right side] -> the_sunken_library
+ [Keep going straight] -> the_glass_throne

=== the_drowned_garden ===
— The Drowned Garden —

A garden. Underwater, but alive — coral trees with branches that sway like willows, anemones pulsing in slow rhythms, and between them, swimming lazily, creatures that look almost like seahorses but with human faces.

One of them turns toward you. It presses a tiny hand against the glass of your hull.

It smiles.

+ [Smile back] -> the_glass_throne
+ [Keep going] -> the_glass_throne

=== the_sunken_library ===
— The Sunken Library —

A library. The walls are open to the water, but the books don't dissolve — they float on their shelves, pages drifting gently. Thousands of them. Millions, maybe.

A reading light is on at one of the desks. An open book sits beneath it, its pages turning slowly in the current, as if someone was here only moments ago.

+ [Wonder who was reading] -> the_glass_throne
+ [Keep going] -> the_glass_throne

=== the_glass_throne ===
— The Glass Throne —

The boulevard ends at a plaza. And in the center of the plaza — a throne.

Not gold. Not jeweled. It's made of the same dark glass as your submarine's hull, smooth and warm-looking. It sits on a raised platform, and behind it, etched into the wall in letters ten feet tall:

    THE SEA REMEMBERS THOSE WHO SEEK IT.

    SIT, AND BE KNOWN.

The submarine docks itself at the edge of the plaza. The cockpit hisses open. Water doesn't rush in — somehow the plaza is dry, enclosed in a bubble of breathable air.

+ [Step out] -> footsteps_on_glass

=== footsteps_on_glass ===
— Footsteps on Glass —

Your footsteps echo on the glass floor. Below your feet, the ocean drops away — miles of dark water beneath a transparent surface. You try not to look down.

The throne waits.

+ [Sit in the throne] -> welcome_home
+ [Explore the plaza first] -> what_nemo_left_behind

=== what_nemo_left_behind ===
— What Nemo Left Behind —

Around the edges of the plaza you find small alcoves, each containing a single object behind glass:

A compass that points in a direction that doesn't exist.

A key made of water, somehow holding its shape.

A photograph — faded, salt-stained — of a bearded man standing on the deck of a ship. On the back, in familiar handwriting: "Before I found the sphere."

Nemo was here. Before the bathysphere, before the journal — he came here first.

+ [Sit in the throne] -> welcome_home

=== welcome_home ===
— Welcome Home —

You sit.

The glass is warm. It fits you — not like it was made for you, but like it has been waiting to learn your shape.

The moment you settle, the city wakes up.

Every window ignites. Every tower hums. The coral trees in the garden blaze with color. The books in the library begin turning their pages faster, as if excited.

The display on the submarine — visible from across the plaza — flickers one last time:

    CAPTAIN RECOGNIZED.
    WELCOME HOME.

The city of Atlantis has been empty for a very long time.

It isn't anymore.

-> END

=== into_the_velvet_dark ===
— Into the Velvet Dark —

You climb inside the bathysphere and pull the heavy door shut. It seals with a deep clunk. The red velvet muffles every sound.

For a moment — nothing. Silence. The compass spins.

Then the crane groans to life on its own, and the sphere drops.

+ [Hold on] -> the_pull_of_the_deep

=== the_pull_of_the_deep ===
— The Pull of the Deep —

The bathysphere plunges through the pool and into open ocean. Through the porthole, the loading dock shrinks to a point of light, then vanishes.

You descend.

The pressure gauges climb. The brass walls tick and creak. The depth meter's hand sweeps past numbers you didn't think were real.

2,000 meters. 5,000. 8,000.

At 10,000 meters, the cable goes slack. You're no longer being lowered.

You're being pulled.

Something below you — something enormous — is drawing the bathysphere down with a gentle, irresistible gravity.

Through the porthole, you see it.

A light. Not bioluminescence. Not a city. Something older. A single, steady glow rising from a crack in the ocean floor — warm and golden, like sunlight remembered from a dream.

The journal sits in your lap. You open it, and a new line has appeared on the last page, in fresh ink:

    "Now you see what I saw."

{curiosity >= 2: Below that, in smaller letters:}
{curiosity >= 2: "Keep going."}

The bathysphere drifts toward the light.

+ [Look closer] -> the_golden_fissure

=== the_golden_fissure ===
— The Golden Fissure —

The golden light grows. It fills the porthole. It fills the sphere. It's warm on your skin — actually warm, like afternoon sun through a window.

The crack in the ocean floor widens as you descend into it. The walls of the fissure are covered in something — carvings. Ancient carvings, worn smooth by time and pressure but still legible. Shapes. Figures. A story told in stone.

You see: people building ships.
You see: a man descending in a sphere, just like yours.
You see: the same man, older now, standing at the edge of a light.

+ [Keep descending] -> the_cathedral

=== the_cathedral ===
— The Cathedral —

The fissure opens into a chamber.

No — not a chamber. A cathedral. Carved from the living rock of the earth's crust, impossibly deep, impossibly vast. The golden light pours from a pool at its center — a pool of something that isn't water. It's thicker. Brighter. It moves like something alive.

The bathysphere touches down with a soft crunch on a floor of black sand.

The pressure gauge reads a number so high the needle has gone all the way around and started again.

But the brass walls aren't groaning anymore. They're humming. A single, clear note — like a bell struck once and never stopped ringing.

+ [Open the door] -> impossible_air
+ [Stay inside] -> not_yet

=== not_yet ===
— Not Yet —

You sit for a long moment, hands on the journal, watching the golden pool through the porthole.

The light pulses gently. Patient. It has been waiting longer than you can imagine. It can wait a little more.

But you didn't come this far to watch through glass.

+ [Open the door] -> impossible_air

=== impossible_air ===
— Impossible Air —

You turn the heavy wheel on the inside of the door. Every instinct tells you not to — you're at the bottom of the ocean, the pressure should crush you, the water should —

The door swings open.

Air. Warm, salt-tinged air rushes in. You can breathe. You can stand.

You step out onto the black sand.

The cathedral stretches above you, its ceiling lost in darkness. The golden pool is thirty steps away. Up close, it doesn't look like liquid at all. It looks like light that decided to stay in one place.

At the edge of the pool, driven into the sand, is a staff. Bronze. Covered in the same scrollwork as the bathysphere. Nemo's.

Beside it, scratched into a flat rock with a knife or a nail:

    "I stood here.
     I understood.
     I left, because the world above still needed me.

     But I built the sphere so someone else could come back."

+ [Touch the light] -> the_crossing
+ [Look into the pool] -> the_other_sky

=== the_other_sky ===
— The Other Sky —

You kneel at the edge and look down.

The pool has no bottom. Or — it does, but what you see there isn't stone.

You see sky. Blue sky. Clouds drifting. Sunlight. You're looking up at the surface of the ocean from below — but not the ocean you came from. A different ocean, under a different sky, with two moons hanging where one should be.

The light isn't coming from inside the earth.

It's coming from somewhere else entirely. A door. The oldest door in the world, hidden at the bottom of the sea.

+ [Touch the light] -> the_crossing

=== the_crossing ===
— The Crossing —

You reach out.

The light is warm. It wraps around your fingers like honey. It doesn't burn. It doesn't pull. It asks.

And in the asking, you understand what Captain Nemo understood:

This is not an ending. This is not a treasure. This is a door, and it has been here since before there were ships, before there were people, before there were oceans.

It goes somewhere.

The journal falls open in your other hand. A final line, in handwriting that might be Nemo's — or might be your own:

    "The sea does not wait.
     But it always remembers
     those brave enough to go deep."

{courage > 0: You called out into the dark, and the dark answered.}
{courage > 0: You have always been brave enough.}

You step forward.

The light takes you gently.

-> END
