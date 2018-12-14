package sg.iss.caps.services;

import java.util.ArrayList;

import sg.iss.caps.model.Academictime;

public interface AcademicService {
	
	ArrayList<Academictime> findAllAcademictimes();

	Academictime findAcademictime(int Year);

	Academictime createAcademictime(Academictime a);

	Academictime updateAcademictime(Academictime a);

	void removeAcademictime(Academictime a);
	
	



}
