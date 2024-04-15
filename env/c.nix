{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "c-env";
  packages = with pkgs; [
    gcc
    clang
  ];
}
