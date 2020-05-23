//10.) Table of 7 using Synchronization

package MultiThreading;

class SynchTest
{
    void printNumber(int n)
    {
        synchronized(this)
        {
            System.out.println("Table of "+n);
            System.out.println("==========");
            for(int i=1;i<=10;i++)
            {
                System.out.println(n+" * "+i+" = "+(n*i));
                try
                {
                    Thread.sleep(400);
                }
                catch(Exception e)
                {
                    System.out.println(e);
                }
            }
        }
    }
}


class MyThread3 extends Thread
{
    SynchTest t;
    MyThread3(SynchTest t)
    {
        this.t=t;
    }
    public void run()
    {
        t.printNumber(7);
    }
}



public class SynchronisedBlock
{
    public static void main(String args[])
    {
        SynchTest obj = new SynchTest();
        MyThread3 t1=new MyThread3(obj);
        t1.start();
    }
}
