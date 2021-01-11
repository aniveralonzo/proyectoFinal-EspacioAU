
package net.alonzo.EspacioAU.service;

import java.util.Date;
import net.alonzo.EspacioAU.domain.Address;
import net.alonzo.EspacioAU.domain.Contact;
import net.alonzo.EspacioAU.domain.Enquiry;
import net.alonzo.EspacioAU.domain.EnquiryCourse;
import net.alonzo.EspacioAU.domain.Followup;
import net.alonzo.EspacioAU.domain.Institute;
import net.alonzo.EspacioAU.dto.EnquiryCommand;
import net.alonzo.EspacioAU.repo.AddressRepository;
import net.alonzo.EspacioAU.repo.ContactRepository;
import net.alonzo.EspacioAU.repo.CourseRepository;
import net.alonzo.EspacioAU.repo.EnquiryCourseRepository;
import net.alonzo.EspacioAU.repo.EnquiryRepository;
import net.alonzo.EspacioAU.repo.EnquirySourceRepository;
import net.alonzo.EspacioAU.repo.FollowupRepository;
import net.alonzo.EspacioAU.repo.InstituteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author user hp
 */
@Service
public class CommonService {

    @Autowired
    AddressRepository addressRepository;
    @Autowired
    ContactRepository contactRepository;
    @Autowired
    InstituteRepository instituteRepository;
    @Autowired
    EnquirySourceRepository enquirySourceRepository;
    @Autowired
    EnquiryRepository enquiryRepository;
    @Autowired
    CourseRepository courseRepository;
    @Autowired
    EnquiryCourseRepository enquiryCourseRepository;
    @Autowired
    FollowupRepository followupRepository;

    @Transactional
    public void saveInstitute(Institute inst) {
        //address
        addressRepository.save(inst.getContact().getPermanentAddress());
        //contact
        contactRepository.save(inst.getContact());
        //institute
        instituteRepository.save(inst);
    }

    @Transactional
    public void saveEnquiry(EnquiryCommand cmd){
        Address a = cmd.getEnquiry().getContact().getPermanentAddress();
        addressRepository.save(a);
        
        Contact c = cmd.getEnquiry().getContact();
        contactRepository.save(c);
        
        Enquiry e = cmd.getEnquiry();
        e.setInstitute(instituteRepository.getOne(e.getInstitute().getInstituteId()));
        e.setEnquirySource(enquirySourceRepository.getOne(e.getEnquirySource().getEnquirySourceId()));
        Date d = new Date();
        e.setDoe(d);
        e.setLastUpdate(d);        
        enquiryRepository.save(e);
        
        Long[] courseIds = cmd.getCourses();
        for (Long courseId : courseIds) {
            EnquiryCourse ec = new EnquiryCourse();
            ec.setEnquiry(e);
            ec.setCourse(courseRepository.getOne(courseId));
            enquiryCourseRepository.save(ec);
        }
        
    }   
    @Transactional
    public void saveFollowup(Long enquiryId, String detail){
        Followup fo = new Followup();
        fo.setDetail(detail);
        fo.setEnquiry(enquiryRepository.getOne(enquiryId)); //FK
        fo.setDoe(new Date());
        followupRepository.save(fo);
    }    
    
    @Transactional
    public void deleteEnquiry(Long enquiryId){
        Enquiry enquiry = enquiryRepository.findById(enquiryId).get();
        Contact contact = enquiry.getContact();
        //delete contact
        contactRepository.delete(contact);
        //delete enquiry
        enquiryRepository.delete(enquiry);        
    }    //check it out to ask to teacher monday+++++
    
}
