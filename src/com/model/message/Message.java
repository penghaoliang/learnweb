package com.model.message;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import com.model.Course;

public class Message {
private String id; //����ID���������Զ�����
private String content; //��������
private String author;//��������
private Date date;//����ʱ��
private Set<Reply> replys= new HashSet<Reply>();;
public Message(){}
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getContent() {
	return content;
}
public void setContent(String content) {
	this.content = content;
}
public String getAuthor() {
	return author;
}
public void setAuthor(String author) {
	this.author = author;
}
public Date getDate() {
	return date;
}
public void setDate(Date date) {
	this.date = date;
}
public Set<Reply> getReplys() {
	return replys;
}
public void setReplys(Set<Reply> replys) {
	this.replys = replys;
}

}
