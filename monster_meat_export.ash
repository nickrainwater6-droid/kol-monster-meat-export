/*
  KoL Monster Base Meat Exporter
  --------------------------------
  Exports all monsters and their base meat values to the gCLI
  in CSV format for spreadsheet use.

  Data source: KoLmafia monster database
*/

print("Monster,Base Meat");

foreach m in $monsters[]
{
	int meat = monster_meat(m);

	// Skip monsters with no meat drop
	if (meat <= 0) continue;

	print(m + "," + meat);
}
