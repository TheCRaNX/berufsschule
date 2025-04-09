package rechnungserstellung;

import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

public class Rechnung {
    private List<Artikel> artikelListe = new ArrayList<>();
    private Kunde kunde;
    
    public Rechnung (Kunde kunde) {
        this.kunde = kunde;
    }

    public void setArtikel(Artikel artikel) {
        artikelListe.add(artikel);
    }

    public double getGesamtbetrag() {
        double gesamtBetrag = 0;
        
        ListIterator<Artikel> ai = this.artikelListe.listIterator();

        while(ai.hasNext()) {
            gesamtBetrag += ai.next().preis;
        }

        return gesamtBetrag;
    }

    public void drucken() {
        System.out.println("Kundendaten:");
        this.kunde.printData();


        System.out.println("Artikelliste:");        
        ListIterator<Artikel> ai = this.artikelListe.listIterator();
        while(ai.hasNext()) {
            ai.next().printData();
        }

        System.out.println("Gesamtbetrag: " + this.getGesamtbetrag());
    }
}