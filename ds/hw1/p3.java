import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

class p3 {

    static List<Integer> cumulative(List<Integer> a) {
        var cumulative = new ArrayList<Integer>();
        cumulative.add(0);
        for (int i=0; i<a.size()+1; ++i) 
            cumulative.add(cumulative.get(i) + a.get(i));
        return cumulative;
    }
    public static void main(String[] args) throws IOException{
        var reader = new Reader();
        int n = reader.nextInt();
        long m = reader.nextLong();
        List<Integer> A = new ArrayList<>();
        for (int i=0; i<n; ++i) {
            A.add(reader.nextInt());
        }   

        // energy function
        List<Integer> dif = IntStream.range(0, n-1)
            .map(i -> A.get(i+1)-A.get(i))              // differentiate
            .map(i -> -i + 1)                           // 1 extra effort for equal                        
            .boxed()
            .collect(Collectors.toList());
        
        // potential
        var cumulative = cumulative(dif);

        long x;
        for (int i=0; i<n-1; ++i) {
            for (int j=i; j<n; ++j) {
                x = cumulative.get(j)-cumulative.get(i);

            }
        }
    }
}