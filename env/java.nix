{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "java-env";
  packages = with pkgs; [
    (combinePackages [
      jdk8
      jdk11
      jdk16
      jdk17
    ])
  ];
  buildInputs = [ pkgs.gradle ]
}
