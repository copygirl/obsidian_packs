import mods.jei.JEI;


// Remove the boats and their recipes - they can cause players to crash.
for boat in itemUtils.getItemsByRegexRegistryName("biomesoplenty:boat_.*")
    JEI.removeAndHide(boat);
