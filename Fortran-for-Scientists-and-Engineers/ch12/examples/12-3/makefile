# This is an commentary line in a makefile
# Start of the makefile
execname: test_vectors.o vector_module.o
	gfortran -o test test_vectors.o vector_module.o
vector_module.mod: vector_module.o vector_module.f90
	gfortran -c vector_module.o
vector_module.o: vector_module.f90
	gfortran -c vector_module.f90
test_vectors.o: test_vectors.f90 vector_module.mod
	gfortran -c test_vectors.f90
clean:
	rm test_vectors.o vector_module.o vector_module.mod
# End of the makefile
