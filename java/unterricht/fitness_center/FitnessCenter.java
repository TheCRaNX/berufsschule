import java.util.Arrays;
import java.util.Scanner;
import java.util.ArrayList;

public class FitnessCenter {
    private String fitnessCenterName = "Heinrich's Gym";

    private ArrayList<String> kundenIdsListe = new ArrayList<String>(); 
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

        return neuKunde;
    }

    public Kunde neuerKunde(String kundeName) {
        Kunde neuKunde = new Kunde(kundeName);

        return neuKunde;
    }

    private int countNaechsteKundenID() {
        naechsteKundenId = naechsteKundenId + 1;

        return naechsteKundenId;
    }

    public static void main(String[] args) {
        
    }
}