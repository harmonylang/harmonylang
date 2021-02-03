git clone --depth=1 --branch=master https://github.coecis.cornell.edu/rv22/harmony.git temp_harmony_clone
rm -rf ./temp_harmony_clone/.git

mkdir temp_harmony_clone_copy

mv ./temp_harmony_clone/harmony ./temp_harmony_clone_copy
mv ./temp_harmony_clone/README.md ./temp_harmony_clone_copy
mv ./temp_harmony_clone/modules ./temp_harmony_clone_copy
mv ./temp_harmony_clone/src ./temp_harmony_clone_copy

rm -rf temp_harmony_clone
rm -rf harmony-master

mv temp_harmony_clone_copy harmony-master
