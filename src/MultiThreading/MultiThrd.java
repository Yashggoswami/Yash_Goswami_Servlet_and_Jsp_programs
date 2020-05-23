//14.)Setting Priority of multiple Threads
package MultiThreading;

class MultiThreadd extends Thread{
    public void run(){
        System.out.println("Running Thread Name: "+ this.currentThread().getName());
        System.out.println("Running Thread Priority: "+ this.currentThread().getPriority());
    }
}
public class MultiThrd {
    public static void main(String[] args) {
        MultiThreadd multiThread1 = new MultiThreadd();
        multiThread1.setName("First Thread");
        multiThread1.setPriority(Thread.MIN_PRIORITY);

        MultiThreadd multiThread2 = new MultiThreadd();
        multiThread2.setName("Second Thread");
        multiThread2.setPriority(9);

        MultiThreadd multiThread3 = new MultiThreadd();
        multiThread3.setName("Third Thread");

        multiThread1.start();
        multiThread2.start();
        multiThread3.start();
    }
}

