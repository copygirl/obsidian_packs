import crafttweaker.recipes.IRecipeFunction;
import mods.artisanworktables.builder.RecipeBuilder;

// TODO: Replace Redstone Repository's baubles recipes.


// Function executed when the recipe matches, and is updated.
// This just carries energy, enchantments and such over to the new item.
var onRecipeUpdate as IRecipeFunction = function(result, input, info) {
    return result.withTag(input.base.tag);
};


// ======================
// == Redstone Arsenal ==
// ======================

// == INGREDIENTS ==
var flux_gem = <ore:gemCrystalFlux>;

// == TOOLS ==
var flux_battlewrench = <redstonearsenal:tool.battlewrench_flux>.marked("base");
var flux_sword        = <redstonearsenal:tool.sword_flux>.marked("base");
var flux_shovel       = <redstonearsenal:tool.shovel_flux>.marked("base");
var flux_pickaxe      = <redstonearsenal:tool.pickaxe_flux>.marked("base");
var flux_axe          = <redstonearsenal:tool.axe_flux>.marked("base");
var flux_sickle       = <redstonearsenal:tool.sickle_flux>.marked("base");

// == ARMOR ==
var flux_helmet     = <redstonearsenal:armor.helmet_flux>.marked("base");
var flux_chestplate = <redstonearsenal:armor.plate_flux>.marked("base");
var flux_leggings   = <redstonearsenal:armor.legs_flux>.marked("base");
var flux_boots      = <redstonearsenal:armor.boots_flux>.marked("base");


// =========================
// == Redstone Repository ==
// =========================

// Base cost of "Gelid Enderium" items made in the Mages's Workshop:
var LIQUID        = <liquid:cryotheum>;
var LIQUID_AMOUNT = 4000;
var HAMMER_COST   = 52;
var GRIMOIRE_COST = 18;


// == INGREDIENTS ==

var gelid_ingot = <ore:ingotGelidEnderium>;
var gelid_plate = <ore:plateGelidEnderium>;
var gelid_gear  = <ore:gearGelidEnderium>;
var gelid_gem   = <ore:gemGelid>;
var gelid_rod   = <redstonerepository:material:6>;


// == TOOLS ==

var gelid_battlewrench = <redstonerepository:tool.battlewrench_gelid>;
var gelid_sword        = <redstonerepository:tool.sword_gelid>;
var gelid_shovel       = <redstonerepository:tool.shovel_gelid>;
var gelid_pickaxe      = <redstonerepository:tool.pickaxe_gelid>;
var gelid_axe          = <redstonerepository:tool.axe_gelid>;
var gelid_sickle       = <redstonerepository:tool.sickle_gelid>;

// Gelid Enderium Battle-Wrench
recipes.remove(gelid_battlewrench);
RecipeBuilder.get("mage")
    .setName("gelid_battlewrench")
    .addOutput(gelid_battlewrench)
    .addTool(HAMMER, HAMMER_COST)
    .addTool(<ore:artisansGrimoire>, GRIMOIRE_COST)
    .setFluid(LIQUID * LIQUID_AMOUNT)
    .setShaped([[     null,      null,              null, gelid_ingot,        null ],
                [     null,      null,       gelid_ingot,  gelid_gear, gelid_ingot ],
                [     null,      null, flux_battlewrench, gelid_ingot,        null ],
                [     null, gelid_rod,              null,        null,        null ],
                [ flux_gem,      null,              null,        null,        null ]])
    .setRecipeFunction(onRecipeUpdate)
    .create();

// Gelid Enderium Sword
recipes.remove(gelid_sword);
RecipeBuilder.get("mage")
    .setName("gelid_sword")
    .addOutput(gelid_sword)
    .addTool(HAMMER, HAMMER_COST)
    .addTool(<ore:artisansGrimoire>, GRIMOIRE_COST)
    .setFluid(LIQUID * LIQUID_AMOUNT)
    .setShaped([[      null,       null,        null, gelid_ingot, gelid_plate ],
                [      null,       null, gelid_ingot, gelid_plate, gelid_ingot ],
                [  flux_gem,gelid_ingot,  gelid_gear, gelid_ingot,        null ],
                [      null, flux_sword, gelid_ingot,        null,        null ],
                [ gelid_rod,       null,    flux_gem,        null,        null ]])
    .setRecipeFunction(onRecipeUpdate)
    .create();

// Gelid Enderium Shovel
recipes.remove(gelid_shovel);
RecipeBuilder.get("mage")
    .setName("gelid_shovel")
    .addOutput(gelid_shovel)
    .addTool(HAMMER, HAMMER_COST)
    .addTool(<ore:artisansGrimoire>, GRIMOIRE_COST)
    .setFluid(LIQUID * LIQUID_AMOUNT)
    .setShaped([[     null,      null,        null, gelid_plate,        null ],
                [     null,      null, gelid_plate, gelid_plate, gelid_plate ],
                [     null,      null, flux_shovel, gelid_plate,        null ],
                [     null, gelid_rod,        null,        null,        null ],
                [ flux_gem,      null,        null,        null,        null ]])
    .setRecipeFunction(onRecipeUpdate)
    .create();

// Gelid Enderium Pickaxe
recipes.remove(gelid_pickaxe);
RecipeBuilder.get("mage")
    .setName("gelid_pickaxe")
    .addOutput(gelid_pickaxe)
    .addTool(HAMMER, HAMMER_COST)
    .addTool(<ore:artisansGrimoire>, GRIMOIRE_COST)
    .setFluid(LIQUID * LIQUID_AMOUNT)
    .setShaped([[     null, gelid_ingot,  gelid_ingot,       null,    flux_gem ],
                [     null,        null,         null, gelid_gear,        null ],
                [     null,        null, flux_pickaxe,       null, gelid_ingot ],
                [     null,   gelid_rod,         null,       null, gelid_ingot ],
                [ flux_gem,        null,         null,       null,        null ]])
    .setRecipeFunction(onRecipeUpdate)
    .create();

