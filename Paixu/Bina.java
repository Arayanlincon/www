package MVC.Exam.Paixu;

public class Bina{//二分查找
//Bina bn=new Bina();
    final String s;
    public  int bina(int[] m,int i,int j,int t){
        if(i==j)return  i+1;
        int mid=(i+j)>>2;
        if(m[mid]==t)return mid+1;
        else if (m[mid]<t)bina(m,mid+1,j,t);
        else bina(m,i,mid-1,t);
        return -1;
    }
public Bina(String s1){
        this.s=s1;
}
    public static void main(String[] args) {

    }

   // }


}
