package java.unterricht.fitness_center;

import java.util.ArrayList;
import java.util.ListIterator;

public class FitnessCenter {
    private String fitnessCenterName = "Heinrich's Gym";

    private ArrayList<Kunde> kundenListe = new ArrayList<Kunde>(); 
    private int naechsteKundenId = 1000;

    public FitnessCenter(String fitnesscenterName) {
        this.fitnessCenterName = fitnesscenterName;
    }

    public Kunde neuerKunde(
        String kundeName,
        double kundeGewicht,
        double kundeGroesse
    ) {
        String neuKundeId = String.valueOf(countNaechsteKundenID());

        Kunde neuKunde = new Kunde(neuKundeId, kundeName, kundeGewicht, kundeGroesse);

        kundenListe.add(neuKunde);

        return neuKunde;
    }

    public Kunde neuerKunde(String kundeName) {
        Kunde neuKunde = new Kunde(kundeName);

        return neuKunde;
    }

    public Kunde loescheKunde(String kundeId) {
        Kunde kunde = null;

        ListIterator<Kunde> iter = kundenListe.listIterator();

        while(iter.hasNext()) {
            if(iter.next().getID().equals((kundeId))) {
                iter.remove();
            }
            break;
        }

        return kunde;        
    }

    private int countNaechsteKundenID() {
        naechsteKundenId = naechsteKundenId + 1;

        return naechsteKundenId;
    }

    public static void main(String[] args) {
        
    }
}