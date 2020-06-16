import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.recipes.ICraftingInfo;
import crafttweaker.recipes.IRecipeFunction;
import mods.artisanworktables.builder.RecipeBuilder;


// ===============
// == Functions ==
// ===============

// Function executed when the recipe matches, and is updated.
// This just carries the energy from the old item to the new one.
var onRecipeUpdate as IRecipeFunction = function(result, input, info) {
    return result.withTag({ Energy: input.base.tag.Energy });
};


// ======================
// == Redstone Arsenal ==
// ======================

// Base cost of "Flux-Infused" items made in the Blacksmith's Workshop:
var LIQUID        = <liquid:steam>;
var LIQUID_AMOUNT = 2000;
var HAMMER_COST   = 26;


// == INGREDIENTS ==

var rod = <redstonearsenal:material:192>;

var flux_ingot = <ore:ingotElectrumFlux>;
var flux_plate = <ore:plateElectrumFlux>;
var flux_gear  = <ore:gearElectrumFlux>;
var flux_gem   = <ore:gemCrystalFlux>;
var flux_rod   = <redstonearsenal:material:193>;
// Added by Redstone Repository.
var flux_string = <ore:stringFluxed>;


// == TOOLS ==

var flux_quiver       = <redstonearsenal:util.quiver_flux>;
var flux_wrench       = <redstonearsenal:tool.wrench_flux>;
var flux_battlewrench = <redstonearsenal:tool.battlewrench_flux>;
var flux_sword        = <redstonearsenal:tool.sword_flux>;
var flux_shovel       = <redstonearsenal:tool.shovel_flux>;
var flux_pickaxe      = <redstonearsenal:tool.pickaxe_flux>;
var flux_axe          = <redstonearsenal:tool.axe_flux>;
var flux_bow          = <redstonearsenal:tool.bow_flux>;
var flux_fishing_rod  = <redstonearsenal:tool.fishing_rod_flux>;
var flux_sickle       = <redstonearsenal:tool.sickle_flux>;
var flux_hammer       = <redstonearsenal:tool.hammer_flux>;
var flux_excavator    = <redstonearsenal:tool.excavator_flux>;
var flux_shield       = <redstonearsenal:tool.shield_flux>;

// Flux-Infused Quiver
recipes.remove(flux_quiver);
RecipeBuilder.get("blacksmith")
    .setName("flux_quiver")
    .addOutput(flux_quiver)
    .addTool(HAMMER, HAMMER_COST)
    .setFluid(LIQUID * LIQUID_AMOUNT)
    .setShaped([[ <minecraft:arrow>, flux_plate, flux_string, flux_string,        null ],
                [        flux_plate,   flux_gem,  flux_plate,        null, flux_string ],
                [              null, flux_plate,   flux_gear,  flux_plate, flux_string ],
                [              null,   flux_gem,  flux_plate,    flux_gem,  flux_plate ],
                [              null,       null,        null,  flux_plate,        null ]])
    .create();

// Flux-Infused OmniWrench
recipes.remove(flux_wrench);
RecipeBuilder.get("blacksmith")
    .setName("flux_wrench")
    .addOutput(flux_wrench)
    .addTool(HAMMER, HAMMER_COST / 3 * 2)
    .setFluid(LIQUID * (LIQUID_AMOUNT / 2))
    .setShaped([[     null, null, null, flux_ingot,       null ],
                [     null, null, null,   flux_gem, flux_ingot ],
                [     null, null,  rod,       null,       null ],
                [     null,  rod, null,       null,       null ],
                [ flux_gem, null, null,       null,       null ]])
    .create();

// Flux-Infused Battle-Wrench
recipes.remove(flux_battlewrench);
RecipeBuilder.get("blacksmith")
    .setName("flux_battlewrench")
    .addOutput(flux_battlewrench)
    .addTool(HAMMER, HAMMER_COST)
    .setFluid(LIQUID * LIQUID_AMOUNT)
    .setShaped([[     null, null,       null, flux_ingot,       null ],
                [     null, null, flux_ingot,  flux_gear, flux_ingot ],
                [     null, null,   flux_gem, flux_ingot,       null ],
                [     null,  rod,       null,       null,       null ],
                [ flux_gem, null,       null,       null,       null ]])
    .create();

// Flux-Infused Sword
recipes.remove(flux_sword);
RecipeBuilder.get("blacksmith")
    .setName("flux_sword")
    .addOutput(flux_sword)
    .addTool(HAMMER, HAMMER_COST)
    .setFluid(LIQUID * LIQUID_AMOUNT)
    .setShaped([[     null,      null,       null,       null, flux_ingot ],
                [     null,      null,       null, flux_ingot,       null ],
                [ flux_gem,      null, flux_ingot,       null,       null ],
                [     null, flux_gear,       null,       null,       null ],
                [ flux_rod,      null,   flux_gem,       null,       null ]])
    .create();

