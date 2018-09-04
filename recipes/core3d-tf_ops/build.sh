cd danesfield/geon_fitting/tf_ops/sampling
bash tf_sampling_compile.sh

cd ../grouping
bash tf_grouping_compile.sh

cd ../interpolation
bash tf_interpolate_compile.sh

cd ../../../..
mkdir -p "${PREFIX}"/lib
cp danesfield/geon_fitting/tf_ops/*/*.{so,cu.o} "${PREFIX}"/lib/
