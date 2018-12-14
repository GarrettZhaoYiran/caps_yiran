package sg.iss.caps.services;

import java.util.ArrayList;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.stereotype.Service;

import sg.iss.caps.model.LecturercoursePK;
import sg.iss.caps.model.User;
import sg.iss.caps.repo.UserRepository;

@Service
@Transactional
public class UserServiceImpl implements UserService{

	@Resource
	UserRepository uRepo;
	@Override
	public User findUserByID(String userID) {
		// TODO Auto-generated method stub
		return uRepo.findById(userID).get();
	}

	@Override
	public User createUser(User user) {
		// TODO Auto-generated method stub
		return uRepo.saveAndFlush(user);
	}

	@Override
	public User updateStudent(User user) {
		// TODO Auto-generated method stub
		return uRepo.saveAndFlush(user);
	}

	@Override
	public void removeUser(User user) {
		// TODO Auto-generated method stub
		uRepo.delete(user);
	}

	@Override
	public ArrayList<User> findAllUser() {
		// TODO Auto-generated method stub
		return (ArrayList<User>) uRepo.findAll();
	}

	@Override
	public void updateUser(@Valid User user) {
		// TODO Auto-generated method stub
		
	}
}
