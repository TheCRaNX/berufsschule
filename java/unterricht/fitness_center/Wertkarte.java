package java.unterricht.fitness_center;

import java.time.LocalTime;

public class Wertkarte {
    private double guthaben;

    public static final double saunaNormal = 15.00;
    public static final double saunaHappyHour = 12.00;

    public Wertkarte() {
        this.guthaben = 50;
    }

    public Wertkarte(double guthaben) {
        this.guthaben = guthaben;
    }

    public double getGuthaben() {
        return guthaben;
    }

    public void aufladen(double betrag) {
        guthaben += betrag;
    }

    public boolean abbuchenSauna() {
        Utils utils = new Utils();
        LocalTime currentTime = utils.getCurrentTime();

        final LocalTime rabattZeitStart = LocalTime.of(8, 00);
        final LocalTime rabattZeitEnde = LocalTime.of(12, 00);

        double saunaKosten = saunaNormal;
        if (currentTime.isAfter(rabattZeitStart) && currentTime.isBefore(rabattZeitEnde)) {
            saunaKosten = saunaHappyHour;
        }

        if (guthaben >= saunaKosten) {
            guthaben -= saunaKosten;
            return true;
        } else {
            return false;
        }
    }
}