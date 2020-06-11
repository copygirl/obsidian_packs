import mods.jei.JEI;

// Even though these items are disabled in
// the config, they still appear in JEI.

JEI.hide(<mysticalworld:iron_dust>);
JEI.hide(<mysticalworld:iron_dust_tiny>);

JEI.hide(<mysticalworld:gold_dust>);
JEI.hide(<mysticalworld:gold_dust_tiny>);

var materials = [ "copper", "silver" ] as string[];
var types = [ "ore", "block", "ingot", "nugget", "dust", "dust_tiny",
              "axe", "hoe", "pickaxe", "shovel", "sword" ] as string[];

for mat in materials
    for type in types
        JEI.hide(itemUtils.getItem("mysticalworld:" + mat + "_" + type));
