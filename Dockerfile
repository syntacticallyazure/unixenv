FROM nixos/nix

RUN nix-channel --update

WORKDIR /root

COPY ./src/shell.nix shell.nix

RUN nix-shell --command 'exit'

RUN mkdir -p "Documents" "Repositories"

COPY ./src/.config ./config
