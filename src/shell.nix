let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-26.05";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    fastfetch
    nikto
    nmap
    sherlock
    sqlmap
    just
    fd
    bat
    eza
    zoxide
    xh
    dust
    hyperfine
    delta
    ripgrep
    ripgrep-all
    ssh-audit
  ];
}
