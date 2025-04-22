# Summerschool_exercises
A few exercises for a summerschool on the Proper Orthogonal Decomposition

Exercise 1
Plot the first and last time instances of U and V in a contour plot. 
-- Note: The data has virtually no temporal evolution, however, this is besides the point for the current exercises.

Exercise 2
Reorganize the data within U and V so each velocity field constitutes a POD ensemble.

Exercise 3
Implement the proper orthogonal decomposition within the "POD" function and run the routine for both U and V data.

Exercise 4
Plot the POD eigenvalues using loglog - what do you see?

Exercise 5
Plot the first 8 POD modes - what do you see? How do the modes correspond to the eigenvalues?

Exercise 6
Implement the reconstruction routine within the "ReconstructRealization" function and run the routine for a given realization i.
Note: any realization x_i may be written as a sum of the orthonormal POD modes phi_n i.e.
x_i = \sum \limits_{n=1}^{n_modes} c_{in} phi_n
Where the projection coefficients c_{in}=dot(x_i, phi_n
