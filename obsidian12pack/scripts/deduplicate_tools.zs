import mods.jei.JEI;

// Embers Rekindled and Mystical World add additional tools made from common
// materials that already exist in Thermal Foundation. This removes them.

var tool_types = [ "shovel", "pickaxe", "axe", "sword", "hoe" ] as string[];
var embers_materials = [ "copper", "silver", "lead", "aluminum", "bronze", "electrum", "nickel", "tin" ] as string[];
var mystical_world_materials = [ "copper", "silver" ] as string[];

for tool in tool_types {
    for mat in embers_materials
        JEI.removeAndHide(itemUtils.getItem("embers:" + tool + "_" + mat));
    for mat in mystical_world_materials
        JEI.removeAndHide(itemUtils.getItem("mysticalworld:" + mat + "_" + tool));
}
