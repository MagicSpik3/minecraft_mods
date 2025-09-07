package com.yourname.genderedbees.entity;

import net.minecraft.world.entity.EntityType;
import net.minecraft.world.entity.ai.goal.GoalSelector;
import net.minecraft.world.entity.animal.Bee;
import net.minecraft.world.level.Level;

public class GenderedBeeEntity extends Bee {
    private Gender gender;
    private int ageTicks = 0;

    public GenderedBeeEntity(EntityType<? extends Bee> entityType, Level world) {
        super(entityType, world);
        this.gender = Gender.random();
    }

    @Override
    public void tick() {
        super.tick();
        ageTicks++;

        // Every 600 ticks (~30s), print debug log
        if (!this.level().isClientSide && ageTicks % 600 == 0) {
            System.out.println("Bee " + this.getId() + " (" + gender + ") age: " + ageTicks / 20 + "s");
        }
    }

    public Gender getGender() {
        return gender;
    }

    public int getAge() {
        return ageTicks;
    }
}
