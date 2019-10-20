package MVC.Exam.Paixu;

public class Guibin {//稳定 都是logN    空间O（1）
    public static void main(String[] args) {
        int[] c = {1,3,5,7,9,8,6,4,2,0};
        //调用归并排序操作。
        mergeSort2(c, 0, c.length-1);
        //打印排好序列
        for(int q=0;q<c.length;q++){
            System.out.print(c[q]+" ");
        }
    }
    public static void mergeSort2(int[] numbers,int start,int end){
        if(start >= end)return;//第一步是分治
            int mid = (start + end)/2;
            mergeSort2(numbers,start,mid);
            mergeSort2(numbers,mid+1,end);
            merge2(numbers,start,end,mid);//最后一步归一  递归下去
    }
    private static void merge2(int[] numbers, int start, int end, int mid) {
        int i = start,j=mid+1,k=0;
        int[] temp = new int[end+1];//空间O（1）？
        //两路合并操作。
        while(i<=mid && j<=end){
            if(numbers[i]<=numbers[j]){
                temp[k++]=numbers[i++];
            }else{
                temp[k++]=numbers[j++];
            }
        }
        //如果两个路的长度不一样，将长了的粘在缓存后面。
        while(i<=mid){
            temp[k++] = numbers[i++];
        }
        while(j<=end){
            temp[k++] = numbers[j++];
        }
        //将排好的新数组赋值回原来的数组
        for(i = 0;i<k;i++){
            numbers[start+i]=temp[i];
        }
    }


}
