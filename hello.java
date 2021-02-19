import java.util.Scanner;
 
public class hello {
    public static void main(String[] args) {
        Scanner scInput = new Scanner(System.in);
 
        double radius = 0.0;
        double height = 0.0;
 
        double volume = 0.0;
 
        System.out.print("Enter value for radius: ");
        radius = scInput.nextDouble();
        scInput.nextLine();
 
        System.out.print("Enter value for height: ");
        height = scInput.nextDouble();
        scInput.nextLine();
    }}