// Gelid Enderium Axe
recipes.remove(gelid_axe);
RecipeBuilder.get("mage")
    .setName("gelid_axe")
    .addOutput(gelid_axe)
    .addTool(HAMMER, HAMMER_COST)
    .addTool(<ore:artisansGrimoire>, GRIMOIRE_COST)
    .setFluid(LIQUID * LIQUID_AMOUNT)
    .setShaped([[     null,      null,        null, gelid_ingot,    flux_gem ],
                [     null,      null, gelid_ingot,  gelid_gear,        null ],
                [     null,      null,    flux_axe,        null, gelid_ingot ],
                [     null, gelid_rod,        null,        null,        null ],
                [ flux_gem,      null,        null,        null,        null ]])
    .setRecipeFunction(onRecipeUpdate)
    .create();

// Gelid Enderium Sickle
recipes.remove(gelid_sickle);
RecipeBuilder.get("mage")
    .setName("gelid_sickle")
    .addOutput(gelid_sickle)
    .addTool(HAMMER, HAMMER_COST)
    .addTool(<ore:artisansGrimoire>, GRIMOIRE_COST)
    .setFluid(LIQUID * LIQUID_AMOUNT)
    .setShaped([[        null,      null, gelid_ingot, gelid_ingot,        null ],
                [        null,      null,        null,        null, gelid_ingot ],
                [        null,      null,        null,        null, gelid_ingot ],
                [        null, gelid_rod, flux_sickle, gelid_ingot,        null ],
                [ gelid_ingot,      null,        null,        null,        null ]])
    .setRecipeFunction(onRecipeUpdate)
    .create();


// == ARMOR ==

var gelid_plating = <redstonerepository:material:7>;

var gelid_helmet     = <redstonerepository:armor.helmet_gelid>;
var gelid_chestplate = <redstonerepository:armor.plate_gelid>;
var gelid_leggings   = <redstonerepository:armor.legs_gelid>;
var gelid_boots      = <redstonerepository:armor.boots_gelid>;

// Gelid Enderium Helm
recipes.remove(gelid_helmet);
RecipeBuilder.get("mage")
    .setName("gelid_helmet")
    .addOutput(gelid_helmet)
    .addTool(HAMMER, HAMMER_COST)
    .addTool(<ore:artisansGrimoire>, GRIMOIRE_COST)
    .setFluid(LIQUID * LIQUID_AMOUNT)
    .setShaped([[          null, gelid_plating,    flux_gem, gelid_plating,          null ],
                [ gelid_plating,   gelid_plate, flux_helmet,   gelid_plate, gelid_plating ],
                [   gelid_plate,          null,        null,          null,   gelid_plate ]])
    .setRecipeFunction(onRecipeUpdate)
    .create();

// Gelid Enderium Chestplate
recipes.remove(gelid_chestplate);
RecipeBuilder.get("mage")
    .setName("gelid_chestplate")
    .addOutput(gelid_chestplate)
    .addTool(HAMMER, HAMMER_COST * 3 / 2)
    .addTool(<ore:artisansGrimoire>, GRIMOIRE_COST * 3 / 2)
    .setFluid(LIQUID * LIQUID_AMOUNT)
    .setShaped([[   gelid_plate,   gelid_plate,            null,   gelid_plate,   gelid_plate ],
                [ gelid_plating,    gelid_gear, flux_chestplate,    gelid_gear, gelid_plating ],
                [          null, gelid_plating,        flux_gem, gelid_plating,          null ],
                [          null, gelid_plating,     gelid_plate, gelid_plating,          null ],
                [          null, gelid_plating,     gelid_plate, gelid_plating,          null ]])
    .setRecipeFunction(onRecipeUpdate)
    .create();

// Gelid Enderium Leggings
recipes.remove(gelid_leggings);
RecipeBuilder.get("mage")
    .setName("gelid_leggings")
    .addOutput(gelid_leggings)
    .addTool(HAMMER, HAMMER_COST * 3 / 2)
    .addTool(<ore:artisansGrimoire>, GRIMOIRE_COST)
    .setFluid(LIQUID * LIQUID_AMOUNT)
    .setShaped([[   gelid_plate, gelid_plate,   gelid_plate, gelid_plate,   gelid_plate ],
                [ gelid_plating,  gelid_gear, flux_leggings,  gelid_gear, gelid_plating ],
                [ gelid_plating, gelid_plate,          null, gelid_plate, gelid_plating ],
                [ gelid_plating, gelid_plate,          null, gelid_plate, gelid_plating ],
                [ gelid_plating, gelid_plate,          null, gelid_plate, gelid_plating ]])
    .setRecipeFunction(onRecipeUpdate)
    .create();

// Gelid Enderium Boots
recipes.remove(gelid_boots);
RecipeBuilder.get("mage")
    .setName("gelid_boots")
    .addOutput(gelid_boots)
    .addTool(HAMMER, HAMMER_COST)
    .addTool(<ore:artisansGrimoire>, GRIMOIRE_COST)
    .setFluid(LIQUID * LIQUID_AMOUNT)
    .setShaped([[          null,   gelid_plate,       null,   gelid_plate,          null ],
                [   gelid_plate,    gelid_gear, flux_boots,    gelid_gear,   gelid_plate ],
                [ gelid_plating, gelid_plating,       null, gelid_plating, gelid_plating ]])
    .setRecipeFunction(onRecipeUpdate)
    .create();
