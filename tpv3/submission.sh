#!/bin/bash

# Job Name and Files (also --job-name)

#SBATCH -J SCECTPV3
#Output and error (also --output, --error):
#SBATCH -o ./job.%j.%x.out
#SBATCH -e ./job.%j.%x.err

#Initial working directory (also --chdir):
#SBATCH --workdir=/hppfs/work/pr63qo/di52lak2/SCECexample/tpv3/

#Notification and type
#SBATCH --mail-type=END
#SBATCH --mail-user=dli@geophysik.uni-muenchen.de

# Wall clock limit:
#SBATCH --time=00:30:00
#SBATCH --no-requeue

#Setup of execution environment
#SBATCH --export=NONE
#SBATCH --account=pr63qo
#constraints are optional
#--constraint="scratch&work"
#SBATCH --partition=test

#Number of nodes and MPI tasks per node:
#max33 so far, else error
#SBATCH --nodes=16
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=48
#Needs specific MPI
#module switch mpi.intel mpi.intel/2019
#Run the program:
export MP_SINGLE_THREAD=no
unset KMP_AFFINITY
export OMP_NUM_THREADS=47
export OMP_PLACES="cores(47)"

export XDMFWRITER_ALIGNMENT=8388608
export XDMFWRITER_BLOCK_SIZE=8388608
export SC_CHECKPOINT_ALIGNMENT=8388608

export SEISSOL_CHECKPOINT_ALIGNMENT=8388608
export SEISSOL_CHECKPOINT_DIRECT=1
export ASYNC_MODE=THREAD
export ASYNC_BUFFER_ALIGNMENT=8388608
export SEISSOL_ASAGI_MPI_MODE=OFF
source /etc/profile.d/modules.sh

module switch gcc/4.9 gcc

echo $SLURM_NTASKS
ulimit -Ss unlimited

echo $SLURM_NTASKS
srun --export=ALL ./SeisSol_relWithDebInfo_generatedKernels_dskx_hybrid_none_9_4 parameters.par



