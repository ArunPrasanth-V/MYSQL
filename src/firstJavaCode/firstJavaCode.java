package firstJavaCode;
//package firstJavaCode;
import java.util.*;
public class firstJavaCode
{
 public static void IOFunction()
{
	 Scanner vr=new Scanner(System.in);
	 int t=vr.nextInt();
	 while(t-- > 0)
	 {
	   int a=vr.nextInt();
	   System.out.println(a);
	   float b=vr.nextFloat();
	   System.out.println(b);
	   long c=vr.nextLong();
	   System.out.println(c);
	   byte d=vr.nextByte();
	   System.out.println(d);
	   String s=vr.next();
	   System.out.print(s);
	   s=vr.nextLine();
	   System.out.println(s);
	 }
	 vr.close();
}   
}
