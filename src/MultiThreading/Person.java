//9.)Banking Application Using MultiThreading’
package MultiThreading;

public class Person {
    private String name;

    public Person(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return name;
    }}



 class Account {
    public static Account account;
    private static int balance = 1000;
    private static Person person;

    private Account() {
    }

    public synchronized static Account getAccount(Person p) {
        if (account == null) {
            account = new Account();
        }
        Account.person = p;
        return account;
    }

    public synchronized static int getBal() {
        return balance;
    }

    public synchronized void withdraw(int bal) {
        try {

            if (balance >= bal) {

                try {
                    Thread.sleep(100);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                balance = balance - bal;
            } else {
                System.out.println(person.getName() + " " + "doesn't have enough money for withdraw ");
            }
            System.out.println(person.getName() + " " + " withdraw Rs." + balance);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public synchronized void deposit(int bal) {
        try {
            if (bal > 0) {

                try {
                    Thread.sleep(100);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                balance = balance + bal;

            } else {
                System.out.println(person.getName() + " " + "doesn't have enough money for deposit");
            }
            System.out.println(person.getName() + " " + " deposit Rs." + balance);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }}


 class Threadmain extends Thread implements Runnable {

    private Person person;

    public Threadmain(Person p) {
        this.person = p;
    }

    public static void main(String[] args) {

        Threadmain ts1 = new Threadmain(new Person("person1"));
        ts1.start();
        Threadmain ts2 = new Threadmain(new Person("person2"));
        ts2.start();


    }

    @Override
    public synchronized void run() {

        for (int i = 0; i < 3; i++) {
            try {
                Account acc = Account.getAccount(person);
                acc.withdraw(100);
                try {
                    Thread.sleep(200);
                } catch (InterruptedException ex) {
                }
                if (acc.getBal() < 0) {
                    System.out.println("account is overdrawn!");
                }
                acc.deposit(200);

            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        System.out.println("Final Acc balance is Rs." + Account.getBal());
    }}


