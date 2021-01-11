
package net.alonzo.EspacioAU.repo;

import java.util.List;
import net.alonzo.EspacioAU.domain.Followup;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 *
 * @author user hp
 */
public interface FollowupRepository extends JpaRepository<Followup, Long> {

    @Query("SELECT new Followup(f.followupId, f.doe, f.detail) FROM Followup as f WHERE f.enquiry.enquiryId=?1 ORDER BY f.doe desc")
    List<Followup> getFollowupsByEnquiryId(Long enquiryId);
}
