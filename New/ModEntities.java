package com.yourname.genderedbees.entity;

import com.yourname.genderedbees.GenderedBeesMod;
import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.MobCategory;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.registries.DeferredRegister;
import net.minecraftforge.registries.ForgeRegistries;
import net.minecraftforge.registries.RegistryObject;

public class ModEntities {
    public static final DeferredRegister<EntityType<?>> ENTITIES =
            DeferredRegister.create(ForgeRegistries.ENTITY_TYPES, GenderedBeesMod.MODID);

    public static final RegistryObject<EntityType<GenderedBeeEntity>> GENDERED_BEE =
            ENTITIES.register("gendered_bee", () ->
                    EntityType.Builder.of(GenderedBeeEntity::new, MobCategory.CREATURE)
                            .sized(0.7F, 0.6F) // same as vanilla bee
                            .build("gendered_bee"));

    public static void register(IEventBus eventBus) {
        ENTITIES.register(eventBus);
    }
}
