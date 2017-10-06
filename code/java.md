```

package javaapplication1;
import java.util.Scanner;

// 宣告類別名稱
public class JavaApplication1 {
    // 這裡定義屬性
    int a;
    int b;
    
    Scanner input = new Scanner(System.in);
     
    // 這裡定義建構子
    public JavaApplication1() {
        System.out.print("a = ");
        
        this.a = input.nextInt();
        System.out.print("b = ");
        
        this.b = input.nextInt();
    }
     
    // 這裡定義方法
    public int do_something() {
        return a + b;
    }
      
    // 這裡定義 main() 方法
    public static void main(String[] args) {
        JavaApplication1 demo = new JavaApplication1();
         
        System.out.println();
        System.out.printf("a = %d, b = %d\n", demo.a, demo.b);
        System.out.printf("a + b = %d\n", demo.do_something());
        System.out.println();
    }
    
}


```
