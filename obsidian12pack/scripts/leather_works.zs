import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.immersiveengineering.BottlingMachine;
import mods.immersiveengineering.Squeezer;
import mods.jei.JEI;
import mods.tconstruct.Casting;
import mods.tconstruct.Drying;
import mods.tconstruct.Melting;
import mods.thermalexpansion.Transposer;


// Many of Leather Works' recipes don't show up in JEI so let's re-do it all!
recipes.removeByMod("leatherworks");

// Allow leather sheets to be used as leather in recipes, however.
<ore:leather>.add(<leatherworks:leather_sheet>);


// Hide + Knife => Scraped Hide
recipes.addShapeless("scrape_hide",
    <leatherworks:crafting_leather_scraped>,
    [ <ore:rawhide>, KNIFE.transformDamage() ]);


// Scraped Hide + Water => Washed Hide
JEI.addDescription(<leatherworks:crafting_leather_washed>,
    "Made by holding a scraped hide and interacting " +
    "with a water filled barrel or cauldron.");
BottlingMachine.addRecipe(<leatherworks:crafting_leather_washed>,
    <leatherworks:crafting_leather_scraped>, <liquid:water>*250);
Casting.addTableRecipe(<leatherworks:crafting_leather_washed>,
    <leatherworks:crafting_leather_scraped>, <liquid:water>*250, 20);
Transposer.addFillRecipe(<leatherworks:crafting_leather_washed>,
    <leatherworks:crafting_leather_scraped>, <liquid:water>*250, 400);


// Bark => Tannins
recipes.addShapeless("tannins", <leatherworks:tannin_ball>,
    [ KNIFE.transformDamage(), <ore:rootsBark> ]);

// Tannins + Empty Bottle => Tannin Bottle
recipes.addShapeless("tannin_bottle", <leatherworks:tannin_bottle>,
    [ <leatherworks:tannin_ball>, <minecraft:glass_bottle> ]);

// Tannins => Tannin (Liquid)
Squeezer.addRecipe(null, <liquid:leatherworks:tannin>*500,
    <leatherworks:tannin_ball>, 1200);
Melting.addRecipe(<liquid:leatherworks:tannin>*250,
    <leatherworks:tannin_ball>);
Transposer.addExtractRecipe(<liquid:leatherworks:tannin>*500,
    <leatherworks:tannin_ball>, 1200);

// Washed Hide + Tannin => Prepared Hide
JEI.addDescription(<leatherworks:crafting_leather_soaked>,
    "Made by holding a washed hide and interacting " +
    "with a tannin filled barrel or cauldron.");
BottlingMachine.addRecipe(<leatherworks:crafting_leather_soaked>,
    <leatherworks:crafting_leather_washed>, <liquid:leatherworks:tannin>*250);
Casting.addTableRecipe(<leatherworks:crafting_leather_soaked>,
    <leatherworks:crafting_leather_washed>, <liquid:leatherworks:tannin>, 250);
Transposer.addFillRecipe(<leatherworks:crafting_leather_soaked>,
    <leatherworks:crafting_leather_washed>, <liquid:leatherworks:tannin>*250, 400);


// Drying Prepared Hide => Leather
Drying.addRecipe(<minecraft:leather>, <leatherworks:crafting_leather_soaked>, 2400);


// =====================
// == Leather Recipes ==
// =====================

var sheet = <leatherworks:leather_sheet>;
var strip = <leatherworks:leather_strip>;
recipes.addShapeless("leather_sheet", sheet * 2,
    [ <minecraft:leather>, <ore:string>, KNIFE.transformDamage(), SHEARS.transformDamage() ]);
recipes.addShapeless("leather_strip", strip * 2,
    [ sheet, SHEARS.transformDamage() ]);
recipes.addShapedMirrored("leather_repair_kit", <leatherworks:repair_kit>,
    [[ SHEARS.transformDamage(), <ore:string>,         null ],
     [             <ore:string>,        sheet, <ore:string> ],
     [                     null, <ore:string>,         null ]]);

recipes.addShaped("leather_pack", <leatherworks:pack_brown>,
    [[ strip,           sheet, strip ],
     [ sheet, <ore:ingotGold>, sheet ],
     [ sheet,           sheet, sheet ]]);
