import mods.jei.JEI;

var hammer = <immersiveengineering:tool:0>;


// ============
// == PLATES ==
// ============

for name, plate in PLATES {
    var ingot = INGOTS[name];
    if (isNull(ingot)) continue;

    // Remove all default plate recipes.
    for item in plate.items
        recipes.remove(item);

    recipes.addShapeless("hammer_plate_" + name.toLowerCase(),
        plate.firstItem,
        [ hammer, ingot ]);
}


// ===========
// == GEARS ==
// ===========

// Remove Applied Enegistics 2's wooden gear.
JEI.removeAndHide(<appliedenergistics2:material:40>);
<ore:gearWood>.remove(<appliedenergistics2:material:40>);

for name, gear in GEARS {
    var ingot = INGOTS[name];
    var plate = PLATES[name];
    if (isNull(ingot) || isNull(plate)) continue;

    // Remove all default gear recipes.
    for item in gear.items
        recipes.remove(item);

    recipes.addShapedMirrored("hammer_gear_" + name.toLowerCase(),
        gear.firstItem,
        [[ hammer, ingot,  null ],
         [  ingot, plate, ingot ],
         [   null, ingot,  null ]]);
}
