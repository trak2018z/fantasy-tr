package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import domain.User;
import domain.repository.UserRepository;
import service.UserService;

@Service
public class UserServiceImpl implements UserService {
	@Autowired 
	UserRepository userRepository;
	
	public List<User> getAllUsers(){
		return userRepository.getAllUsers();
	}
	
	public void addUser(User user) {
		userRepository.addUser(user);
	}
}
