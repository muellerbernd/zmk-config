default:
    @just --list --unsorted

# build with python script
build:
  python zmk_local_build.py

# # clear build cache and artifacts
# clean:
#     rm -rf {{ build }} {{ out }}

# initialize west
init:
    west init -l config
    west update --fetch-opt=--filter=blob:none
    west zephyr-export

# update west
update:
    west update --fetch-opt=--filter=blob:none

