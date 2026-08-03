FROM nixos/nix

RUN nix-channel --update

WORKDIR /root

COPY shell.nix shell.nix
