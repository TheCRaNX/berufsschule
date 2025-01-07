package schule.grundlagen.objektorientierte_programmierung;

public class attribute {
    public static class Person {
        private String name; // Attribut
        private int alter;
    
        public Person(String name, int alter) { // Konstruktor
            this.name = name;
            this.alter = alter;
        }
    
        // Getter und Setter
        public String getName() { return name; }
        public void setName(String name) { this.name = name; }

        public int getAlter() { return alter; }
        public void setAlter(int alter) { this.alter = alter; }
    
        // Normale Methode
        public void vorstellen() {
            System.out.println("Hallo, ich heiße " + name);
        }
    }

    public static void main(String[] args) {
        Person kevin = new Person("Kevin", 42);

        int alterKevin = kevin.getAlter();

        System.out.println(alterKevin);

        kevin.setAlter(69);

        alterKevin = kevin.getAlter();

        System.out.println(alterKevin);

    }
}
