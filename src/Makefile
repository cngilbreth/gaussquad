FC = gfortran -Wall -pedantic
LAPACK := -llapack -lcblas -lf77blas -latlas

testquad: gaussquad.o testquad.o
	$(FC) -o testquad $+ $(LAPACK)

clean:
	/bin/rm -f *.o *.mod

%.o: %.f90
	$(FC) -c $< -o $@
