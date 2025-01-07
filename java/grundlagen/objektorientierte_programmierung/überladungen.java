package schule.grundlagen.objektorientierte_programmierung;

public class überladungen {
    private String text;
    private int zahl;

    public überladungen(String text) {
        this.text = text;
    }

    public überladungen(int zahl) {
        this.zahl = zahl;
    }

    public überladungen(String text, int zahl) {
        this.text = text;
        this.zahl = zahl;
    }
}
