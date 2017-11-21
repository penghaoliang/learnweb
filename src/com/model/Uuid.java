package com.model;

import java.util.UUID;

public class Uuid { 
private String id;
public Uuid(){
}
public String getId() {
	return id;
}
public void setId() {
	this.id = UUID.randomUUID().toString();
}

}
