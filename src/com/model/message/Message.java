package com.model.message;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import com.model.Course;

public class Message {
private String id; //留言ID不用输入自动生成
private String content; //留言内容
private String author;//留言作者
private Date date;//留言时间
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
