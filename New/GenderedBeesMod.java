package com.yourname.genderedbees;

import com.mojang.logging.LogUtils;
import com.yourname.genderedbees.entity.ModEntities;
import net.minecraftforge.api.distmarker.Dist;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.event.entity.EntityJoinLevelEvent;
import net.minecraftforge.eventbus.api.IEventBus;
import net.minecraftforge.eventbus.api.SubscribeEvent;
import net.minecraftforge.fml.common.Mod;
import net.minecraftforge.fml.javafmlmod.FMLJavaModLoadingContext;
import org.slf4j.Logger;

@Mod(GenderedBeesMod.MODID)
public class GenderedBeesMod {
    public static final String MODID = "genderedbees";
    private static final Logger LOGGER = LogUtils.getLogger();

    public GenderedBeesMod() {
        IEventBus modEventBus = FMLJavaModLoadingContext.get().getModEventBus();

        ModEntities.register(modEventBus);

        MinecraftForge.EVENT_BUS.register(this);
    }

    // Debug log when bees join the world
    @SubscribeEvent
    public void onEntityJoinWorld(EntityJoinLevelEvent event) {
        if (event.getEntity() instanceof com.yourname.genderedbees.entity.GenderedBeeEntity bee) {
            LOGGER.info("Bee spawned: Gender={}, Age={}", bee.getGender(), bee.getAge());
        }
    }
}
