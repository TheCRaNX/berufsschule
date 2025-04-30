package rechnungserstellung.src.main;

public class VolumenLizenz extends Artikel{
    private int anzahl;
    private double pricePercentage = -0.1;

    public VolumenLizenz(
        int anzahl,
        int nummer,
        String bezeichnung,
        double preis
    ) {
        super(
            nummer,
            bezeichnung,
            preis
        );
        
        setAnzahl(anzahl);
    }

    public int getAnzahl() {
        return this.anzahl;
    }
    public void setAnzahl(int anzahl) {
        if (anzahl < 10) {
            this.anzahl = 10;
            return;
        }
        this.anzahl = anzahl;
    }

    public double getPrize() {
        return this.preis * (1 + pricePercentage);
    }
}
