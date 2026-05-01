/obj/item/clothing/head/beret/cm/surgical
	name = "\improper USCM beret"
	icon = 'modular/surgical_beret/clothing/s_beret.dmi'
	icon_state = "s_beret"
	desc = "Головной убор, который обычно носят полевые офицеры ККМП. Иногда она попадает в руки командиров отделений и пехотинцев. Цвет этого экземпляра немного отличается от стандартного."
	flags_atom = NO_GAMEMODE_SKIN
	item_icons = list(
		WEAR_HEAD = 'modular/surgical_beret/onmob/clothing/s_beret.dmi'
	)

/obj/item/clothing/head/beret/cm/surgical/Initialize(mapload, ...)
	. = ..()
	if(!(flags_atom & NO_GAMEMODE_SKIN))
		select_gamemode_skin(/obj/item/clothing/head/beret/cm/surgical)
