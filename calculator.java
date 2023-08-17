import java.util.Scanner;

class Main {
    
   float addNumbers(float a, float b){
       float sum = a+b;
       return sum;
   }
   
   public static void main(String args[]){
       Main cal = new Main();
       Scanner s = new Scanner(System.in);
       float resultAdd=cal.addNumbers(1,2);
       System.out.println(resultAdd);
   }
}