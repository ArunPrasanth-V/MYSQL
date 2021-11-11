package firstJavaCode;

import java.util.*;
import java.util.function.Consumer;
import java.io.*;
import java.math.*;


public class PrintingElectricityBill
{
   public  void main(String[] args)
    {
       Scanner sc = new Scanner(System.in);        

       System.out.print("Enter the EB Number :");
       int ConsumerNumber;
       ConsumerNumber=sc.nextInt();                       //this print the EB user number 
       System.out.println(ConsumerNumber);
 
       System.out.print("Enter the Your Name :");
       String Consumer1Name;
       Consumer1Name=sc.nextLine();                      //this print the EB user Name
       System.out.println( Consumer1Name);
     
       System.out.print("plzz enter the previousReading as 'units only in number':");
       int PreviousMonthReading;
       PreviousMonthReading=sc.nextInt();               //this print the EB user previous reading
       System.out.println(PreviousMonthReading);  
       
   //  CurrentMonthReading=sc.nextInt();
  //  System.out.println(" ");
       double test1;  
       System.out.println("If you are a  Domestic user plz Press '1' \n Else \n You are a commerical user press '2' ");
       test1 =sc.nextDouble();
       //boolean a;
       //boolean u=sc.nextInt();
 
       if(test1 == 1)
       {
          method1 ();   //call the meathod
       }
       else if(test1 == 2)
       {
          
           method2 ();     
        }
        else
        {
            System.out.println("Sorry You are choosing the Wrong Distination.....plzz Try Agin");
        }
      }

private void method1() 
{
			Scanner vc=new Scanner(System.in);
			System.out.println(" Your are The Domestic User");
	        System.out.print(" Enter the unit:");
	        int currentMonthReading = vc.nextInt();                    //this is for domestic user it take to method 1  
	        System.out.println(currentMonthReading);
	        float billpay = 0;
	     
	     // int currentMonthReading;
		if(currentMonthReading<=100)
	      {
	         billpay=currentMonthReading*1;
	         System.out.println("Total Amount is ="+billpay);
	      }
	      else if(currentMonthReading<=200)
	      {
	         billpay=(float) (currentMonthReading*2.50);
	         System.out.println("Total Amount is ="+billpay);
	      }
	      else if(currentMonthReading<=300)     
	         billpay=currentMonthReading*4;
	         System.out.println("Total Amount is ="+billpay);   
	   
	      while (currentMonthReading>500)
	      {
			  billpay = currentMonthReading*6;
	          System.out.println("Total Amount is ="+billpay);
	      }
 }

private void method2() {
	Scanner cj=new Scanner(System.in);
	  System.out.println("Your are The Commerical User");
    System.out.print(" Enter the unit:");
    int currentMonthReading = cj.nextInt();                   //this is for commerical user it takes to method 2
    System.out.println(currentMonthReading);   
    double billpay;
  if(currentMonthReading<=100)
   {
      billpay=currentMonthReading*2;
      System.out.println("Total Amount is ="+billpay);
   }
  else if(currentMonthReading<=200)
  {
     billpay=currentMonthReading*4.50;
     System.out.println("Total Amount is ="+billpay);
  }
  else if(currentMonthReading<=500)
  {
     billpay=currentMonthReading*6;
     System.out.println("Total Amount is ="+billpay);   
  }
 else 
 {
     billpay=currentMonthReading*7;
     System.out.println("Total Amount is ="+billpay);
 }
}	
} 
