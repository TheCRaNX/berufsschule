package rechnungserstellung.src.main;

public class EinzelLizenz extends Artikel{
    private double pricePercentage = 0.1;

    public EinzelLizenz (
        int nummer,
        String bezeichnung,
        double preis
    ) {
        super(
            nummer,
            bezeichnung,
            preis
        );
    }

    public double getPrize() {
        return this.preis * (1 + pricePercentage);
    }
}