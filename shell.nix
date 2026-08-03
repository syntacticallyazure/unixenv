let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    fastfetch
    pkgs.nikto
    pkgs.nmap
    pkgs.sherlock
    pkgs.sqlmap
    pkgs.vt-cli
  ];
}