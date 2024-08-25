package sn.unchk.potagerconnect.services;

import sn.unchk.potagerconnect.model.Potager;
import sn.unchk.potagerconnect.repository.PotagerRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class PotagerService {
    @Autowired
    private PotagerRepository potagerRepository;

   /*public List<Potager> getAllPotagers() {
        return potagerRepository.findAll();
    }
    public List<Potager> getAllPotagers() {
        return potagerRepository.findAll();
    }
    public List<Potager> getAllPotagers() {
        List<Potager> potagers = potagerRepository.findAll();
        potagers.forEach(p -> System.out.println(p)); // Log chaque potager
        return potagers;
    }*/
    public List<Potager> getAllPotagers() {
        List<Potager> potagers = potagerRepository.findAll();
        potagers.forEach(p -> {
            System.out.println("ID: " + p.getId_potager());
            System.out.println("Nom Potager: " + p.getNom_potager());
            System.out.println("Téléphone: " + p.getTelephone());
            System.out.println("Ville: " + p.getVille());
            System.out.println("Adresse: " + p.getAdresse());
            System.out.println("Nom Propriétaire: " + p.getNom_proprietaire());
            System.out.println("Prénom Propriétaire: " + p.getPrenom_proprietaire());
        });
        return potagers;
    }
    
    
    public Potager addPotager(Potager potager) {
        return potagerRepository.save(potager);
    }

    /*public void deletePotager(Integer id_potager) {
        potagerRepository.deleteById(id_potager);
    }*/
}
