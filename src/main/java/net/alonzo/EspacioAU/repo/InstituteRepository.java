
package net.alonzo.EspacioAU.repo;

import java.util.List;
import net.alonzo.EspacioAU.domain.Institute;
import net.alonzo.EspacioAU.dto.InstituteDto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 *
 * @author user hp
 */
public interface InstituteRepository extends JpaRepository<Institute, Long> {
    @Query("SELECT i.instituteId AS instituteId, i.name AS name, i.contact.phone AS phone, i.contact.email AS email, i.contact.permanentAddress.city AS city  FROM Institute  AS i ")
    public List<InstituteDto> getInstList();
    
    @Query("SELECT new net.alonzo.EspacioAU.domain.Institute(i.instituteId, i.name)  FROM Institute  AS i ")
    public List<Institute> getInstCostomList();
}
