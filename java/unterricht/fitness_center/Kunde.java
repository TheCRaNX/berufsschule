package java.unterricht.fitness_center;

public class Kunde {
    private String kundeID;
    private String kundeName;
    private double kundeGewicht;
    private double kundeGroesse;
    private Wertkarte kundeWertkarte;

    public Kunde (
        String kundeID,
        String kundeName,
        double kundeGewicht,
        double kundeGroesse
    ) {
        this.kundeID = kundeID;
        this.kundeName = kundeName;
        this.kundeGewicht = kundeGewicht;
        this.kundeGroesse = kundeGroesse;
    }

    public Kunde (
        String kundeID,
        String kundeName
    ) {
        this.kundeID = kundeID;
        this.kundeName = kundeName;
    }

    public Kunde (String csvString) {
        
    }

    public Wertkarte getWertkarte() {
        return kundeWertkarte;
    }

    public String getID() {
        return kundeID;
    }

    public void setWertkarte(Wertkarte kundeWertkarte) {
        this.kundeWertkarte = kundeWertkarte;
    }

    public double berechneBMI(
        double kundeGewicht,
        double kundeGroesse
    ) {
        return kundeGewicht / Double.valueOf((kundeGroesse * 2));
    }
}
