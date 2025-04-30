package bankhaus.V2.src.main;

abstract class Konto {
    private String inhaber;
    protected double kontoStand;
    protected int nummer;
    protected int nextKontoNummer = 1000;

    private double transaktionsGebuehr = 0.005;

    public Konto(String inhaber) {
        setInhaber(inhaber);
    }

    public Konto(String inhaber, double betrag) {
        setInhaber(inhaber);
        setbetrag(betrag);
    }

    public void setInhaber(String inhaber) {
        this.inhaber = inhaber;
    }

    public void setbetrag(double betrag) {
        this.kontoStand = betrag;
    }

    public String getInhaber() {
        return this.inhaber;
    }

    public double getBetrag(double betrag) {
        return this.kontoStand;
    }

    protected int erzeugeNummer() {
        int neueNummer = this.nummer;
        this.nummer = this.nummer + 1;
        return neueNummer;
    }

    public void einzahlen(double betrag) {
        if (betrag < 0) {
            return;
        }
        this.kontoStand += betrag;
    }

    public void abbuchen(double betrag) {
        // nur abheben möglich, wenn Abbuchung, Kontobetrag oder Kontobetrag minus Abbuchung größer 0
        if (betrag < 0 || this.kontoStand < 0 || (this.kontoStand - betrag) < 0) {
            return;
        }
        this.kontoStand -= betrag;
    }

    public void abrechen() {
        this.kontoStand -= this.transaktionsGebuehr;
    }
}