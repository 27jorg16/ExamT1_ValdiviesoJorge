package com.cibertec;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface EmpleadoRepository extends JpaRepository<Empleado, Long> {

	List<Empleado> findAll();
	
}
