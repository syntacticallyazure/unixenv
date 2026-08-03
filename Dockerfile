FROM nixos/nix

RUN nix-channel --update

WORKDIR /root

COPY shell.nix shell.nix

RUN nix-shell --command 'exit'

RUN mkdir -p "Documents" "Repositories"
