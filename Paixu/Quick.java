package MVC.Exam.Paixu;

public class Quick {


        public static void main(String[] args) {
            int[] c = {1,3,5,7,9,8,6,4,2,0};
            QuickSort(c, 0, c.length-1);
            //打印排好序列
            for(int q=0;q<c.length;q++){
                System.out.print(c[q]+" ");
            }
        }
/*
* 不稳定 N2 优N  NlogN    空间NlogN
* if(s<e){int base=a[s],i=s,j=e;
* do{while(i<e&&a[i[<base)i++  while(j<e&&a[j]>base) j++; if(i<=j){swap(a[i],a[j])}}while(i<=j);
* if(i
* */
        public static void QuickSort(int[] a,int start,int end){
            if(start < end ){
                int base = a[start];
                int i= start,j=end;
                while(i<=j){
                    while(i < end && a[i] < base)i++;
                    while(j > start && a[j] > base)j--;
                    if(i<=j){ //经过递减递增找到反序的两个数并且交换
                        int temp = a[i];
                        a[i] = a[j];
                        a[j] = temp;
                        i++;j--;
                    }
                };
                if(i< end)
                    QuickSort(a,i,end);
                if(j > start)
                    QuickSort(a,start,j);
            }
        }
    }


