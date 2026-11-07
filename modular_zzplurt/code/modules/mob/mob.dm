/mob/Initialize(mapload)
	set_thirst(rand(NUTRITION_LEVEL_START_MIN, NUTRITION_LEVEL_START_MAX))
	. = ..()

// skill level verb
GAME_VERB(/mob/living, view_skills, "View Skills", "IC")
    if(!mind)
        to_chat(src, span_warning("You don't have a mind to view skills for."))
        return
    mind.print_levels(src)
