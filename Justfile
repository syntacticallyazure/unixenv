alias c := clear

default:
    just build serve;

serve:
    -docker run --rm -it -v nix-store:/nix/store azure/nix 'nix-shell'

build:
    docker build -t azure/nix -f Dockerfile .
    @just volume

volume:
    @docker volume create nix-store

clear:
    docker volume rm nix-store