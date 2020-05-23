//18.)Implementing Synchronization in MultiThreading

package MultiThreading;

class PrintDemo {
    public void printCount(){
        try {
            for(int i = 5; i > 0; i--) {
                System .out.println("Counter --- " + i );
            }
        } catch (Exception e) {
            System .out.println("Thread interrupted.");
        }
    }
}
class ThreadDemoo extends Thread {
    private Thread t;
    private String threadName;
    PrintDemo PD;
    ThreadDemoo( String name, PrintDemo pd){
        threadName = name;
        PD = pd;
    }
    public void run() {
        PD.printCount();
        System .out.println("Thread " + threadName + " exiting.");
    }
    public void start ()
    {
        System .out.println("Starting " + threadName );
        if (t == null)
        {
            t = new Thread (this, threadName);
            t.start ();
        }
    }
}
public class Synch {
    public static void main(String args[]) {
        PrintDemo PD = new PrintDemo();
        ThreadDemoo T1 = new ThreadDemoo( "Thread - 1 ", PD );
        ThreadDemoo T2 = new ThreadDemoo( "Thread - 2 ", PD );
        T1.start();
        T2.start();

        try {
            T1.join();
            T2.join();
        } catch( Exception e) {
            System .out.println("Interrupted");
        }
    }
}

