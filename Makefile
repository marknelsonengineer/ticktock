all: t0 t1 t2 t3 t4 t5 t6

t0: t0.c
	gcc -o ticktock t0.c

t1: t1.c
	gcc -o ticktock t1.c

t2: t2.c
	gcc -o ticktock t2.c

t3: t3.c
	gcc -o ticktock t3.c

t4: t4.c
	gcc -w -o ticktock t4.c

t5: t5.c
	gcc -w -o ticktock -D A='main(){do{printf("Tick\n");sleep(1);printf("Tock\n");sleep(1);}while(1);}' t5.c

t6: 
	rm -f t6.c
	mkfifo t6.c
	gcc -w -o ticktock t6.c &
	cat t1.c > t6.c

clean:
	rm -f ticktock *.o a.out

test: 
	./ticktock
