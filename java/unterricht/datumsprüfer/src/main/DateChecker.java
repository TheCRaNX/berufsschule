package datumsprüfer.src.main;

import java.util.Scanner;

public class DateChecker {
    public static void main(String[] args) {
        boolean goAgain = true;

        Scanner scanner = new Scanner(System.in);
        while (goAgain) {
            System.out.println("Enter a date to be checked (dd-mm-yyyy): ");
            String date = scanner.nextLine();

    
            if (date.length() != 10) {
                System.out.println("Invalid date format. Please use dd-mm-yyyy.");
                continue;
            }

            System.out.println("Submitted date: " + date);

            int day, month, year;
            try {
                day = Integer.parseInt(date.substring(0, 2));
                month = Integer.parseInt(date.substring(3, 5));
                year = Integer.parseInt(date.substring(6, 10));
            } catch (NumberFormatException | StringIndexOutOfBoundsException e) {
                System.out.println("Invalid date format. Please use dd-mm-yyyy.");
                continue;
            }

            boolean dateCheck = true;
            
            if (month < 1 || month > 12) {
                dateCheck = false;
            }
            
            if (year < 1000 || year > 9999) {
                dateCheck = false;
            }
            
            if (dateCheck) {
                if (month == 2) {
                    if (isLeapYear(year)) {
                        if (day < 1 || day > 29) dateCheck = false;
                    } else {
                        if (day < 1 || day > 28) dateCheck = false;
                    }
                } else if (month == 4 || month == 6 || month == 9 || month == 11) {
                    if (day < 1 || day > 30) dateCheck = false;
                } else {
                    if (day < 1 || day > 31) dateCheck = false;
                }
            }
            
            if (dateCheck) {
                System.out.println("Submitted date: " + date + " is a valid date.");
            } else {
                System.out.println("Submitted date: " + date + " is not a valid date.");
            }
            
            System.out.println("Would you like to check another date? (yes/no): ");
            String userInput = scanner.nextLine();
            goAgain = userInput.equalsIgnoreCase("yes");
        }
        scanner.close();
    }

    public static boolean isLeapYear(int year) {
        return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
    }
}