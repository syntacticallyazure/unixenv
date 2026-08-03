alias b := build
alias s := serve
alias r := run

default:
    just build serve;

serve:
    # docker run --rm -it --name azure-environment -v nix-volume:/nix -v nix-cache:/root/.cache/nix azure/nix 'nix-shell'
    docker run --rm -it --name azure-environment azure/nix 'nix-shell'

run:
    just serve

build:
    docker build -t azure/nix -f Dockerfile .
    # just volume

# volume:
#     docker volume create nix-volume
#     docker volume create nix-cache

# clear:
#     docker volume rm nix-volume
#     docker volume rm nix-cache
