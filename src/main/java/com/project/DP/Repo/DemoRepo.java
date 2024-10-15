package com.project.DP.Repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.DP.Model.Employess;
import java.util.List;


public interface DemoRepo extends JpaRepository<Employess, Integer> {
	public  Employess findByName(String name);
}
