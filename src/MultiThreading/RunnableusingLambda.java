//19.)Creating Threading by implementing Runnable using Lambda Function

package MultiThreading;

public class RunnableusingLambda {
    public static void main(String[] args) {

        Runnable r1 = () ->{
            System.out.println("Thread1 created using Lambda Expression");

        };

        new Thread(r1).start();

        Runnable r2 = () ->{
            System.out.println("Thread2 created using Lambda Expression");

        };

        new Thread(r2).start();

        new Thread(() -> {
            System.out.println("Thread 3 Created");
        }).start();
    }
}