// Flux-Infused Shovel
recipes.remove(flux_shovel);
RecipeBuilder.get("blacksmith")
    .setName("flux_shovel")
    .addOutput(flux_shovel)
    .addTool(HAMMER, HAMMER_COST)
    .setFluid(LIQUID * LIQUID_AMOUNT)
    .setShaped([[     null, null,       null, flux_plate,       null ],
                [     null, null, flux_plate, flux_plate, flux_plate ],
                [     null, null,   flux_gem, flux_plate,       null ],
                [     null,  rod,       null,       null,       null ],
                [ flux_gem, null,       null,       null,       null ]])
    .create();

// Flux-Infused Pickaxe
recipes.remove(flux_pickaxe);
RecipeBuilder.get("blacksmith")
    .setName("flux_pickaxe")
    .addOutput(flux_pickaxe)
    .addTool(HAMMER, HAMMER_COST)
    .setFluid(LIQUID * LIQUID_AMOUNT)
    .setShaped([[     null, flux_ingot, flux_ingot,      null,   flux_gem ],
                [     null,       null,       null, flux_gear,       null ],
                [     null,       null,        rod,      null, flux_ingot ],
                [     null,        rod,       null,      null, flux_ingot ],
                [ flux_gem,       null,       null,      null,       null ]])
    .create();

// Flux-Infused Axe
recipes.remove(flux_axe);
RecipeBuilder.get("blacksmith")
    .setName("flux_axe")
    .addOutput(flux_axe)
    .addTool(HAMMER, HAMMER_COST)
    .setFluid(LIQUID * LIQUID_AMOUNT)
    .setShaped([[     null, null,       null, flux_ingot,   flux_gem ],
                [     null, null, flux_ingot,  flux_gear,       null ],
                [     null, null,        rod,       null, flux_ingot ],
                [     null,  rod,       null,       null,       null ],
                [ flux_gem, null,       null,       null,       null ]])
    .create();

// Flux-Infused Bow
recipes.remove(flux_bow);
RecipeBuilder.get("blacksmith")
    .setName("flux_bow")
    .addOutput(flux_bow)
    .addTool(HAMMER, HAMMER_COST)
    .setFluid(LIQUID * LIQUID_AMOUNT)
    .setShaped([[       null,        null,  flux_ingot,  flux_ingot, flux_gem ],
                [       null,   flux_gear,        null, flux_string,     null ],
                [ flux_ingot,        null, flux_string,        null,     null ],
                [ flux_ingot, flux_string,        null,        null,     null ],
                [   flux_gem,        null,        null,        null,     null ]])
    .create();

// Flux-Infused Fishing Rod
recipes.remove(flux_fishing_rod);
RecipeBuilder.get("blacksmith")
    .setName("flux_fishing_rod")
    .addOutput(flux_fishing_rod)
    .addTool(HAMMER, HAMMER_COST / 3 * 2)
    .setFluid(LIQUID * (LIQUID_AMOUNT / 2))
    .setShaped([[     null,     null,            null,       null,       flux_ingot ],
                [     null,     null,            null, flux_ingot,      flux_string ],
                [     null,     null,      flux_ingot,       null,      flux_string ],
                [     null, flux_rod, <ore:gearInvar>,       null,      flux_string ],
                [ flux_gem,     null,            null,       null, <ore:ingotInvar> ]])
    .create();

// Flux-Infused Sickle
recipes.remove(flux_sickle);
RecipeBuilder.get("blacksmith")
    .setName("flux_sickle")
    .addOutput(flux_sickle)
    .addTool(HAMMER, HAMMER_COST)
    .setFluid(LIQUID * LIQUID_AMOUNT)
    .setShaped([[       null,     null, flux_ingot, flux_ingot,       null ],
                [       null,     null,       null,       null, flux_ingot ],
                [       null,     null,       null,       null, flux_ingot ],
                [       null, flux_rod, flux_ingot, flux_ingot,       null ],
                [ flux_ingot,     null,       null,       null,       null ]])
    .create();

// Flux-Infused Hammer
recipes.remove(flux_hammer);
RecipeBuilder.get("blacksmith")
    .setName("flux_hammer")
    .addOutput(flux_hammer)
    .addTool(HAMMER, HAMMER_COST)
    .setFluid(LIQUID * LIQUID_AMOUNT)
    .setShaped([[     null,       null, flux_plate,       null,       null ],
                [     null, flux_plate,  flux_gear, flux_ingot,       null ],
                [     null,       null,   flux_gem,  flux_gear, flux_plate ],
                [     null,        rod,       null, flux_plate,       null ],
                [ flux_gem,       null,       null,       null,       null ]])
    .create();

