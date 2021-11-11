package firstJavaCode;



//package firstJavaCode;
//import java.util.*;
//import java.io.*;

public class A 
{
   public int add(int i, int j)
  {
	  
	  return i+j;
  }
}
 class B extends A
 {
	 public int sub(int i,int j)
	 {
		 return i-j;
		 
	 }
 }
class C extends B
{
	public int mul(int i,int j)
	{
		return i*j;
	}
}
class a
{
	public static void main(String[] args)
	{
		C obj=new C();
		int result1=obj.add(5,4);
		int result2=obj.sub(5,3);
		int result3=obj.mul(2,2);
		System.out.println(result1);
		System.out.println(result2);
		System.out.println(result3);
	}
}

