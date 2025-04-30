package rechnungserstellung.src.main;

public class Kunde {
    private int kundenummer;
    private String name;
    private String strasse;
    private int plz;
    private String ort;

    public Kunde (
        int kundenummer,
        String name,
        String strasse,
        int plz,
        String ort
    ) {
        setKundeNummer(kundenummer);
        setName(name);
        setStrasse(strasse);
        setPlz(plz);
    }

    public int getKundenNummer() {
        return this.kundenummer;    
    }
    public void setKundeNummer(int kundenummer) {
        this.kundenummer = kundenummer;
    }

    public String getName() {
        return this.name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getStrasse() {
        return this.strasse;
    }
    public void setStrasse(String strasse) {
        this.strasse = strasse;
    }

    public int getplz() {
        return this.plz;
    }
    public void setPlz(int plz) {
        if (plz < 0 || plz > 100000) {
            this.plz = 99999;
            return;
        }
        this.plz = plz;
    }

    public String getOrt() {
        return this.ort;
    }
    public void setOrt(String ort) {
        this.ort = ort;
    }

    public void printData() {
        System.out.println("Kundennummer: " + this.kundenummer);
        System.out.println("Name: " + this.name);
        System.out.println("Strasse: " + this.strasse);
        System.out.println("PLZ: " + this.plz);
    }
}