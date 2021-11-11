package firstJavaCode;
import java.util.*;
public class SamplieJava 
{

	public static void main(String[] args) 
	{
         int []array=new int[5];
         System.out.println("The Element Before Inserting :");
         for(int word :array)
         {
        	 System.out.println(word);
         }
         int insert=9;
         int location=3;//location 3rd means index 2..
         int index=4;
 //Insert a new element        
         System.out.println("The element After INSERTING :");
         for(int i=index;i>location-1;i--)//4>3,4....location ku aathigama irrku
         {
        	 array[i]=array[i-1];
         }
         array[location-1]=insert;
         //the insert process will be completed
   //below step will display the all array value
         for(int i=0;i<=index;i++)//0<0,1,2,3,4
         {
        	 System.out.println(array[i]);
         }
 //delete a Element 
         for(int i=location-1;i<index;i++)//..the location....
         {//index-   2         2<4       //it simply means after location it overRide with next Value
        	 array[i]/*location*/=array[i+1];//3 value getting overRide into the 2 index value...
        //     location=location+1...It simply store the Current location with after location value
         // Current location value will be overRide with Next location. . . 
         }
         System.out.println("After Deleting The Value . . ");
   //Below step will Display the After Deletion
         for(int i=0;i<=index;i++)//0<0,1,2,3,4
         {
        	 System.out.println(array[i]);
         }
   
	}
    
    
    
	}


