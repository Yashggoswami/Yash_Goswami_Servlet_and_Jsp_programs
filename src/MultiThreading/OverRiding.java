
//11.)Overrinding Run method example.

package MultiThreading;
public class OverRiding {

    public static void main(String[] args) {
        Thread3 thread1 = new Thread3("1");
        thread1.start();
        Thread3 thread2 = new Thread3("2");
        thread2.start();
    }
}
class Thread3 implements Runnable {
    Thread thread;
    private String name;
    Thread3(String mansi) {
        name = mansi;
    }
    @Override
    public void run() {
        System.out.println("Thread running" + name);
        for (int i = 0; i < 4; i++) {
            System.out.println(i);
            System.out.println(name);
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                System.out.println("Thread has been interrupted");
            }
        }
    }
    public void start() {
        System.out.println("Thread started");
        if (thread == null) {
            thread = new Thread(this, name);
            thread.start();
        }

    }
}
