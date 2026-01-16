/*
  KoL Monster Base Meat Exporter (Backward Compatible)
  ---------------------------------------------------
  Uses meat_drop() for older KoLmafia versions.
*/

print("Monster,Base Meat");

foreach m in $monsters[]
{
	int meat = meat_drop(m);

	// Skip monsters with no meat drop
	if (meat <= 0) continue;

	print(m + "," + meat);
}
