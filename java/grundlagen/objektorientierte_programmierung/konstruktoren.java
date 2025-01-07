package schule.grundlagen.objektorientierte_programmierung;

public class konstruktoren {
    private String parameter;

    public konstruktoren(String parameter){ // Konstruktoren haben immer den selben Namen der Klasse in der sie definiert sind
        this.parameter = parameter;
    }

    public String getParameter(){
        return parameter;
    }

    public static void main(String[] args) {
        konstruktoren objekt = new konstruktoren("Hallo, Konstruktor!");

        String string = objekt.getParameter();

        System.out.println(string);
    }
}
