package IT2K1762DataStructure;

public class QueueExample2 {
    public int head;
    public int tail;
    public int size;
    public int[] Queue1;

    public QueueExample2(int size) {
        this.head = 1;
        this.tail = 1;
        this.Queue1 = new int[size];
    }

    public boolean isEmpty() {
        if(this.tail == this.head)
            return true;
        return false;
    }

    public boolean isFull() {
        if(this.head == this.tail+1)
            return true;
        return false;
    }

    public void enqueue(int x) {
        if(isFull()) {
            System.out.println("Queue Overflow");
        }
        else {
            this.Queue1[this.tail] = x;
            if(this.tail == this.size)
                this.tail = 1;
            else
                this.tail = this.tail+1;
        }
    }

    public int dequeue() {
        if(isEmpty()) {
            System.out.println("Underflow");
            return -1000;
        }
        else {
            int x = this.Queue1[this.head];
            if(this.head == this.size) {
                this.head = 1;
            }
            else {
                this.head = this.head+1;
            }
            return x;
        }
    }

    public void display() {
        int i;
        for(i=this.head; i<this.tail; i++) {
            System.out.println(this.Queue1[i]);
            if(i == this.size) {
                i = 0;
            }
        }
    }

    public static void main(String[] args) {
        QueueExample2 q = new QueueExample2(10);
        q.enqueue(70);
        q.enqueue(50);
        q.enqueue(80);
        q.display();

        System.out.println("");

        q.dequeue();
        q.dequeue();
        q.display();

        System.out.println("");

        q.enqueue(60);
        q.enqueue(70);
        q.display();
    }
}