// Flux-Infused Excavator
recipes.remove(flux_excavator);
RecipeBuilder.get("blacksmith")
    .setName("flux_excavator")
    .addOutput(flux_excavator)
    .addTool(HAMMER, HAMMER_COST)
    .setFluid(LIQUID * LIQUID_AMOUNT)
    .setShaped([[     null,       null, flux_plate, flux_plate,       null ],
                [     null, flux_plate, flux_ingot,  flux_gear, flux_plate ],
                [     null,       null,   flux_gem, flux_ingot, flux_plate ],
                [     null,        rod,       null, flux_plate,       null ],
                [ flux_gem,       null,       null,       null,       null ]])
    .create();

// Flux-Infused Shield
recipes.remove(flux_shield);
RecipeBuilder.get("blacksmith")
    .setName("flux_shield")
    .addOutput(flux_shield)
    .addTool(HAMMER, HAMMER_COST)
    .setFluid(LIQUID * LIQUID_AMOUNT)
    .setShaped([[       null,       null, flux_ingot, flux_plate,       null ],
                [       null, flux_ingot, flux_plate,   flux_gem, flux_plate ],
                [ flux_ingot, flux_plate,   flux_gem, flux_plate, flux_ingot ],
                [ flux_plate,   flux_gem, flux_plate, flux_ingot,       null ],
                [       null, flux_plate, flux_ingot,       null,       null ]])
    .create();


// == ARMOR ==

var flux_plating = <redstonearsenal:material:224>;

var flux_helmet     = <redstonearsenal:armor.helmet_flux>;
var flux_chestplate = <redstonearsenal:armor.plate_flux>;
var flux_leggings   = <redstonearsenal:armor.legs_flux>;
var flux_boots      = <redstonearsenal:armor.boots_flux>;

// Flux-Infused Helm
recipes.remove(flux_helmet);
RecipeBuilder.get("blacksmith")
    .setName("flux_helmet")
    .addOutput(flux_helmet)
    .addTool(HAMMER, 32)
    .setFluid(<liquid:steam> * 2000)
    .setShaped([[         null, flux_plating, flux_gem, flux_plating,         null ],
                [ flux_plating,   flux_plate, flux_gem,   flux_plate, flux_plating ],
                [   flux_plate,         null,     null,         null,   flux_plate ]])
    .create();

// Flux-Infused Chestplate
recipes.remove(flux_chestplate);
RecipeBuilder.get("blacksmith")
    .setName("flux_chestplate")
    .addOutput(flux_chestplate)
    .addTool(HAMMER, 40)
    .setFluid(<liquid:steam> * 2000)
    .setShaped([[   flux_plate,   flux_plate,       null,   flux_plate,   flux_plate ],
                [ flux_plating,    flux_gear, flux_plate,    flux_gear, flux_plating ],
                [         null, flux_plating,   flux_gem, flux_plating,         null ],
                [         null, flux_plating, flux_plate, flux_plating,         null ],
                [         null, flux_plating, flux_plate, flux_plating,         null ]])
    .create();

// Flux-Infused Leggings
recipes.remove(flux_leggings);
RecipeBuilder.get("blacksmith")
    .setName("flux_leggings")
    .addOutput(flux_leggings)
    .addTool(HAMMER, 40)
    .setFluid(<liquid:steam> * 2000)
    .setShaped([[   flux_plate, flux_plate, flux_plate, flux_plate,   flux_plate ],
                [ flux_plating,  flux_gear, flux_plate,  flux_gear, flux_plating ],
                [ flux_plating, flux_plate,       null, flux_plate, flux_plating ],
                [ flux_plating, flux_plate,       null, flux_plate, flux_plating ],
                [ flux_plating, flux_plate,       null, flux_plate, flux_plating ]])
    .create();

// Flux-Infused Boots
recipes.remove(flux_boots);
RecipeBuilder.get("blacksmith")
    .setName("flux_boots")
    .addOutput(flux_boots)
    .addTool(HAMMER, 32)
    .setFluid(<liquid:steam> * 2000)
    .setShaped([[         null,   flux_plate, null,   flux_plate,         null ],
                [   flux_plate,    flux_gear, null,    flux_gear,   flux_plate ],
                [ flux_plating, flux_plating, null, flux_plating, flux_plating ]])
    .create();
