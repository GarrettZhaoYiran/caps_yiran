package sg.iss.caps.services;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import sg.iss.caps.model.Lecturer;
import sg.iss.caps.model.Lecturercourse;
import sg.iss.caps.repo.LecturerRepository;
@Service
@Transactional

public class LecturerServiceImpl implements LecturerService {
	
	@Resource
	LecturerRepository urepo;

	public LecturerServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public ArrayList<Lecturer> findAllLecturers() {
		// TODO Auto-generated method stub
		ArrayList<Lecturer> llist = (ArrayList<Lecturer>)urepo.findAll();
		return llist;
	}

	@Override
	public Lecturer findLecturer(String nric) {
		// TODO Auto-generated method stub
		return urepo.findById(nric).get();
	}

	@Override
	public Lecturer createLecturer(Lecturer l) {
		// TODO Auto-generated method stub
		urepo.save(l);
		return null;
	}

	@Override
	public Lecturer updateLecturer(Lecturer l) {
		// TODO Auto-generated method stub
		urepo.saveAndFlush(l);
		return null;
	}

	@Override
	public void removeLecturer(Lecturer l) {
		// TODO Auto-generated method stub
		urepo.delete(l);
		

	}

	@Override
	public ArrayList<Lecturer> findLecturerByCriteria(Lecturer Lecturer) {
		// TODO Auto-generated method stub
		return null;
	}
	


}
