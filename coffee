package assignment2;

/* Nicolas Salado
 * nas17b
 */

import java.util.Scanner;

public class Coffee {
	
	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		
		System.out.println("Welcome to Starbucks.");
		
		String customerName;
		System.out.print("Please enter your name: ");
		customerName = input.nextLine();
		
		double saleAmount;
		System.out.print("Please enter your purchase amount: ");
		saleAmount = input.nextDouble();
		
		double numberOfPurchases;
		System.out.println("Please enter the number of purchses in the last month: ");
		numberOfPurchases = input.nextDouble();
		
		System.out.println("**************");
		
		System.out.println("Reciept for " + customerName);
		
	double amountDue;
	double discountRate = 0;
	
	if (numberOfPurchases == 0)
		discountRate = .05;
	
	else if (numberOfPurchases >= 1 && numberOfPurchases <= 6)
		discountRate = .1;
	
	else if (numberOfPurchases >= 6 && numberOfPurchases <= 10)
		discountRate = .15;
	
	else if (numberOfPurchases >= 11 && numberOfPurchases <= 15)
		discountRate = .2;
	
	else if (numberOfPurchases >= 16 && numberOfPurchases <= 20)
		discountRate = .25;
	
	else if (numberOfPurchases >= 21)
		discountRate = .3;
	
	
	if (saleAmount > 5) {
		if (numberOfPurchases == 0) {
			
		}
		else if (numberOfPurchases != 0 && numberOfPurchases <= 5) {
			
		}
	}
	else if (saleAmount < 5) {
		discountRate = 0;
	}
	
	System.out.println("You get a " + (discountRate * 100) + " % discount.");
	
	amountDue = (saleAmount * (1 - discountRate));
	System.out.printf("Total amount due: $ %.2f \n", amountDue);
	}

}
