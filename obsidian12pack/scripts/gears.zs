import mods.jei.JEI;


// Remove Applied Enegistics 2's wooden gear.
JEI.removeAndHide(<appliedenergistics2:material:40>);
<ore:gearWood>.remove(<appliedenergistics2:material:40>);

var hammer = <immersiveengineering:tool:0>;
for name, gear in GEARS {
    var ingot = INGOTS[name];
    var plate = PLATES[name];
    if (isNull(ingot) || isNull(plate)) continue;

    // Remove all default gear recipes.
    for item in gear.items
        recipes.remove(item);

    recipes.addShaped("hammer_gear_" + name.toLowerCase(),
        gear.firstItem, [
            [ hammer, ingot,  null ],
            [  ingot, plate, ingot ],
            [   null, ingot,  null ]
        ]);
}
