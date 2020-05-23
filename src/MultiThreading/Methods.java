
//17.) Demostrating Working of two threads by using suspend and resume methods

package MultiThreading;
class Demo implements Runnable {
    public Thread t;
    private String threadName;
    boolean suspended = false;

    Demo( String name) {
        threadName = name;
        System.out.println("Creating " +  threadName );
    }

    public void run() {
        System.out.println("Running " +  threadName );
        try {
            for(int i = 10; i > 0; i--) {
                System.out.println("Thread: " + threadName + ", " + i);

                Thread.sleep(300);
                synchronized(this) {
                    while(suspended) {
                        wait();
                    }
                }
            }
        } catch (InterruptedException e) {
            System.out.println("Thread " +  threadName + " interrupted.");
        }
        System.out.println("Thread " +  threadName + " exiting.");
    }

    public void start () {
        System.out.println("Starting " +  threadName );
        if (t == null) {
            t = new Thread (this, threadName);
            t.start ();
        }
    }

    void suspend() {
        suspended = true;
    }

    synchronized void resume() {
        suspended = false;
        notify();
    }
}

public class Methods {

    public static void main(String args[]) throws InterruptedException {

        Demo R1 = new Demo( "Thread-1");
        R1.start();

        Demo R2 = new Demo( "Thread-2");
        R2.start();

        try {
            Thread.sleep(1000);
            R1.suspend();
            System.out.println("Suspending First Thread");
            Thread.sleep(1000);
            R1.resume();
            System.out.println("Resuming First Thread");

            R2.suspend();
            System.out.println("Suspending thread Two");
            Thread.sleep(1000);
            R2.resume();
            System.out.println("Resuming thread Two");
        } catch (InterruptedException e) {
            System.out.println("Main thread Interrupted");
        }System.out.println("Waiting for threads to finish.");
        R1.t.join();
        R2.t.join();
        System.out.println("Main thread exiting.");
    }
}


