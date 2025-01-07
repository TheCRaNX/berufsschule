import java.util.Arrays;
import java.util.Scanner;

public class BMICalculator {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double[] bmiStorage = new double[10];
        int saveCount = 0;
        boolean continueCalculating = true;

        while (continueCalculating) {
            System.out.print("Enter your weight in kilograms: ");
            double weight = scanner.nextDouble();

            System.out.print("Enter your height in meters: ");
            double height = scanner.nextDouble();
            
            double bmi = calculateBMI(weight, height);
            System.out.printf("Your BMI is: %.2f\n", bmi);
            
            String category = getBMICategory(bmi);
            System.out.println("BMI Category: " + category);

            bmiStorage[saveCount] = bmi;

            saveCount = saveCount + 1;

            if (saveCount < 10) {
                System.out.println("You have reached the maximum storage space. Exiting BMI Calculator.");
                continueCalculating = false;
            } else {
                System.out.println("Would you like to calculate another BMI? (yes/no): ");
                String userInput = scanner.next();
                if (!userInput.equalsIgnoreCase("yes")) {
                    continueCalculating = false;
                }
            }
        }

        System.out.println("Thank you for using the BMI Calculator! Would you like to print your stored BMI values? (yes/no): ");
        String userInput = scanner.next();
        if (userInput.equalsIgnoreCase("yes")) {
            System.out.println("BMI storage: " + Arrays.toString(bmiStorage));
        }
        scanner.close();
    }
    
    public static double calculateBMI(double weight, double height) {
        return weight / (height * height);
    }
    
    public static String getBMICategory(double bmi) {
        if (bmi < 18.5) {
            return "Underweight";
        } else if (bmi >= 18.5 && bmi < 24.9) {
            return "Normal weight";
        } else if (bmi >= 25 && bmi < 29.9) {
            return "Overweight";
        } else {
            return "Obesity";
        }
    }

    public void printBmiStorage(double[] array) {
        for (double value : array) {
            int count = 1;

            if (value != 0.0){
                System.out.println(count + ": " + value);
            }
        }
    }
}