package com.insightafrica.note.services;

import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.insightafrica.note.models.Note;

@SuppressWarnings("deprecation")
@Repository
public class NoteService {

	@Autowired
	private SessionFactory sessionFactory;

	public NoteService(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Transactional
	public List<Note> list() {
		Session session = sessionFactory.getCurrentSession();
		CriteriaBuilder builder = session.getCriteriaBuilder();

		CriteriaQuery<Note> criteriaQuery = builder.createQuery(Note.class);
		criteriaQuery.from(Note.class);

		List<Note> listNote = session.createQuery(criteriaQuery).getResultList();

		return listNote;
	}
	
	@Transactional
	public void saveOrUpdate(Note note) {
		sessionFactory.getCurrentSession().saveOrUpdate(note);
	}
	
	@Transactional
	public void delete(int noteId) {
		Note note = new Note();
		note.setNoteId(noteId);
		sessionFactory.getCurrentSession().delete(note);
	}
	
	@Transactional
	public Note  get(int noteId) {
		String hql = "from Note where note_id=" + noteId;
		@SuppressWarnings("rawtypes")
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		@SuppressWarnings({ "unchecked" })
		List<Note> noteList = (List<Note>) query.list();
		
		if (noteList != null && !noteList.isEmpty()) {
			return noteList.get(0);
		}
		
		return null;
	}
}
