package hw1;

public class Polygon {
	Point[] points ; //記錄多邊形的各頂點座標, 請使用第一題的Point
	double total = 0.0;
    
    Polygon() { }
    Polygon(Point[] ps) {
    	this.points = new Point[ps.length];
    	for (int i = 0; i < ps.length; i++) {
    		this.points[i] = new Point(ps[i]);
    	}
        // 使用深度copy, 將ps複製至points
        // points = ps ; // 這行是錯的, 不要這麼寫
    }
    double border() {
        for (int i = 0 ; i < points.length; i++) { // 27.48 , 12
        	total += points[i].distance(points[i+1]);
        }
        total += points[points.length-1].distance(points[0]);
        return total ;
    }
    double area() {
        // DIY: 計算並回傳此多邊型的面積
    	double d1,d2,d3,d4;
    	double area = 0.0;
    	for(int i = 0; i < points.length; i+=3) {
    		d1 = points[0].distance(points[i+1]);
    		d2 = points[0].distance(points[i+2]);
    		d3 = points[i+1].distance(points[i+2]);
    		d4 = (d1+d2+d3)/2;
    		area += ()
    	}
    	
        return 0.0 ;
    }
    void print(String msg) {
        System.out.print(msg) ;
        // DIY: 依照程式輸出印出多邊形
        
        System.out.println() ; 
    }

}
