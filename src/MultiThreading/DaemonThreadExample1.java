package MultiThreading;

public class DaemonThreadExample1 extends Thread{

    public void run(){

        if(Thread.currentThread().isDaemon()){
            System.out.println("Daemon thread executing");
        }
        else{
            System.out.println("user(normal) thread executing");
        }
    }
    public static void main(String[] args){

        DaemonThreadExample1 t1=new DaemonThreadExample1();
        DaemonThreadExample1 t2=new DaemonThreadExample1();

        t1.setDaemon(true);

        t1.start();
        t2.start();
    }
}
