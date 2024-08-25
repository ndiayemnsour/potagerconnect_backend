package sn.unchk.potagerconnect.controller;

import sn.unchk.potagerconnect.model.Potager;
import sn.unchk.potagerconnect.services.PotagerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import java.util.List;


@RestController
@RequestMapping("/api/potagers")
@CrossOrigin(origins = "http://localhost:3002")
public class PotagerController {
        @Autowired
        private PotagerService potagerService;

        /*@GetMapping("/all")
        public List<Potager> getAllPotagers() {
            return potagerService.getAllPotagers();
        }*/
        @GetMapping("/all")
        public ResponseEntity<List<Potager>> getAllPotagers() {
            List<Potager> potagers = potagerService.getAllPotagers();
            return new ResponseEntity<>(potagers, HttpStatus.OK);
        }
        

        @PostMapping
        public Potager addPotager(@RequestBody Potager potager) {
            return potagerService.addPotager(potager);
        }

        /*@DeleteMapping("/{id_potager}")
        public ResponseEntity<Void> deletePotager(@PathVariable Integer id_potager) {
            potagerService.deletePotager(id_potager);
            return ResponseEntity.noContent().build();
        }*/
    

}
