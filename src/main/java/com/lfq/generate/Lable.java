package com.lfq.generate;

import java.io.Serializable;

/**
 * lable
 * @author 
 */
public class Lable implements Serializable {
    private String id;

    private String name;

    private String description;

    private static final long serialVersionUID = 1L;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}