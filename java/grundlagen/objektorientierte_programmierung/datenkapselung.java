package schule.grundlagen.objektorientierte_programmierung;

public class datenkapselung {
    public static class Bankkonto {
        private double saldo; // Nur innerhalb der Klasse verfügbar
    
        public double getSaldo() { // Getter
            return saldo;
        }
    
        public void einzahlen(double betrag) { // Setter
            if (betrag > 0) {
                saldo += betrag;
            }
        }
    }

    public static void main(String[] args) {
        Bankkonto peter = new Bankkonto();

        double kontostand = peter.getSaldo();
        
        System.out.println(kontostand);

        peter.einzahlen(420.69);

        kontostand = peter.getSaldo();

        System.out.println(kontostand);
    }
}
