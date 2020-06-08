recipes.removeByRegex("unidict:plate.*");
recipes.removeByRegex("thaumcraft:.*plate");
recipes.removeByRegex("immersiveengineering:compat/plate.*");
recipes.removeByRegex("immersiveengineering:material/plate.*");

var hammer = <immersiveengineering:tool:0>;
for name, plate in PLATES {
    var ingot = INGOTS[name];
    if (!isNull(ingot)) {
        recipes.addShapeless("hammer_" + name.toLowerCase(),
            plate.firstItem,
            [ hammer, ingot ]);
    }
}
