````java

import java.util.Scanner;

public class Student {
    private int score1,score2,score3;
    public Student(int s1, int s2, int s3){
        score1 = s1;
        score2 = s2;
        score3 = s3;
    }

    public double CalValue(){
        double average;
        average = (double)(score1 + score2 + score3) / 3.0;
        return average;
    }

    public static void PrintResult(double average){
        if (average >= 60){
            System.out.printf("Pass");
        }
        else {
            System.out.printf("Failed");
        }
    }

    public static void main(String[] args){
        Scanner input = new Scanner(System.in);

        String person1 = input.nextLine();
        String person2 = input.nextLine();

        Student name1 = new Student(10,20,30);
        Student name2 = new Student(70,80,90);

        double average1;
        average1 = name1.CalValue();

        double average2;
        average2 = name2.CalValue();

        System.out.printf("\n%s:",person1);
        name1.PrintResult(average1);

        System.out.printf("\n%s:",person2);
        name2.PrintResult(average2);

    }
}
