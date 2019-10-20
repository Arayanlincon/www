package MVC.Exam.Paixu;

public class Maopao {
    public static void main(String[] args) {
        int[] c = {1,3,5,7,9,8,6,4,2,0};
        MPSort(c);
        //打印排好序列   时间复杂N2   空间S=1；
        for(int q=0;q<c.length;q++){
            System.out.print(c[q]+" ");
        }
    }

    public static void MPSort(int[] source_data){
       // int[] source_data = {20,40,50,30,10,5,15,25,45,35};
        for (int i = 1; i < source_data.length; i++) {
            for (int j = 0; j < source_data.length - i; j++) {
                if (source_data[j] > source_data[j+1]){
                    int temp = source_data[j+1];
                    source_data[j+1] = source_data[j];
                    source_data[j] = temp;
                }
            }
        }
    }
    void mysort(int[] arr){

        for(int i=0;i<arr.length;i++)
            for (int j=0;j<arr.length-i;j++)
                if(arr[j]<arr[j+1]){
                    int temp=arr[j];
                    arr[j]=arr[j+1];
                    arr[j+1]=temp;
                }
    }
}
