overview
========

SeisSol is a part of SCEC dynamic code validation project
:raw-latex:`\citep{harris2018}`. Here we show several SCEC benchmarks
for beginners to quickly catch up with SeisSol workflow. Each benchmark
example is composed of a short problem description, a section of
*geometry, initial setups (stress, nucleation, friction, etc.)*, and
*simulation results*.

+----------------+-------------------------+----------------+---------------------------------------------------------------------------------------------------------------------+
| No.            | Fault type              | Difficulty     | Description                                                                                                         |
+================+=========================+================+=====================================================================================================================+
| TPV5           | strike-slip             | beginner       | slip-weakening and heterogeneous initial stress conditions                                                          |
+----------------+-------------------------+----------------+---------------------------------------------------------------------------------------------------------------------+
| TPV6           | strike-slip             | beginner       | bi-material fault and, slip-weakening and heterogeneous initial stress conditions                                   |
+----------------+-------------------------+----------------+---------------------------------------------------------------------------------------------------------------------+
| TPV12          | normal fault            | beginner       | linear elastic and initial stress conditions are dependent on depth                                                 |
+----------------+-------------------------+----------------+---------------------------------------------------------------------------------------------------------------------+
| TPV13          | normal fault            | beginner       | non-associative Drucker-Prager plastic with yielding in shear ad initial stress conditions are dependent on depth   |
+----------------+-------------------------+----------------+---------------------------------------------------------------------------------------------------------------------+
| TPV16          | strike-slip             | intermediate   | randomly-generated heterogeneous initial stress conditions                                                          |
+----------------+-------------------------+----------------+---------------------------------------------------------------------------------------------------------------------+
| TPV24          | branching strike-slip   | intermediate   | a rightward branch forming a 30 degree angle. There are linear elastic material properties                          |
+----------------+-------------------------+----------------+---------------------------------------------------------------------------------------------------------------------+
| TPV29          | strike-slip             | difficult      | stochastic roughness. Linear elastic material properties in a homogeneous half-space.                               |
+----------------+-------------------------+----------------+---------------------------------------------------------------------------------------------------------------------+
| TPV104         | strike-slip             | difficult      | Rate-state friction, using a slip law with strong rate-weakening.                                                   |
+----------------+-------------------------+----------------+---------------------------------------------------------------------------------------------------------------------+
| Point Source   | strike-slip             | intermediate   | benchmark of SISMOWINE WP2\_LOH1.                                                                                   |
+----------------+-------------------------+----------------+---------------------------------------------------------------------------------------------------------------------+
| Kinematic      | reverse fault           | intermediate   | Kinematic source of 1994 Mw6.7 Northridge earthquake.                                                               |
+----------------+-------------------------+----------------+---------------------------------------------------------------------------------------------------------------------+

Table: Overall of examples suites.

Prerequisites
~~~~~~~~~~~~~

Before you begin any of the examples, you will need to install latest
SeisSol from . The instruction can be found at . All geometry and
tetrahedral meshing are generated using free software Gmsh () is needed.
If you do not wish to create your own mesh at this time, the meshes are
also provided as part of the example. The ParaView visualization package
may be used to view simulation results. You may use other visualization
software, but some adaption from what is described here will be
necessary. Furthermore, you can complete a subset of the example using
files provided (as described below), skipping the steps for which you do
not have the proper software packages installed

Input file resources
~~~~~~~~~~~~~~~~~~~~

The files needed to work through the examples are provided. Users may
download freely from this repository.
