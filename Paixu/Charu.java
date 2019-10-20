package MVC.Exam.Paixu;

public class Charu {

        public static void main(String[] args) {
            int[] c = {1,3,5,7,9,8,6,4,2,0};
            for(int i=1;i<c.length;i++){
                int position = i;
                int current = c[i];

                for(int j=i-1;j>=0;j--){
                    //先让开始的一小段有序，再依次往后遍历，依次插入。
                    if(c[j] > current){
                        c[j+1]=c[j];
                        position--;
                    }
                }
                c[position] = current;
            }
            //打印排好序列
            for(int q=0;q<c.length;q++){
                System.out.print(c[q]+" ");
            }

        }


}
