package sn.unchk.potagerconnect.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import sn.unchk.potagerconnect.model.Potager;


public interface PotagerRepository extends JpaRepository<Potager, Integer> {
}

