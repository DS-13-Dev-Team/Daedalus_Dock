/datum/action/cooldown/necro/psy/rune
	name = "Bloody Rune"
	desc = "Creates a spooky rune. Has no functional effects, just for decoration"
	cost = 16

/datum/action/cooldown/necro/psy/rune/Activate(atom/target, mob/camera/marker_signal/caller)
	var/turf/target_turf = get_turf(target)
	if(isgroundlessturf(target_turf) || target_turf.density)
		return
	..()
	new /obj/effect/decal/cleanable/necro_rune(target_turf, null, RUNE_COLOR_MEDIUMRED, TRUE)
	return TRUE

//Initialized in make_datum_references_lists
GLOBAL_LIST_EMPTY(necro_runes)

/obj/effect/decal/cleanable/necro_rune
	name = "rune"
	desc = "Graffiti. Damn kids."
	icon = 'necromorphs/icons/effects/runes.dmi'
	icon_state = "rune-1"
	gender = NEUTER
	mergeable_decal = FALSE
	var/used_overlays = ""

/obj/effect/decal/cleanable/necro_rune/Initialize(mapload, list/datum/disease/diseases, colour, fade_in)
	. = ..()
	icon_state = "rune-[rand(1, 5)]"
	if(colour)
		color = colour
	for(var/i = 1 to 2)
		used_overlays += "[rand(1, 10)]"
		add_overlay(GLOB.necro_runes[i])
	if(fade_in)
		alpha = 0
		animate(src, alpha = 255, time = 1 SECONDS, flags = ANIMATION_PARALLEL)

/obj/effect/decal/cleanable/necro_rune/NeverShouldHaveComeHere(turf/T)
	return T.density || isgroundlessturf(T)

/obj/effect/decal/cleanable/necro_rune/update_overlays()
	. = ..()
	. += GLOB.necro_runes[used_overlays[1]]
	. += GLOB.necro_runes[used_overlays[2]]
