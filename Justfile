alias b := build
alias s := serve
alias r := run

default:
    just --list

serve:
    -docker run --rm -it --name azure-environment azure/nix 'nix-shell'

run:
    just serve

build:
    docker build -t azure/nix -f Dockerfile .
