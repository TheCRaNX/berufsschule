package java.unterricht.fitness_center;

public class Bonuskarte extends Wertkarte {
    private int bonusPunkte;

    public Bonuskarte() {
        super();
        this.bonusPunkte = 0;
    }

    public Bonuskarte(double startGuthaben) {
        super(startGuthaben);
        this.bonusPunkte = 0;
    }

    public int getBonusPunkte() {
        return bonusPunkte;
    }

    public void punkteSammeln(double betrag) {
        bonusPunkte += (int) betrag;
    }

    public void bonusEinlösen() {
        if (bonusPunkte > 100) {
            int umwandelbarePunkte = bonusPunkte;
            double bonusGutschrift = umwandelbarePunkte * 0.10;

            aufladen(bonusGutschrift);
            bonusPunkte = 0;
        }
    }

    @Override
    public boolean abbuchenSauna() {
        boolean bezahlt = super.abbuchenSauna();
        if (bezahlt) {
            punkteSammeln(Wertkarte.saunaNormal);
        }
        return bezahlt;
    }
}