
package net.alonzo.EspacioAU.repo;

import net.alonzo.EspacioAU.domain.Address;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author user hp
 */
public interface AddressRepository extends JpaRepository<Address, Long> {
    
}
