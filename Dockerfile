FROM nixos/nix

RUN nix-channel --update

WORKDIR /root

COPY ./src/shell.nix shell.nix

RUN nix-shell --command 'exit'

RUN mkdir -p "Documents" "Repositories"

#TODO: probably needs some optimisation
COPY ./src/.config .config
