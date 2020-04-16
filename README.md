

# What is Genci
GENCI, in charge of providing high-performance computing and processing data, has the mission, at national and european level, to promote the use of intensive computing associated with Artificial Intelligence for the benefit of french academic and industrial research communities

# What is the Technology watch group


# Inti prototype



# Applications
* Hydro-F : RAMSES [1] was developed in astrophysics’ division in CEA Saclay (France) by Romain Teyssier (CEA) to study large scale structure and galaxy formation. It is written in FORTRAN with extensive use of the MPI library. It is well known in the Computational Fluid Dynamics community and has proven to be scalable to tens of thousands of processes.
HYDRO is a simplified version of RAMSES:
- The space domain is a rectangular two-dimensional splitting with a regular cartesian mesh (there is no Adaptive Mesh Refinement),
- HYDRO solves compressible Euler equations of hydrodynamics,
- HYDRO is based on a finite volume numerical method using a second order Godunov scheme [2] for
Euler equations,
- a Riemann solver [3] computes numerical flux at the interface of two neighbouring computational cells.
- HYDRO code has about 1500 lines.

HYDRO is neither a small kernel nor a big software. It uses common algorithms representative of the ones found in HPC. Hence, it seems to be a good candidate to fulfil the goals of this project:
- study and assess classical parallelization technics and more advanced programming frameworks related to accelerators or ARM based machines,
- compare the performance and parallel scalability of a wide variety of architectures.

In order to cope with the wide varieties of approaches that we want to assess, two main branches of the code have been developed:
1. The initial FORTRAN branch including OpenMP, MPI, hybrid MPI/OpenMP approaches,
2. A C branch to mainly facilitate the porting of the application on GPU platforms including CUDA,
OpenCL, HMPP programming frameworks and novel HPC languages including UPC.


 
 # Scaling

 
 # SVE study

 

 # Summary
