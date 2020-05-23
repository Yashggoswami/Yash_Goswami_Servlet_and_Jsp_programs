//8.)Fetching Thread Names

package MultiThreading;
public class FetchName implements Runnable{

    public static void main(String[] args) {
        Thread Thread1 = new Thread("Yash");
        Thread Thread2 = new Thread("Goswami");
        Thread1.start();
        Thread2.start();
        System.out.println("Thread names are following:");
        System.out.println(Thread1.getName());
        System.out.println(Thread2.getName());
    }
    @Override
    public void run() {
    }

}

