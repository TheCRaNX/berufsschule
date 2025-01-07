package schule.grundlagen.objektorientierte_programmierung;

public class arrays {
    public static class Person {
        String name;
        int alter;

        public Person(String name, int alter) {
            this.name = name;
            this.alter = alter;
        }

        public void vorstellen() {
            System.out.println("Hallo, mein Name ist " + name);
        }
    }
    
    public static void main(String[] args) {
        Person[] personen = new Person[2];

        personen[0] = new Person("Max", 30);
        personen[1] = new Person("Anna", 25);

        for (Person p : personen) {
            p.vorstellen();
        }
    }
}
