package schule.grundlagen.objektorientierte_programmierung;

public class uml_klasse {
    public static class Auto {
        private String marke;
        private int baujahr;
    
        public Auto(String marke, int baujahr) { // Konstruktor
            this.marke = marke;
            this.baujahr = baujahr;
        }
    
        public void fahren() {
            System.out.println("Das Auto fährt.");
        }

        public void anzeigen() {
            System.out.println("Marke: " + marke + ", Baujahr: " + baujahr);
        }
    }

    public static void main(String[] args) {
        Auto porsche = new Auto("Porsche", 2023);
        System.out.println(porsche);
    }
}
