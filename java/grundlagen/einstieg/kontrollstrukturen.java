package schule.grundlagen.einstieg;

public class kontrollstrukturen {
    public static void main(String[] args) {
        int zahl = 10;

        // if-else
        if (zahl > 5) {
            System.out.println("Größer als 5");
        } else {
            System.out.println("Kleiner oder gleich 5");
        }

        // while
        int i = 0;
        while (i < 3) {
            System.out.println("Zähler: " + i);
            i++;
        }

        // for
        for (int j = 0; j < 3; j++) {
            System.out.println("Iteration: " + j);
        }

        // switch (Java 14+ only)
        /*
        int tag = 3;
        switch (tag) {
            case 1 -> System.out.println("Montag");
            case 2 -> System.out.println("Dienstag");
            case 3 -> System.out.println("Mittwoch");
            default -> System.out.println("Unbekannter Tag");
        }
        */
    }
}
