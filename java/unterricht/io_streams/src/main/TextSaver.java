package io_streams.src.main;

import java.io.FileWriter;
import java.io.PrintWriter;
import java.util.*;

public class TextSaver {
    
    public static int read () {
        Scanner aScanner = new Scanner ( System.in );
        String zeile;

        try {
            do {
                zeile = aScanner.nextLine();
                System.out.println(zeile);
            } while ( !zeile.equalsIgnoreCase("exit"));
            System.out.println("Tschüss...");
        } catch (Exception e) {
            return -1;
        } finally {
            aScanner.close();
        }
        return 0;
    };

    public static int write (String zeile) {
        PrintWriter pw = new PrintWriter("/home/paddi/Coding/projects/berufsschule/java/unterricht/io_streams/test.txt");

        try {

            pw.write(zeile);
        } catch (Exception e) {
            return -1;
        } finally {
            pw.close();
        }

        return 0;
    }
}
