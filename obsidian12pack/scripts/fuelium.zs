import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.immersiveengineering.Mixer;
import mods.immersiveengineering.Refinery;


var base_liquids = {
    <liquid:biodiesel>: 1,
    <liquid:refined_biofuel>: 1,
    <liquid:diesel>: 2,
    <liquid:gasoline>: 2,
    <liquid:refined_fuel>: 2
} as int[ILiquidStack];

for base_liquid, multiplier in base_liquids {
    Mixer.addRecipe(<liquid:fuelium> * (100 * multiplier),
        base_liquid * 100, [<ore:dustRedstone>], 400 * multiplier);
    Mixer.addRecipe(<liquid:fuelium> * (250 * multiplier),
        base_liquid * 200, [<ore:dustGlowstone>], 600 * multiplier);
    Mixer.addRecipe(<liquid:fuelium> * (1000 * multiplier),
        base_liquid * 1000, [<ore:dustUranium>], 1000 * multiplier);

    Refinery.addRecipe(<liquid:fuelium> * (8 * multiplier),
        base_liquid * 8, <liquid:redstone> * 8, 20 * multiplier);
    Refinery.addRecipe(<liquid:fuelium> * (10 * multiplier),
        base_liquid * 8, <liquid:glowstone> * 8, 30 * multiplier);
    Refinery.addRecipe(<liquid:fuelium> * (60 * multiplier),
        base_liquid * 60, <liquid:uranium> * 8, 100 * multiplier);
}
