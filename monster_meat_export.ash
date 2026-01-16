/*
  KoL Monster Base Meat Exporter (150+ only, sorted)
  -------------------------------------------------
  Filters monsters with base meat >= 150
  Sorts from highest to lowest base meat
  Compatible with older KoLmafia (uses meat_drop)
*/

// map: meat value -> comma-separated monster names
string [int] monsters_by_meat;

foreach m in $monsters[]
{
	int meat = meat_drop(m);
	if (meat < 150) continue;

	if (monsters_by_meat contains meat)
		monsters_by_meat[meat] = monsters_by_meat[meat] + "|" + m;
	else
		monsters_by_meat[meat] = m;
}

print("Monster,Base Meat");

// iterate from highest meat to lowest
foreach meat in monsters_by_meat by -key
{
	foreach i, name in split(monsters_by_meat[meat], "\\|")
	{
		print(name + "," + meat);
	}
}
