package zeitdauer.main.src;


public class Zeitdauer {
    private long dauer;


    public Zeitdauer(int p_dauer){
        setDauer(p_dauer);
    }

    public Zeitdauer(int p_hours, int p_minutes, int p_seconds){
        setDauer(p_hours, p_minutes, p_seconds);
    }

    public void setDauer(long p_dauer){
        if (p_dauer < 0 ){
            return;
        }

        this.dauer = p_dauer;
    }

    public void setDauer(int p_hours, int p_minutes, int p_seconds){
        if (p_hours >= 0 && p_minutes >= 0 && p_seconds >= 0){
            this.dauer = ((p_hours * 60) + p_minutes) * 60 + p_seconds;
        }  
    }

    public long getDauer(){
        return dauer;
    }

    public String getDauerAsString(){
        long hours =  dauer / 3600;
        long minutes = (dauer % 3600) / 60;
        long seconds = dauer % 60;

        String sDauer = String.valueOf(hours) + ":" + String.valueOf(minutes) + ":" + String.valueOf(seconds);

        return sDauer;
    }











    public static void main(String[] args) {
        
    }

    public static void testZeitdauer(){
        
    }
}