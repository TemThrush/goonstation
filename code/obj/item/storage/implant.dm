// Most of these aren't in use anymore, but there's enough of them that they may as well get their own file.

/obj/item/storage/box/trackimp_kit
	name = "tracking implant kit"
	icon_state = "implant"
	desc = "A box containing an implanting tool, four tracking implant cases, and two GPS devices. The implanter can remove the implants from their cases and inject them in a person, and the GPS devices can tell you where they are."
	spawn_contents = list(/obj/item/implantcase/tracking = 4,\
	/obj/item/device/gps = 2,\
	/obj/item/implanter)

/obj/item/storage/box/securityimp_kit
	name = "security implant kit"
	icon_state = "implant"
	desc = "A box containing an implanting tool and five tracking implant cases. The implanter can remove the implants from their cases and inject them into a subject, granting them security access."
	spawn_contents = list(/obj/item/implantcase/sec = 6,\
	/obj/item/implanter)

/obj/item/storage/box/revimp_kit
	name = "counter-revolutionary implant kit"
	icon_state = "implant"
	desc = "A box containing an implanting tool and six counter-revolutionary implant cases. The implanter can remove the implants from their cases and inject them in a person, supressing their will to commit large scale revolution, as the name implies."
	spawn_contents = list(/obj/item/implantcase/counterrev = 6,\
	/obj/item/implanter)

/obj/item/storage/box/accessimp_kit
	name = "access implant kit"
	icon_state = "implant"
	desc = "A box containing an implanting tool and five access implant cases. The implanter can remove the implants from their cases and inject them into a subject, granting them accesses defined by an ID computer."
	spawn_contents = list(/obj/item/implantcase/access = 6,\
	/obj/item/implanter)

/obj/item/storage/box/marionetteimp_kit
	name = "marionette implant kit"
	desc = "Contains one marionette implant and the peripherals required to use it."
	icon_state = "hard_case"
	spawn_contents = list(/obj/item/remote/marionette_implant, /obj/item/paper/marionette_implant_readme)

	New(loc, flag_that_prevents_the_box_from_having_its_free_implanter)
		..()
		if (!flag_that_prevents_the_box_from_having_its_free_implanter)
			src.storage.add_contents(new /obj/item/implanter/marionette)
