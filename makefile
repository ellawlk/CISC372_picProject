image:image.c image.h
	gcc -g image.c -o image -lm -lpthread
imagemp: image_openmp.c -o imagemp -lm -fopenmp
	gcc -g image_openmp.c -o imagemp -lm -fopenmp
clean:
	rm -f image output.png