package MVC.Exam.Paixu;

public class Choose {
        public static void main(String[] args) {
            int[] c = {1,3,5,7,9,8,6,4,2,0,10};
            int i,j,k;
            //选择排序
            for(i=0;i<c.length-1;i++){
                k=i;
                for(j=i+1;j<c.length;j++){
                    if(c[k] > c[j]){//找最小
                        k=j;
                    }
                }
                {int temp = c[i];c[i]= c[k];c[k]=temp;}
            }

            for(int q=0;q<c.length;q++){
                System.out.print(c[q]+" ");
            }
        }


     static    void mysort(int a[]){
            for (int i=0;i<a.length-1;i++){//最小的放到前面  和冒泡反过来
                int temp=i;
                for (int j=1+i;j<a.length;j++)
                    if (a[j]<temp)temp=j;
                {int t= a[i];a[i]= a[temp];a[temp]=t;}
            }
            System.out.println();
        }
    }

