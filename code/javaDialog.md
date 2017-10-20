````` java

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package javaapplication1;
import javax.swing.JOptionPane;

/**
 *
 * @author aa
 */
public class JavaApplication1 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        JOptionPane.showMessageDialog(null,"Meow");//單純的對話框
        
        String name = JOptionPane.showInputDialog(null,"Meow~"); 
        String message = String.format("HI,%s",name); //這兩行是用於讓使用者輸入文字后顯示出來的
        
        JOptionPane.showMessageDialog(null,message);
        
        
    }
    
}

````` 
