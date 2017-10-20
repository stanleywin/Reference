````java
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dialogcompare;
import javax.swing.JOptionPane;

/**
 *
 * @author aa
 */
public class DialogCompare {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
         JOptionPane.showMessageDialog(null,"輸入2個整數，比較其大小");
         String num1 = JOptionPane.showInputDialog("整數1");
         String num2 = JOptionPane.showInputDialog("整數2");
         
         int numA = Integer.parseInt(num1);
         int numB = Integer.parseInt(num2);
         
         if(numA>numB){
             String big = String.format("%s > %s",numA,numB);
             JOptionPane.showMessageDialog(null,big);
         }else if(numA<numB){
             String small = String.format("%s < %s",numA,numB);
             JOptionPane.showMessageDialog(null,small);
         }else{
             String equal = String.format("%s = %s",numA,numB);
             JOptionPane.showMessageDialog(null,equal);
         }
         
    }
    
}
````` 
