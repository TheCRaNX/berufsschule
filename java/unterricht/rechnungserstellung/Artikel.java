package rechnungserstellung;

public class Artikel {
    private int nummer;
    private String bezeichnung;
    protected double preis;

    public Artikel(
        int nummer,
        String bezeichnung,
        double preis
    ) {
        setNummer(nummer);
        setBezeichnung(bezeichnung);
        setPreis(preis);
    }

    public int getNummer() {
        return this.nummer;
    }
    public void setNummer(int nummer) {
        this.nummer = nummer;
    }

    public String getBezeichnung() {
        return this.bezeichnung;
    }
    public void setBezeichnung(String bezeichnung) {
        this.bezeichnung = bezeichnung;
    }
    /*
    public double getPreis() {
        return this.preis;
    }
    */
    public void setPreis(double preis) {
        this.preis = preis;
    }

    public void printData() {
        System.out.println("Nummer: " + this.nummer);
        System.out.println("Bezeichnung: " + this.bezeichnung);
        System.out.println("Preis: " + this.preis);
    }
}