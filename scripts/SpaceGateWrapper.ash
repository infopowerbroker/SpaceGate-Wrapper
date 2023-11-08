void main()
{
//change this boolean to true if you want to hunt for salads for the trophy
boolean huntforsalads = false;
//change this boolean to false if you don't want to use MayDay Supply Packages
boolean useMayDaySupplyPackages = true;

print("Starting SpaceGate Routine");
	if(my_level()>=15){
		print("Level Check Passed! Big enough to ride");
		if ((have_effect($effect[Ready to Survive]) == 0 ) && (item_amount($item[MayDay&trade; supply package]).to_int() > 0) && useMayDaySupplyPackages)
		{
		print("Using MayDay supply package");
		use (1, $item[MayDay&trade; supply package]);
		
		}
		item x = $item[primitive alien salad];
		int	 SpaceGateSaladCount = item_amount( x ) + closet_amount( x ) + storage_amount( x );
		
		print("we have " + SpaceGateSaladCount + " salads on hand.");
		if( huntforsalads && (SpaceGateSaladCount < 11))
		{
		
			if( SpaceGateSaladCount == (get_property("_garboWrapperSaladCount").to_int()))
			{
			print("Getting a salad!");
			if ((have_effect($effect[Boner Battalion]) == 0 ) && (get_property("_bonersSummoned").to_int() == 0))
			{
			print("BONERS Ho!");
			use_skill(to_skill(75));
			}
				cli_execute("try; ballpit");
				cli_execute("Veracityspacegate visit trade buy salad (A-C)");
			}
		}
		else if( item_amount($item[primitive alien totem]) <1)
		{
			print("searching for a totem!");
			if ((have_effect($effect[Boner Battalion]) == 0 ) && (get_property("_bonersSummoned").to_int() == 0))
			{
				print("BONERS Ho!");
				use_skill(to_skill(75));
			}
			cli_execute("try; ballpit");
			cli_execute("Veracityspacegate visit goal trophy totem (A-K)");
			if( item_amount($item[primitive alien totem]) == 1)
			{
				cli_execute("av-snapshot.ash");
			}
		}
		else if( item_amount($item[primitive alien loincloth]) <1)
		{
			print("searching for a loincloth!");
			if ((have_effect($effect[Boner Battalion]) == 0 ) && (get_property("_bonersSummoned").to_int() == 0))
			{
				print("BONERS Ho!");
				use_skill(to_skill(75));
			}
			cli_execute("try; ballpit");
			cli_execute("Veracityspacegate visit goal trophy loincloth (A-K)");
			if( item_amount($item[primitive alien loincloth]) == 1)
			{
				cli_execute("av-snapshot.ash");
			}
		}
		else if( item_amount($item[primitive alien spear]) <1)
		{
			print("searching for a spear!");
			if ((have_effect($effect[Boner Battalion]) == 0 ) && (get_property("_bonersSummoned").to_int() == 0))
			{
				print("BONERS Ho!");
				use_skill(to_skill(75));
			}
			cli_execute("try; ballpit");
			cli_execute("Veracityspacegate visit goal trophy spear (A-K)");
			if( item_amount($item[primitive alien spear]) == 1)
			{
				cli_execute("av-snapshot.ash");
			}
		}
		else if( item_amount($item[primitive alien blowgun]) <1)
		{
			print("searching for a blowgun!");
			if ((have_effect($effect[Boner Battalion]) == 0 ) && (get_property("_bonersSummoned").to_int() == 0))
			{
				print("BONERS Ho!");
				use_skill(to_skill(75));
			}
			cli_execute("try; ballpit");
			cli_execute("Veracityspacegate visit goal trophy blowgun (A-K)");
			if( item_amount($item[primitive alien blowgun]) == 1)
			{
				cli_execute("av-snapshot.ash");
			}
		}
		else if( item_amount($item[primitive alien necklace]) < 1)
		{
			print("searching for a necklace");
			if ((have_effect($effect[Boner Battalion]) == 0 ) && (get_property("_bonersSummoned").to_int() == 0))
			{
				print("BONERS Ho!");
				use_skill(to_skill(75));
			}
			cli_execute("try; ballpit");
			cli_execute("Veracityspacegate visit goal trophy necklace(A-O)");
			if( item_amount($item[primitive alien necklace]) == 1)
			{
				cli_execute("av-snapshot.ash");
			}	
		}
		//you've gotten all the rares, impressive!
		else {
			 if(user_confirm("You've gotten all the rares. Bug IPB to add another goal. Do you want to stop the script so IPB can fix it today?")){
			 abort("Script execution canceled by user.");
			 }
			 }
	}
	print("All done with Spacegate for today");
}
