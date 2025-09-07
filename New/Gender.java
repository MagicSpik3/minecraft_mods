package com.yourname.genderedbees.entity;

public enum Gender {
    MALE,
    FEMALE;

    public static Gender random() {
        return Math.random() < 0.5 ? MALE : FEMALE;
    }
}
