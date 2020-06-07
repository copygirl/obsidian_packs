title     = "obsidian 1.12 Modpack"
authors   = listOf("copygirl")
version   = "0.0.1"
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
        +Mod.noRecipeBook         // Removes the vanilla recipe book in favor of JEI
        +Mod.toastControl         // Removes annoying tutorial / recipe toasts
        +Mod.unidict              // Standardizes output of all recipes

        // Gameplay Changes
        +Mod.betterportals  // Portals you can see and walk through
        +Mod.multiMine      // Save mining progress, mine with other players
        +Mod.passableLeaves // Pass through leaves

        // Customization
        +Mod.artisanWorktables     // Custom crafting tables, can use tools and fluids
            +Mod.artisanAutomation // - Automation for Artisan Worktables
        +Mod.crafttweaker          // Add, change and remove recipes
            +Mod.modtweaker        // - Change more mod-related recipes

        // World Generation
        +Mod.biomesOPlenty    // More biomes and content
        +Mod.dynamictrees     // Pretty trees that grow over time
            +Mod.dtbop                          // - Biomes O' Plenty compatibility
            +Mod.dttc                           // - Thaumcraft compatibility
            +Mod.dynamicTreesIntegratedDynamics // - Integrated Dynamics compatibility
            +Mod.dynamicTreesTinkersConstruct   // - Tinkers Construct compatibility
            +Mod.dynamicTreesQuark              // - Quark compatibility
        +Mod.largeOreDeposits // Generates rare, large ore deposits
        +Mod.theLostCities    // Abandoned cities with infrastructure

        // ------------------
        // == CONTENT MODS ==
        // ------------------

        +Mod.chiselsBits            // Build custom sub-block decorations
        +Mod.cookingForBlockheads   // Simplified food crafting and kitchen decoration
        +Mod.exchangers             // Exchange slices of blocks quickly
        +Mod.fairyLights            // Adorable looking hanging lights
        +Mod.friendshipBracelet     // Make friends and teleport to them from anywhere!
        +Mod.futureMc               // Newer Minecraft content in older versions
        +Mod.leatherWorks           // Redone leather-working and packs for storage
        +Mod.mrcrayfishFurnitureMod // Various deorative (and functional) furniture blocks
        +Mod.mrcrayfishsGunMod      // Guns and attachments
        +Mod.mrcrayfishsVehicleMod  // Customizable vehicles and fueling system
        +Mod.respawnablePets        // Pets can respawn using an "Etheric Gem"
        +Mod.scannable              // Scan for ores, animals and enemies, fancily!
        +Mod.tinkersConstruct       // Create custom tools from many materials
            +Mod.moarTinkers        // - More materials from mods, some with traits
            +Mod.tinkersComplement  // - Smol smeltery and other goodies
        +Mod.toolBelt               // Switch tools on the fly
        +Mod.quark                  // Tons of Vanilla-style tweaks and additions
        +Mod.quarkOddities          // Matrix enchanting and Totem of Holding
        +Mod.waystones              // Teleportation!
        +Mod.wearableBackpacks      // Backpacks!

        // Dimensions
        +Mod.theTwilightForest // Progress your way through a magical land

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
        +Mod.integratedDynamics      // Build programmable networks for automation and more
            +Mod.integratedCrafting  // - Craft automatically
            +Mod.integratedNbt       // - Inspect NBT data
            +Mod.integratedTerminals // - Manage items and fluids in the network
            +Mod.integratedTunnels   // - Transfer items and fluid
        +Mod.immersiveEngineering    // Electrical power, machines, ...
            +Mod.engineersDecor      // - IE inspired decorative blocks and devices
            +Mod.engineersDoors      // - Treated Wood and Steel doors and trapdoors
            +Mod.immersivePetroleum  // - Oil extraction and processing
            +Mod.immersiveposts      // - Tall posts to attach cables to
        +Mod.opencomputers           // Modular computers programmable with Lua
            +Mod.charsetAudio        // - Audio storage and cables
            +Mod.openscreens         // - Flatscreens and holographic screens
            // Computronics (local)  // - Additional computer components
        +Mod.retrocomputers          // Program computers using FORTH
        +Mod.solarFluxReborn         // Solar power!
        +Mod.thermalFoundation       // Thermal* base resources and tools
            +Mod.redstoneArsenal            // - Tools and armor which use power
            +Mod.redstoneRepositoryRevolved // - Upgrade to Redstone Arsenal items
            +Mod.thermalDynamics            // - Pipes for item, fluid and energy transport
            +Mod.thermalExpansion           // - Machines for processing and automation
            +Mod.thermalInnovation          // - Tiered, powered tools
        +Mod.simplelogicGates       // Various redstone gates
        +Mod.simplelogicWires       // Redstone wires (normal, insulated, bundled)

        // Magic
        +Mod.botania                 // Plant magic
        +Mod.enderStorage18          // Shared storage even between dimensions
        +Mod.projecte                // Transmute materials into other materials
            +Mod.projecteIntegration // - ProjectE integration for tons of mods
            +Mod.refinedExchange     // - Liquify items into EMC to craft with
            +Mod.thaumicEquivalence  // - Adds EMC values to Thaumcraft items
        +Mod.reliquaryV13            // Magically themed utility items and blocks
        +Mod.thaumcraft              // So much Magic!
            +Mod.expandedArcanum             // - Thaumcraft drill heads, IE native clusters
            +Mod.engineeredGolems            // - Golems from treated wood and steel
            +Mod.thaumcraftInventoryScanning // - Easily scan items from inventory screens
            +Mod.thaumicAugmentation         // - More magic and.. doors
        +Mod.psi                     // Programmable magic guns

        withTypeClass(Direct::class) {  }.list {
            +"computronics" { url = "http://files.vexatos.com/Computronics/Computronics-1.12.2-1.6.6.jar" }
        }

        // SERVER OPTIONAL MODS
        group {
            side = Side.SERVER
            optional { selected = false }
        }.list {
            +Mod.btfuContinuousRsyncIncrementalBackup { name = "BTFU"; description = "Best backup mod in existence! (setup required)" }
            +Mod.matterlink { description = "MatterBridge endpoint for Minecraft servers (requires relay)" }
        }

        // CLIENT MODS
        group {
            side = Side.CLIENT
        }.list {
            // CLIENT REQUIRED MODS
            +Mod.blockDropsJeiAddon
            +Mod.justEnoughResourcesJer
            +Mod.thaumicJei

            // CLIENT RECOMMENDED MODS
            group {
                optional { selected = true }
            }.list {
            }

            // CLIENT OPTIONAL MODS
            group {
                optional { selected = false }
            }.list {
                +Mod.betterFoliage   { description = "Prettier vegetation, such as leaves and grass, at some FPS cost" }
                +Mod.betterPlacement { description = "Don't skip blocks when holding down mouse button to place" }
                +Mod.itemScroller    { description = "Use scroll wheel and other shortcuts to move items" }
                +Mod.mumblelink      { description = "Links Minecraft to Mumble, enabling positional audio" }
            }
        }
    }
}
