package ru.rostelecom.model;

public class State {

    private String short_name;
    private String name;

    public State(String short_name, String name) {
        this.short_name = short_name;
        this.name = name;
    }

    public String getShort_name() {
        return short_name;
    }

    public void setShort_name(String short_name) {
        this.short_name = short_name;
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
                "short_name='" + short_name + '\'' +
                ", name='" + name + '\'' +
                '}';
    }
}
