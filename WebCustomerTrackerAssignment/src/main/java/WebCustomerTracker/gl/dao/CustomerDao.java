package WebCustomerTracker.gl.dao;

import java.util.List;

import org.springframework.stereotype.Service;

import WebCustomerTracker.gl.entities.Customer;

@Service
public interface CustomerDao {

	public List<Customer> findAll();

	Customer findById(int id);

	void save(Customer customer);

	void deleteById(int id);

}
