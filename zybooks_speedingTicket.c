#include <stdio.h>

int main(void) {

   int speedLimit, drivingSpeed;

   scanf("%d", &speedLimit);
   scanf("%d", &drivingSpeed);

   int difference = drivingSpeed - speedLimit;


   int trafficTicket = 0;

   if (difference <= -10 && difference <= 5){
    trafficTicket = 50;
   }
   else if (difference >= 6 && difference <=20){
      trafficTicket = 75;
   }
   else if (difference >= 21 && difference <=40){
      trafficTicket = 150;
   }
   else if (difference >= 40){
      trafficTicket = 300;
   }

   if (difference > 0){
      printf ("%d", trafficTicket);
}
   else {
   printf("0");
   }


   return 0;
}
