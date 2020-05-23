package IT2K1762DataStructure;

public class ArrayExample {
    public static void main(String[] args) {
        int [] array1 = {2,3,-6,8,95,4,-80};
        int sum=0;
        Double average;
        for(int n : array1) {
            sum += n;
        }

        int arraySize = array1.length;

        average =((double)sum/(double)arraySize);

        System.out.println("Sum is => "+ sum);
        System.out.println("Average is => "+ average);
    }
}
