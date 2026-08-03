alias c := clear

#just --no-highlight as a fix for formatting problems

default:
    just --no-highlight build serve;

serve:
    docker run --rm -it -v nix-store:/nix/store -v nix-cache:/root/.cache/nix azure/nix 'nix-shell'

build:
    docker build -t azure/nix -f Dockerfile .
    just --no-highlight volume

volume:
    docker volume create nix-volume

clear:
    docker volume rm nix-volume
