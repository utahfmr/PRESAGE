
all:
	(cd stencils/adi; make)
	(cd stencils/fdtd-2d; make)
	(cd stencils/jacobi-2d; make)
	(cd stencils/seidel-2d; make)
	(cd linear-algebra/blas/gemm; make)
	(cd linear-algebra/blas/gesummv; make)
	(cd linear-algebra/blas/trmm; make)
	(cd linear-algebra/kernels/atax; make)
	(cd linear-algebra/kernels/bicg; make)
	(cd linear-algebra/kernels/mvt; make)
	(cd linear-algebra/solvers/cholesky; make)
	(cd linear-algebra/solvers/lu; make)

clean:
	(cd stencils/adi; make clean)
	(cd stencils/fdtd-2d; make clean)
	(cd stencils/jacobi-2d; make clean)
	(cd stencils/seidel-2d; make clean)
	(cd linear-algebra/blas/gemm; make clean)
	(cd linear-algebra/blas/gesummv; make clean)
	(cd linear-algebra/blas/trmm; make clean)
	(cd linear-algebra/kernels/atax; make clean)
	(cd linear-algebra/kernels/bicg; make clean)
	(cd linear-algebra/kernels/mvt; make clean)
	(cd linear-algebra/solvers/cholesky; make clean)
	(cd linear-algebra/solvers/lu; make clean)
	rm -f *~
