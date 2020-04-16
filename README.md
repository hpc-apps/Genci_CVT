# What is Genci
GENCI, in charge of providing high-performance computing and processing data, has the mission, at national and european level, to promote the use of intensive computing associated with Artificial Intelligence for the benefit of french academic and industrial research communities

# What is the Technology watch group


# Inti prototype

# Applications
* Hydro-F : RAMSES [1] was developed in astrophysics’ division in CEA Saclay (France) by Romain Teyssier (CEA) to study large scale structure and galaxy formation. It is written in FORTRAN with extensive use of the MPI library. It is well known in the Computational Fluid Dynamics community and has proven to be scalable to tens of thousands of processes.
HYDRO is a simplified version of RAMSES ( The space domain is a rectangular two-dimensional splitting with a regular cartesian mesh (there is no Adaptive Mesh Refinement), HYDRO solves compressible Euler equations of hydrodynamics, HYDRO is based on a finite volume numerical method using a second order Godunov scheme  for Euler equations, a Riemann solver [3] computes numerical flux at the interface of two neighbouring computational cells). HYDRO code has about 1500 lines. HYDRO is neither a small kernel nor a big software. It uses common algorithms representative of the ones found in HPC. Hence, it seems to be a good candidate to fulfil the goals of this project:
study and assess classical parallelization technics and more advanced programming frameworks related to accelerators or ARM based machines, compare the performance and parallel scalability of a wide variety of architectures. In order to cope with the wide varieties of approaches that we want to assess, two main branches of the code have been developed: 1. The initial FORTRAN branch including OpenMP, MPI, hybrid MPI/OpenMP approaches, 2. A C branch to mainly facilitate the porting of the application on GPU platforms including CUDA,
OpenCL, HMPP programming frameworks and novel HPC languages including UPC.

* AVBP : The AVBP project started in 1993 upon an initiative of Michael Rudgyard and Thilo Schönfeld with the aim to build a modern software tool for Computational Fluid Dynamics (CFD) within CERFACS of high flexibility, efficiency and modularity. Since then, the project grew rapidly and today, under the leadership of Thierry Poinsot, AVBP represents one of the most advanced CFD tools worldwide for the numerical simulation of unsteady turbulence for reacting flows. AVBP is widely used both for basic research and applied research of industrial interest. Today, the AVBP project comprises a total of around 30 researcher scientists and engineers. AVBP is a parallel CFD code that solves the three-dimensional compressible Navier-Stokes on unstructured and hybrid grids. Initially conceived for steady state flows of aerodynamics, today the exclusive area of application is the modelling of unsteady reacting flows in combustor configurations. These activities are partially related to the rising importance paid to the understanding of the flow structure and mechanisms leading to turbulence. The prediction of these unsteady turbulent flows is based on the Large Eddy Simulation (LES) approach that has emerged as a prospective technique for problems associated with time dependent phenomena and coherent eddy structures. An Arrhenius law reduced chemistry model allows investigating combustion for complex configurations.

* Yales2 : YALES2 aims at the solving of two-phase combustion from primary atomization to pollutant prediction on massive complex meshes. It is able to handle efficiently unstructured meshes with several billions of elements, thus enabling the Direct Numerical Simulation of laboratory and semi-industrial configurations.
 
 # Scaling
[Contribution guidelines for this project](SCALING/Scaling_OLD.PNG)
 
 # SVE study

 

 # Summary
