
package net.alonzo.EspacioAU.repo;

import net.alonzo.EspacioAU.domain.Contact;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author user hp
 */
public interface ContactRepository extends JpaRepository<Contact, Long> {
    
}
