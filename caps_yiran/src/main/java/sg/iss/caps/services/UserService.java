package sg.iss.caps.services;

import java.util.ArrayList;

import javax.validation.Valid;

import sg.iss.caps.model.LecturercoursePK;
import sg.iss.caps.model.User;

public interface UserService {
	User findUserByID(String lid);

	User createUser(User user);

	User updateStudent(User user);

	void removeUser(User user);

	ArrayList<User> findAllUser();

	void updateUser(@Valid User user);



}
