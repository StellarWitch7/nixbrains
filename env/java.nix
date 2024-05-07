{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "java-env";
  packages = with pkgs; [
    jdk
    jdk8
    jdk11
    jdk17
  ];
  buildInputs = [ pkgs.gradle ];
}
