title     = "obsidian 1.12 Modpack"
authors   = listOf("copygirl", "Nikky", "capitalthree")
version   = "0.4.1"
icon      = rootFolder.resolve("icon.png")

mcVersion = "1.12.2"
modloader { forge(Forge.mc1_12_2_latest) }

pack {
    multimc {
        selfupdateUrl = "https://meowface.org/copygirl/obsidian_packs/obsidian12pack.json"
    }
}

root<Curse> {
    releaseTypes = setOf(FileType.Release, FileType.Beta, FileType.Alpha)

    // COMMON MODS
    it.list {
        // Libraries
        +Mod.baubles             // Adds 7 more equipment slots for items
            +Mod.baubleOfUndying // - Allows Totem of Undying to be equipped as a bauble
        +Mod.mcmultipart         // Allows certain blocks to fit in a single block space
        +Mod.redstoneFlux        // FIXME: Required by CoFH Core but not a proper dependency?
        +Mod.shadowfactsForgelin // FIXME: Required because wonky depenceny resolution

        // Optimization and Fixes
        +Mod.foamfixOptimizationMod // Optimizations for cutting down RAM usage
        +Mod.randompatches          // Fixes a bunch of issues with Minecraft

        // Tweaks and Utilities
        +Mod.appleskin            // Displays hunger and saturation info
        +Mod.anvilPatchLawful     // Remove the increase in enchantment / repair cost
        +Mod.charsetBlockCarrying // Pick up blocks and carry them around
        +Mod.charsetImmersion     // Stack ingots, plates and gears in-world
        +Mod.defaultOptions       // Provides options and keybinds when first launching the game
        +Mod.jei                  // Look up recipes and uses of items
        +Mod.journeymap           // Automatically maps the world as you explore in real-time
        +Mod.lingeringLoot        // Powerful rules engine to affect item drops
        +Mod.unidict              // Standardizes output of all recipes

        // Gameplay Changes
        +Mod.multiMine      // Save mining progress, mine with other players
        +Mod.passableLeaves // Pass through leaves

        // Cosmetics
        +Mod.cosmeticArmorReworked // Cosmetic armor slots for that style
        +Mod.morePlayerModels      // Player model customization
        +Mod.tails                 // Lets you have tails and ears and stuff!
            +Mod.immersiveFloofs   // - Shoot players to make them floofy

        // Customization
        +Mod.artisanWorktables     // Custom crafting tables, can use tools and fluids
            +Mod.artisanAutomation // - Automation for Artisan Worktables
        +Mod.crafttweaker          // Add, change and remove recipes
            +Mod.modtweaker        // - Change more mod-related recipes
        +Mod.loadout               // Receive starting items first time you spawn

        // ------------------
        // == CONTENT MODS ==
        // ------------------

        // World Generation
        +Mod.biomesOPlenty    // More biomes and content
        +Mod.dynamictrees     // Pretty trees that grow over time
            +Mod.dtbop                        // - Biomes O' Plenty compatibility
            +Mod.dttc                         // - Thaumcraft compatibility
            +Mod.dynamicTreesTinkersConstruct // - Tinkers Construct compatibility
            +Mod.dynamicTreesQuark            // - Quark compatibility
        +Mod.largeOreDeposits // Generates rare, large ore deposits
        +Mod.theLostCities    // Abandoned cities with infrastructure

        // Dimensions
        +Mod.theTwilightForest // Progress your way through a magical land

        // Various
        +Mod.akashicTome              // The book to hold all your books
        +Mod.charsetTools             // Signal meter and stopwatch (useful for SimpleLogic mods)
        +Mod.chisel { common.fileNameRegex = ".*1.0.1.44.*" }
                                      // Extra blocks and varients to build with
            +Mod.unlimitedChiselWorks // - Even more blocks and variants!
        +Mod.chiselsBits              // Build custom sub-block decorations
        +Mod.comforts                 // Sleep anywhere and skip to the night
        +Mod.cookingForBlockheads     // Simplified food crafting and kitchen decoration
        +Mod.exchangers               // Exchange slices of blocks quickly
        +Mod.fairyLights              // Adorable looking hanging lights
        +Mod.friendshipBracelet       // Make friends and teleport to them from anywhere!
        // Fruit Phone (direct)       // WAILA alternative that requires a items to use
        +Mod.leatherWorks             // Redone leather-working and packs for storage
        +Mod.mrcrayfishFurnitureMod   // Various deorative (and functional) furniture blocks
        +Mod.mrcrayfishsGunMod        // Guns and attachments
        +Mod.mrcrayfishsVehicleMod    // Customizable vehicles and fueling system
        +Mod.respawnablePets          // Pets can respawn using an "Etheric Gem"
        +Mod.scannable                // Scan for ores, animals and enemies, fancily!
        +Mod.structuredCrafting       // Craft directly in-world from blocks or inventories
        +Mod.theWeirdingGadget        // 3x3 chunk loading for a limited time
        +Mod.tinkersConstruct         // Create custom tools from many materials
            +Mod.moarTinkers          // - More materials from mods, some with traits
            +Mod.tinkersComplement    // - Smol smeltery and other goodies
        +Mod.toolBelt                 // Switch tools on the fly
        +Mod.quark                    // Tons of Vanilla-style tweaks and additions
        +Mod.quarkOddities            // Matrix enchanting and Totem of Holding
        +Mod.waystones                // Teleportation!
        +Mod.wearableBackpacks        // Backpacks!
        +Mod.xtones                   // Modern and futuristic building blocks

        // Storage
        +Mod.appliedEnergistics2         // Digital storage and automation
            +Mod.extracells2             // - Store and craft with fluids (and more)
            +Mod.thaumicEnergistics      // - Store and craft with essentia
        +Mod.refinedStorage              // Digital storage #2
            +Mod.refinedStorageAddons    // - Wireless crafting grid
        +Mod.storageDrawers              // Physical storage
            +Mod.storageDrawersUnlimited // - Support ALL the wood types!

        // Technology
        +Mod.compactMachines         // Compact large automated structures in a single block
        +Mod.deepMobLearning         // Digital mob farming
        +Mod.fluxNetworks            // Wireless, cross-dimensional energy transfer
        +Mod.immersiveEngineering    // Electrical power, machines, ...
            +Mod.engineersDecor        // - IE inspired decorative blocks and devices
            +Mod.engineersDoors        // - Treated Wood and Steel doors and trapdoors
            +Mod.immersiveCables       // - Cables for Applied Energistics 2 and Refined Storage
            +Mod.immersiveIntelligence // - Data & Electronics, Logistics, Warfare, Intelligence
            +Mod.immersivePetroleum    // - Oil extraction and processing
            +Mod.immersiveposts        // - Tall posts to attach cables to
        +Mod.opencomputers           // Modular computers programmable with Lua
            // Computronics (direct) // - Additional computer components
            +Mod.openscreens         // - Flatscreens and holographic screens
        +Mod.solarFluxReborn         // Solar power!
        +Mod.thermalFoundation       // Thermal* base resources and tools
            +Mod.redstoneArsenal            // - Tools and armor which use power
            +Mod.redstoneRepositoryRevolved // - Upgrade to Redstone Arsenal items
            +Mod.thermalCultivation         // - Watering cans. That's it.
            +Mod.thermalDynamics            // - Pipes for item, fluid and energy transport
            +Mod.thermalExpansion           // - Machines for processing and automation
            +Mod.thermalInnovation          // - Tiered, powered tools
        +Mod.roboticparts            // Cyberpunk style augmentations for your body
            +Mod.rewired             // - Even more augments and other stuff
        +Mod.simplelogicGates        // Various redstone gates
        +Mod.simplelogicWires        // Redstone wires (normal, insulated, bundled)

        // Magic
        +Mod.botania                 // Plant magic
        +Mod.embersRekindled         // Dwarven magic
        +Mod.enderStorage18          // Shared storage even between dimensions
        +Mod.magicArsenal            // Channel your energy into a variety of spells
        +Mod.reliquaryV13            // Magically themed utility items and blocks
        +Mod.roots                   // Natural, wild magic
        +Mod.thaumcraft              // Use thaumaturgy to perform miracles
            +Mod.expandedArcanum             // - Thaumcraft drill heads, IE native clusters
            +Mod.engineeredGolems            // - Golems from treated wood and steel
            +Mod.thaumcraftInventoryScanning // - Easily scan items from inventory screens
            +Mod.thaumicAugmentation         // - More magic and.. doors
        +Mod.psi                     // Programmable magic guns
            +Mod.randomPsideas       // - More Psi tools to play with
            +Mod.psio                // - Balancing Psi regeneration
            +Mod.psionicPeripherals  // - Guntools and psimetal bow

        withTypeClass(Direct::class) {  }.list {
            +"computronics"      { url = "http://files.vexatos.com/Computronics/Computronics-1.12.2-1.6.6.jar" }
            +"fruitphone"        { url = "https://ci.elytradev.com/job/elytra/job/FruitPhone/job/1.12.2/8/artifact/build/libs/FruitPhone-1.12.2-2.86.jar" }
            +"probedataprovider" { url = "https://ci.elytradev.com/job/elytra/job/ProbeDataProvider/job/1.12/6/artifact/build/libs/ProbeDataProviderAPI-MC1.12_ver1.1.1.jar" }
        }

        // SERVER OPTIONAL MODS
        group {
            side = Side.SERVER
            optional { selected = false }
        }.list {
            +Mod.btfuContinuousRsyncIncrementalBackup { name = "BTFU"; description = "Best backup mod in existence! (setup required)" }
        }

        // CLIENT MODS
        group {
            side = Side.CLIENT
        }.list {
            // CLIENT REQUIRED MODS
            +Mod.blockDropsJeiAddon     // Displays drops that don't drop themselves in JEI
            +Mod.justEnoughResourcesJer // Additional JEI tabs for mob drops, dungeon loot and more
            +Mod.moreOverlays           // Shows light level overlay, chunk boundaries, item search
            +Mod.thaumicJei             // JEI support for Thaumcraft recipes and aspect sources

            // CLIENT RECOMMENDED MODS
            group {
                optional { selected = true }
            }.list {
                +Mod.controlling  { description = "Improves controls with search, showing conflicts" }
                +Mod.neat         { description = "Shows health indicators above mobs" }
                +Mod.noRecipeBook { description = "Removes the vanilla recipe book (in favor of JEI)" }
                +Mod.toastControl { description = "Removes annoying tutorial / recipe toasts" }
            }

            // CLIENT OPTIONAL MODS
            group {
                optional { selected = false }
            }.list {
                +Mod.betterFoliage   { description = "Prettier vegetation, such as leaves and grass, at some FPS cost" }
                +Mod.betterPlacement { description = "Don't skip blocks when holding down mouse button to place" }
                +Mod.inventoryTweaks { description = "For those who want it (Quark already offers sorting and more)" }
                +Mod.itemScroller    { description = "Use scroll wheel and other shortcuts to move items" }
                +Mod.mumblelink      { description = "Links Minecraft to Mumble, enabling positional audio" }
            }
        }
    }
}
