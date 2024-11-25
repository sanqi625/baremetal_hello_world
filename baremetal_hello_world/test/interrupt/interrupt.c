#include "print.h"
#include "/data/usr/jiaoyd/baremetal_hello_world/hal/toy/global.h"

int main() {

    global_cnt =1;
    int i;

    //printf("[main] global cnt is = %d \n",global_cnt);

    //for(i=0;i<global_cnt;i++){
    //    printf("[main] for !!! \n");
    //}
    printf("/*================= TEST Interrupt ==================*/\n");

    while (1)
    {
        if(global_cnt >= 4){
            printf("/******** Global CNT TIMEOUT!!!********/ \n");
            break;
        }
    }

    for(i=1;i<global_cnt;i++){
        printf("[main] cnt !!! \n");
    }

    //int cnt=0;
//
    //while(1)
    //{
    //    if(cnt==100000){
    //        printf("CNT timeout!!!\n");
    //        break;
    //    }
    //    else {
    //        cnt++;
    //    }
    //}

    printf("/*=================TEST interrupt Success!!!==================*/\n");

    return 0;
} 