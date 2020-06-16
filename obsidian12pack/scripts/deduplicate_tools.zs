import mods.jei.JEI;

// Embers Rekindled add additional tools made from common materials
// that already exist in Thermal Foundation. This removes them.

var tool_types = [ "shovel", "pickaxe", "axe", "sword", "hoe" ] as string[];
var embers_materials = [ "copper", "silver", "lead", "aluminum", "bronze", "electrum", "nickel", "tin" ] as string[];

for tool in tool_types
    for mat in embers_materials
        JEI.removeAndHide(itemUtils.getItem("embers:" + tool + "_" + mat));


// Tinkers' Complement steel armor

JEI.removeAndHide(<tcomplement:steel_helmet>);
JEI.removeAndHide(<tcomplement:steel_chestplate>);
JEI.removeAndHide(<tcomplement:steel_leggings>);
JEI.removeAndHide(<tcomplement:steel_boots>);
