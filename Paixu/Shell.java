package MVC.Exam.Paixu;

public class Shell {

        public static void main(String[] args) {
            int[] c = {1,3,5,7,9,8,6,4,2,0};
            ShellSort(c);
            //打印排好序列
            for(int q=0;q<c.length;q++){
                System.out.print(c[q]+" ");
            }
        }

        public static void ShellSort(int[] a){
            int d = a.length;
            while(d>0){
                d=d/2;
                for(int x=0;x<d;x++){
                    for(int i=x+d;i<a.length;i+=d){
                        int j=i-d;
                        int current = a[i];
//					while(j>=0 ){
//						if(a[j] > current){
//							a[j+d] = a[j];
//						}
//						j-=d;
//					}
                        //此处有两个判断条件，当都满足是才执行。不要写成上面的错误方式。
                        for(;j>=0&&current< a[j];j-=d){
                            a[j+d]=a[j];
                        }
                        a[j+d] = current;
                    }
                }
            }
        }
    }


