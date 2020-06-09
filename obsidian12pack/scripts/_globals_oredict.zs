#priority 1000

import crafttweaker.oredict.IOreDictEntry;


global INGOTS as IOreDictEntry[string] = {};
global PLATES as IOreDictEntry[string] = {};
global GEARS  as IOreDictEntry[string] = {};

for oreDictEntry in oreDict {
    if (oreDictEntry.empty) continue;
    var fullName = oreDictEntry.name;

    if fullName.startsWith("ingot")
        INGOTS[fullName.substring(5)] = oreDictEntry;
    else if fullName.startsWith("plate")
        PLATES[fullName.substring(5)] = oreDictEntry;
    else if fullName.startsWith("gear")
        GEARS[fullName.substring(4)] = oreDictEntry;
}
