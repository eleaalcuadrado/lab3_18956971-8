#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>

int main(){
	float total, inicio, final;
	inicio = clock();
	printf("Programa 2:\n");
	int i;
	srand(time(NULL));
	int r;
	int	*arr = (int*)malloc(36870912*sizeof(int));
	for(i=0; i< 36870912; i++)
   	{
		r = rand()%36870912;
		arr[r] = r;
   	}
	final = clock();	
	total=(final-inicio);
	printf("Se demora: %f.\n",total);	
	return 0;
}
