package sg.iss.caps.services;

import java.util.ArrayList;

import sg.iss.caps.model.Lecturer;


public interface LecturerService {
	
	ArrayList<Lecturer> findAllLecturers();

	Lecturer findLecturer(String nric);

	Lecturer createLecturer(Lecturer l);

	Lecturer updateLecturer(Lecturer l);

	void removeLecturer(Lecturer l);

	ArrayList<Lecturer> findLecturerByCriteria(Lecturer Lecturer);
	

	

}
