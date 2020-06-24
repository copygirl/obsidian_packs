import crafttweaker.item.IItemStack;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.jei.JEI;


// =====================================
// == Recipes of Workshops themselves ==
// =====================================

var treated_scaffold = <ore:scaffoldingTreatedWood>;
var treated_wood     = <ore:plankTreatedWood>;
var treated_fence    = <ore:fenceTreatedWood>;
var treated_crate    = <immersiveengineering:wooden_device0:0>;
var treated_barrel   = <immersiveengineering:wooden_device0:1>;

var steel_scaffold   = <ore:scaffoldingSteel>;
var steel_sheetmetal = <ore:blockSheetmetalSteel>;
var reinforced_crate = <immersiveengineering:wooden_device0:5>;
var metal_barrel     = <immersiveengineering:metal_device0:4>;

// Basic Workshop
recipes.addShaped("basic_workshop", <artisanworktables:workshop:5>,
    [[  <ore:plateIron>, <ore:workbench>,  <ore:plateIron> ],
     [ treated_scaffold,  treated_barrel, treated_scaffold ],
     [     treated_wood,   treated_crate,     treated_wood ]]);

// Designer's Workshop
var design_pattern = <artisanworktables:design_pattern>;
RecipeBuilder.get("basic")
    .setName("designers_workshop")
    .addOutput(<artisanworktables:workshop:12>)
    .addTool(HAMMER, 20)
    .setShaped(
        [[   <ore:woolBlue>,  design_pattern,            design_pattern,  design_pattern,   <ore:woolBlue> ],
         [  <ore:plankWood>,   <ore:dyeBlue>, <minecraft:writable_book>,  <ore:dyeWhite>,  <ore:plankWood> ],
         [  <ore:plankWood>, <ore:bookshelf>,           <ore:bookshelf>, <ore:bookshelf>,  <ore:plankWood> ],
         [ treated_scaffold,   treated_fence,             treated_crate,   treated_fence, treated_scaffold ],
         [     treated_wood,    treated_wood,              treated_wood,    treated_wood,     treated_wood ]])
    .create();

// Blacksmith's Workshop
RecipeBuilder.get("basic")
    .setName("blacksmiths_workshop")
    .addOutput(<artisanworktables:workshop:3>)
    .addTool(HAMMER, 20)
    .setShaped(
        [[ <ore:plateSteel>, <ore:plateSteel>,  <ore:plateSteel>, <ore:plateSteel>, <ore:plateSteel> ],
         [    <quark:chain>,  <ore:gearSteel>,      metal_barrel,  <ore:gearSteel>,    <quark:chain> ],
         [   steel_scaffold, steel_sheetmetal, <minecraft:anvil>, steel_sheetmetal,   steel_scaffold ],
         [ treated_scaffold, steel_sheetmetal,  reinforced_crate, steel_sheetmetal, treated_scaffold ],
         [     treated_wood,     treated_wood,      treated_wood,     treated_wood,     treated_wood ]])
    .create();

// Engineer's Workshop
var drill_head = <thermalfoundation:material:656>;
var saw_blade  = <thermalfoundation:material:657>;
var heavy_eng_block = <immersiveengineering:metal_decoration0:5>;
var electrum_coil   = <immersiveengineering:metal_decoration0:1>;
var electrum_wire   = <immersiveengineering:wirecoil:1>;
var simple_mech     = <thaumcraft:mechanism_simple>;
RecipeBuilder.get("blacksmith")
    .setName("engineers_workshop")
    .addOutput(<artisanworktables:workshop:6>)
    .addTool(HAMMER, 15)
    .addTool(<ore:artisansSpanner>, 28)
    .setFluid(<liquid:steam> * 4000)
    .setShaped(
        [[ <ore:plateSteel>, <ore:plateSignalum>, <ore:plateSignalum>, <ore:plateSignalum>, <ore:plateSteel> ],
         [       drill_head,  <ore:gearSignalum>,        metal_barrel,  <ore:gearSignalum>,        saw_blade ],
         [  heavy_eng_block,       electrum_wire,       electrum_coil,       electrum_wire,  heavy_eng_block ],
         [ treated_scaffold,         simple_mech,    reinforced_crate,         simple_mech, treated_scaffold ],
         [     treated_wood,        treated_wood,        treated_wood,        treated_wood,     treated_wood ]])
    .create();

// Mage's Workshop
var arcane_stone = <thaumcraft:stone_arcane>;
var complex_mech = <thaumcraft:mechanism_complex>;
var nether_brick = <minecraft:nether_brick>;
RecipeBuilder.get("blacksmith")
    .setName("mages_workshop")
    .addOutput(<artisanworktables:workshop:7>)
    .addTool(HAMMER, 25)
    .setFluid(<liquid:steam> * 4000)
    .setShaped(
        [[ <ore:plateThaumium>, <ore:plateThaumium>,           <ore:plateThaumium>, <ore:plateThaumium>, <ore:plateThaumium> ],
         [      <ore:obsidian>,        complex_mech,         <thaumcraft:crucible>,        complex_mech,      <ore:obsidian> ],
         [        arcane_stone,        nether_brick, <thaumcraft:arcane_workbench>,        nether_brick,        arcane_stone ],
         [    treated_scaffold,        nether_brick,     <thaumcraft:hungry_chest>,        nether_brick,    treated_scaffold ],
         [        treated_wood,        treated_wood,                  treated_wood,        treated_wood,        treated_wood ]])
    .create();


// =====================
// == Toolbox Recipes ==
// =====================

// Toolbox
recipes.addShaped("toolbox", <artisanworktables:toolbox>,
    [[ <ore:plateCopper> ],
     [     treated_crate ]]);

// Mechanical Toolbox
recipes.addShaped("mechanical_toolbox", <artisanworktables:mechanical_toolbox>,
    [[  <ore:plateIron>, <ore:plateCopper>,  <ore:plateIron> ],
     [ <ore:gearCopper>,              null, <ore:gearCopper> ],
     [  <ore:plateIron>,     treated_crate,  <ore:plateIron> ]]);
recipes.addShaped("mechanical_toolbox_upgrade", <artisanworktables:mechanical_toolbox>,
    [[  <ore:plateIron>,                        null,  <ore:plateIron> ],
     [ <ore:gearCopper>, <artisanworktables:toolbox>, <ore:gearCopper> ],
     [  <ore:plateIron>,                        null,  <ore:plateIron> ]]);


// ==================
// == Tool Recipes ==
// ==================

var non_magic_grimoires = [
    <artisanworktables:artisans_grimoire_iron>,
    <artisanworktables:artisans_grimoire_diamond>,
    <artisanworktables:artisans_grimoire_bronze>,
    <artisanworktables:artisans_grimoire_constantan>,
    <artisanworktables:artisans_grimoire_copper>,
    <artisanworktables:artisans_grimoire_invar>,
    <artisanworktables:artisans_grimoire_nickel>,
    <artisanworktables:artisans_grimoire_platinum>,
    <artisanworktables:artisans_grimoire_steel>
] as IItemStack[];

// Remove any Grimoires not based on magical materials.
<ore:artisansGrimoire>.removeItems(non_magic_grimoires);
for grimoire in non_magic_grimoires
    JEI.hide(grimoire);


// =====================
// == Related Recipes ==
// =====================

recipes.addShapeless("design_pattern", <artisanworktables:design_pattern>,
    [ <ore:paper>, <ore:dyeBlue>, <ore:dyeBlue> ]);
