package java.unterricht.fitness_center;

import java.time.LocalTime;

public class Wertkarte {
    private double guthaben = 50;

    Wertkarte() {
    }

    Wertkarte(double guthaben) {
        this.guthaben = guthaben;
    }

    public double getGuthaben() {
        return guthaben;
    }

    public double aufladen(double betrag) {
        guthaben = guthaben + betrag;

        return guthaben;
    }

    public double abbuchenSauna() {
        Utils utils = new Utils();
        final LocalTime currentTime = utils.getCurrentTime();
        
        final LocalTime rabattZeitStart = LocalTime.of(8, 00);
        final LocalTime rabattZeitEnde = LocalTime.of(12, 00);

        double saunaKosten = 15.00;
        double saunaRabatt = 0.2;

        if (currentTime.isAfter(rabattZeitStart) && currentTime.isBefore(rabattZeitEnde)) {
            saunaKosten = saunaKosten * saunaRabatt;
        }

        guthaben = abbuchen(saunaKosten);

        return guthaben;
    }

    private double abbuchen(double betrag) {
        guthaben = guthaben - betrag;

        return guthaben;
    }


}
