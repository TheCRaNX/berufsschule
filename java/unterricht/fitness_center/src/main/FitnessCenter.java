package fitness_center.src.main;

import java.util.ArrayList;
import java.util.ListIterator;

public class FitnessCenter {
    private String fitnessCenterName;
    private ArrayList<Kunde> kundenListe;
    private int naechsteKundenId;
    
    public FitnessCenter() {
        this.fitnessCenterName = "Heinrich's Gym";
        this.kundenListe = new ArrayList<>();
        this.naechsteKundenId = 1000;
    }

    public FitnessCenter(String fitnessCenterName) {
        this.fitnessCenterName = fitnessCenterName;
        this.kundenListe = new ArrayList<>();
        this.naechsteKundenId = 1000;
    }

    public Kunde neuerKunde(String kundeName, double kundeGewicht, double kundeGroesse) {
        String neueKundeId = String.valueOf(naechsteKundenId++);
        Kunde neuKunde = new Kunde(neueKundeId, kundeName, kundeGewicht, kundeGroesse);
        kundenListe.add(neuKunde);
        return neuKunde;
    }

    public Kunde neuerKunde(String kundeName) {
        String neueKundeId = String.valueOf(naechsteKundenId++);
        Kunde neuKunde = new Kunde(neueKundeId, kundeName);
        kundenListe.add(neuKunde);
        return neuKunde;
    }

    public boolean loescheKunde(String kundeId) {
        ListIterator<Kunde> iter = kundenListe.listIterator();
        while (iter.hasNext()) {
            if (iter.next().getId().equals(kundeId)) {
                iter.remove();
                return true;
            }
        }
        return false;
    }

    public void zeigeKunden() {
        System.out.println("Kundenliste von " + fitnessCenterName + ":");
        for (Kunde k : kundenListe) {
            System.out.println("- ID: " + k.getId() + ", Name: " + k.getKundeName());
        }
    }

    public static void main(String[] args) {
        FitnessCenter gym = new FitnessCenter();
        
        Kunde kunde1 = gym.neuerKunde("Patrik", 71.00, 1.83);
        Kunde kunde2 = gym.neuerKunde("Anna");
        
        Wertkarte kW1 = new Wertkarte(50);
        kunde1.setWertkarte(kW1);
        kW1.aufladen(15);

        Wertkarte kW2 = new Wertkarte(30);
        kunde2.setWertkarte(kW2);
        
        gym.zeigeKunden();
        
        System.out.println("Guthaben von " + kunde1.getKundeName() + ": " + kunde1.getWertkarte().getGuthaben() + "€");
        System.out.println("Guthaben von " + kunde2.getKundeName() + ": " + kunde2.getWertkarte().getGuthaben() + "€");
        
        boolean geloescht = gym.loescheKunde(kunde1.getId());
        System.out.println("Kunde " + kunde1.getId() + " gelöscht: " + geloescht);
        
        gym.zeigeKunden();
    }
}
