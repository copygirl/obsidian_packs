var hammer = <immersiveengineering:tool:0>;
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
