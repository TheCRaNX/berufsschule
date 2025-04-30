package fitness_center.src.main;

import java.time.LocalTime;
import java.time.format.DateTimeFormatter;

public class Utils {
    private LocalTime currentTime = LocalTime.now();

    public LocalTime getCurrentTime() {
        return currentTime;
    }

    public String getCurrentTimeAsString() {

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("HH:mm:ss");
        String currentTimeString = currentTime.format(formatter);

        return currentTimeString;
    }
    
}
