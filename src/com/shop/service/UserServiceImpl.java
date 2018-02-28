package com.shop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.UserMapper;
import com.shop.pojo.User;

@Service("userServiceImpl")
public class UserServiceImpl {

	@Autowired
	UserMapper userMapper;

	public int insert(User user) {
		return userMapper.insert(user);
	}

	public int update(User user) {
		return userMapper.update(user);
	}

	public int delete(User user) {
		return userMapper.delete(user);
	}

	public List<User> getAll() {

		return userMapper.getAll();
	}

	public User findUser(User user) {

		return userMapper.findUser(user);
	}

	public List<User> getUserByName(String user) {
		return userMapper.getUserByName(user);
	}

}