recipes.addShaped("ender_pack", <leatherworks:ender_pack>,
    [[ <ore:enderpearl>,          <ore:enderpearl>, <ore:enderpearl> ],
     [ <ore:enderpearl>, <leatherworks:pack_brown>, <ore:enderpearl> ],
     [ <ore:enderpearl>,     <minecraft:ender_eye>, <ore:enderpearl> ]]);
recipes.addShaped("leather_trunk", <leatherworks:leather_trunk>,
    [[ sheet, sheet, sheet ],
     [ sheet,  null, sheet ],
     [ sheet, sheet, sheet ]]);


// ==========================
// == Wood Related Recipes ==
// ==========================

var wood_types = [ "oak", "spruce", "birch", "jungle", "acacia", "darkoak" ] as string[];
var planks = [ <minecraft:planks:0>, <minecraft:planks:1>, <minecraft:planks:2>,
               <minecraft:planks:3>, <minecraft:planks:4>, <minecraft:planks:5> ] as IIngredient[];
var plates = [ <minecraft:wooden_pressure_plate>, <quark:spruce_pressure_plate>,
               <quark:birch_pressure_plate>, <quark:jungle_pressure_plate>,
               <quark:acacia_pressure_plate>, <quark:dark_oak_pressure_plate> ] as IIngredient[];

for i, name in wood_types {
    // Remove bark since Roots and Quark already do this.
    JEI.hide(itemUtils.getItem("leatherworks:bark_" + name));
    JEI.hide(itemUtils.getItem("leatherworks:debarked_log_" + name));
    JEI.hide(itemUtils.getItem("leatherworks:" + name + "_bark"));

    // Remove drying rack since Tinkers Constract already has one.
    JEI.hide(itemUtils.getItem("leatherworks:drying_rack_" + name));

    var plank = planks[i];
    var plate = plates[i];
    recipes.addShaped("barrel_" + name,
        itemUtils.getItem("leatherworks:barrel_" + name),
        [[ plank,  null, plank ],
         [ plank,  null, plank ],
         [ plank, plank, plank ]]);
    recipes.addShaped("sealed_barrel_" + name,
        itemUtils.getItem("leatherworks:sealed_barrel_" + name),
        [[ plank, plate, plank ],
         [ plank,  null, plank ],
         [ plank, plank, plank ]]);
}


// ====================
// == Dyeing Recipes ==
// ====================

var name_to_dye = {
    black      : <ore:dyeBlack>,
    red        : <ore:dyeRed>,
    green      : <ore:dyeGreen>,
    brown      : <ore:dyeBrown>,
    blue       : <ore:dyeBlue>,
    purple     : <ore:dyePurple>,
    cyan       : <ore:dyeCyan>,
    silver     : <ore:dyeLightGray>,
    gray       : <ore:dyeGray>,
    pink       : <ore:dyePink>,
    lime       : <ore:dyeLime>,
    yellow     : <ore:dyeYellow>,
    light_blue : <ore:dyeLightBlue>,
    magenta    : <ore:dyeMagenta>,
    orange     : <ore:dyeOrange>,
    white      : <ore:dyeWhite>,
} as IOreDictEntry[string];

var all_leather_packs  = <leatherworks:pack_brown> as IIngredient;
var all_leather_trunks = <leatherworks:leather_trunk> as IIngredient;

for name, dye in name_to_dye {
    if ((name == "white") || (name == "brown")) continue;
    all_leather_packs  |= itemUtils.getItem("leatherworks:pack_" + name);
    all_leather_trunks |= itemUtils.getItem("leatherworks:leather_trunk_" + name);
}
for name, dye in name_to_dye {
    if (name == "white") continue;
    recipes.addShapeless("dye_leather_pack_" + name,
        itemUtils.getItem("leatherworks:pack_" + name),
        [ all_leather_packs, dye ]);
    var trunk = itemUtils.getItem("leatherworks:leather_trunk_" + name);
    if (isNull(trunk)) trunk = <leatherworks:leather_trunk>;
    recipes.addShapeless("dye_leather_trunk_" + name, trunk,
        [ all_leather_trunks, dye ]);
}
