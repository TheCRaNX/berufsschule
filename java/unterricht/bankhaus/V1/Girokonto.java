package bankhaus.V1;

public class Girokonto {
    private String inhaber;
    private String kontoNummer;
    private double guthaben;

    public Girokonto(String p_inhaber, String p_konto_nummer, double p_guthaben){
        setInhaber(p_inhaber);
        setKontoNummer(p_konto_nummer);
        setGuthaben(p_guthaben);
    }

    public Girokonto(String p_inhaber, double p_guthaben){
        setInhaber(p_inhaber);  
        setGuthaben(p_guthaben);      
    }

    public void setInhaber(String p_inhaber){
        this.inhaber = p_inhaber;
    }

    public void setKontoNummer(String p_kontonummer){
        this.kontoNummer = p_kontonummer;
    }

    public void setGuthaben(double p_guthaben){
        this.guthaben = p_guthaben;
    }
}
