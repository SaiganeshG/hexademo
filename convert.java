import java.io.*; 
import java.util.Scanner;   
public class convert {  
    public static void main(String args [])  

{  
    Scanner sc= new Scanner(System.in); 
int feet,inches;
System.out.print("enter height in feet");
feet=sc.nextInt();
System.out.print("enter height in inches");
inches=sc.nextInt();


double centimeter; 
centimeter  = (30.48 * feet)+(inches*2.54); 
double weight=(100-centimeter) ; 
double id_max=weight+(weight/10);
double id_min=weight-(weight/10);
System.out.println("enter your weight");
weight=sc.nextDouble();
if(weight>id_max)
    System.out.println("obese");
else if (weight<id_max)  
    System.out.println("thin");  
else
    System.out.println("you are fit ");
}
}  
