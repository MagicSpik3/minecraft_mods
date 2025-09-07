package com.yourname.genderedbees.client;

import com.yourname.genderedbees.entity.GenderedBeeEntity;
import net.minecraft.client.renderer.entity.BeeRenderer;
import net.minecraft.client.renderer.entity.EntityRendererProvider;
import net.minecraft.resources.ResourceLocation;

public class GenderedBeeRenderer extends BeeRenderer<GenderedBeeEntity> {

    private static final ResourceLocation DEFAULT_TEXTURE =
            new ResourceLocation("minecraft", "textures/entity/bee/bee.png");

    public GenderedBeeRenderer(EntityRendererProvider.Context context) {
        super(context);
    }

    @Override
    public ResourceLocation getTextureLocation(GenderedBeeEntity entity) {
        return DEFAULT_TEXTURE; // will swap with gender-specific PNG later
    }
}
