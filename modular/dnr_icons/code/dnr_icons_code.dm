/mob/living/carbon/human/med_hud_set_status()
	.=..()
	if(species && species.flags & IS_SYNTHETIC)
	else
		if(stat == DEAD || status_flags & FAKEDEATH)
			if(revive_enabled)
				if(!client && !(status_flags & FAKESOUL))
					var/mob/dead/observer/G = get_ghost(FALSE, TRUE)
					if(!G)
						holder.overlays += image('modular/dnr_icons/icons/DNR_HUD.dmi', "hud_dnr")
						holder.icon_state = "hud_dnr"
						if(!holder2_set)
							holder2.overlays += image('modular/dnr_icons/icons/DNR_HUD.dmi', "hud_dnr")
							holder2.icon_state = "hud_dnr"
							holder3.icon_state = "huddead"
							holder2_set = 1
