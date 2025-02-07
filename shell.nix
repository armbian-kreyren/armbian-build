# Configuration file for Nix(OS) to provide a temporary development enviroment

{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "armbian-build";
  buildInputs = with pkgs; [
    # `bashInteractive` is important as simple using `bash` will be unable to use `compgen`
    bashInteractive # For evaluation
    fakeroot # For packaging apt packages
    nil # Language server for nix
    git # For manipulating the repository and runtime
    shellcheck # For linting shell
    util-linux # Needed for uuidgen
  ];
}
