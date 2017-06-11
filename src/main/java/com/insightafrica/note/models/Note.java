package com.insightafrica.note.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name="Note")
@Table(name = "notes")
public class Note {

	private int noteId;
	private String title;
	private String content;
	
	@Id
    @Column(name="note_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)	
	public int getNoteId() { return noteId; 	}
	
	@Column(name="note_id")
	public void setNoteId(int noteId) {	this.noteId = noteId;	}
	
	@Column(name="title")
	public String getTitle() {	return title;	}
	
	@Column(name="title")
	public void setTitle(String title) {this.title = title; }
	
	@Column(name="content")
	public String getContent() {return content; }
	
	@Column(name="content")
	public void setContent(String content) {this.content = content;}
}
