package sg.iss.caps.services;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import sg.iss.caps.model.Academictime;
import sg.iss.caps.model.Course;
import sg.iss.caps.model.Student;
import sg.iss.caps.repo.AcademictimeRepository;

@Service
public class AcademicServiceImpl implements AcademicService {
	
	@Resource
	AcademictimeRepository arepo;

	public AcademicServiceImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public ArrayList<Academictime> findAllAcademictimes() {
		// TODO Auto-generated method stub
		return (ArrayList<Academictime>)arepo.findAll();
	}

	@Override
	public Academictime findAcademictime(int year) {
		// TODO Auto-generated method stub
		System.out.println("Academic Time:" + year);
		Academictime academictime = arepo.findById(year).get();
		System.out.println(academictime.toString());
		return academictime;
		
	}

	@Override
	public Academictime createAcademictime(Academictime a) {
		// TODO Auto-generated method stub
		return arepo.saveAndFlush(a);
	}

	@Override
	public Academictime updateAcademictime(Academictime a) {
		// TODO Auto-generated method stub
		return arepo.saveAndFlush(a);
	}

	@Override
	public void removeAcademictime(Academictime a) {
		// TODO Auto-generated method stub
		arepo.delete(a);

	}


	
	

	

}
