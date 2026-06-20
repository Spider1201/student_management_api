package com.spider.Student_Management_Api.dao;

import com.spider.Student_Management_Api.model.Student;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

@Component
public class StudentDao {
    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public List<Student> getStudents(){
        Session session = sessionFactory.getCurrentSession();
        List<Student> students = session.createQuery("from Student", Student.class).list();

        return students;
    }

    @Transactional
    public void addStudent(Student s){
        Session session = sessionFactory.getCurrentSession();
        session.save(s);
    }

    @Transactional
    public Student getStudent(int id){
        Session session = sessionFactory.getCurrentSession();
        Student s = session.get(Student.class, id);
        return s;
    }

    @Transactional
    public void deleteStudent(int id){
        Session session = sessionFactory.getCurrentSession();
        Student s = session.get(Student.class, id);

        if(s != null){
            session.delete(s);
        }
    }

    @Transactional
    public void updateStudent(Student s){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(s);
    }
}
