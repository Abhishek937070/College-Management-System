package com.MyWebProject.repo;



import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.MyWebProject.Entities.Enquiry;

public interface EnquiryRepo extends CrudRepository<Enquiry, Integer>
{
	
		@Query(value = "select * from enquiry where sid =:sid",nativeQuery = true )
		List<Enquiry>  MyAllEnquiryRepo(@Param("sid")int sid);

		
		@Query(value = "select e.* from Student s inner join Enquiry e on s.sid = e.sid", nativeQuery = true )
		List<Enquiry> vieAllEnquiryRepo();




}
