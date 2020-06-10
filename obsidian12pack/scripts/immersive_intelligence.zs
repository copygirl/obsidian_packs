import mods.jei.JEI;


// Small crate "conversion" recipe is broken, ..
recipes.removeByRecipeName("immersiveintelligence:small_crate_wooden");
recipes.removeByRecipeName("immersiveintelligence:small_crate_metal");

// .. and the blocks don't work properly, anyway!
JEI.hide(<immersiveintelligence:small_crate:*>);
