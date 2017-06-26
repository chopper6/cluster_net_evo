#!/bin/bash
#PBS -l nodes=16:ppn=8
#PBS -l walltime=01:00:00
#PBS -A ymj-002-aa
#PBS -q short

module load compilers/intel/14.0
module load mpi/openmpi/1.6.5
module load libs/mkl/11.1

echo 'simulating: python '$SIMULATION_BATCH_ROOT' 128 '$SIMULATION_CONFIGS

cd $SIMULATION_DIRECTORY

python $SIMULATION_BATCH_ROOT 128 $SIMULATION_CONFIGS
