package fitness_center.src.main;

public class Kunde {
    private String kundeID;
    private String kundeName;
    private double kundeGewicht;
    private double kundeGroesse;
    private Wertkarte kundeWertkarte;

    public Kunde(String kundeID, String kundeName, double kundeGewicht, double kundeGroesse) {
        this.kundeID = kundeID;
        this.kundeName = kundeName;
        this.kundeGewicht = kundeGewicht;
        this.kundeGroesse = kundeGroesse;
    }

    public Kunde(String kundeID, String kundeName) {
        this.kundeID = kundeID;
        this.kundeName = kundeName;
    }

    public String getId() {
        return kundeID;
    }

    public String getKundeName() {
        return kundeName;
    }

    public Wertkarte getWertkarte() {
        return kundeWertkarte;
    }

    public void setWertkarte(Wertkarte wertkarte) {
        this.kundeWertkarte = wertkarte;
    }

    public double berechneBMI() {
        return kundeGewicht / (kundeGroesse * kundeGroesse);
    }
}