package com.MyWebProject.Dao;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.MyWebProject.Entities.Enquiry;
import com.MyWebProject.repo.EnquiryRepo;

@Repository
public class EnquiryDao {

	@Autowired
	EnquiryRepo enqRepo;
	
	public void saveEnquiryDataDao(Enquiry enq)
	{
		enqRepo.save(enq); // 
	}
	
	
	
	public List<Enquiry> MyAllEnquiryDao(int sid)
	{
		//List<Enquiry> enq_list=(List<Enquiry>)enqRepo.findAll();
		List<Enquiry>  enq_list = enqRepo.MyAllEnquiryRepo(sid);
		return enq_list;
	}
	
	
	public List<Enquiry> viewAllEnquiryDao()
	{
		//List<Enquiry>  enq_list = (List<Enquiry>) enqRepo.findAll();
		List<Enquiry>  enq_list = enqRepo.vieAllEnquiryRepo();
		return enq_list;
	}
	
	
	public Enquiry getEnquiry(int eid)
	{
		Enquiry enq = enqRepo.findById(eid).get();
		
		return enq;
		
	}
	
	
	public Enquiry setRemarkSucessDao(int eid , Enquiry enq)
	{
		
		Enquiry result =  enqRepo.findById(eid).get() ;
		
		result.setRemark(enq.getRemark());
		
		return enqRepo.save(result);
		
	}
	
	
	public List<Enquiry> deleteEnquiryDao(int eid, int sid)
	{
		Enquiry enq =  enqRepo.findById(eid).get();
		
		if(enq.getRemark().equals("Not Set"))
		{
			enqRepo.delete(enq);
			//return "Enquiry Deleted";
		}
		List<Enquiry>  enq_list = enqRepo.MyAllEnquiryRepo(sid);
		return enq_list;
		
		
		
	}
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
