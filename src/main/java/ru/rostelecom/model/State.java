package ru.rostelecom.model;

import com.fasterxml.jackson.annotation.JsonProperty;

public class State {

    @JsonProperty("short_name")
    private String shortName;
    private String name;

    public State(String shortName, String name) {
        this.shortName = shortName;
        this.name = name;
    }

    public String getShort_name() {
        return shortName;
    }

    public void setShort_name(String shortName) {
        this.shortName = shortName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "State{" +
                "shortName='" + shortName + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
