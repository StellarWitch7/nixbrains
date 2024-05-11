{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "rust-env";
  buildInputs = with pkgs; [
    rustc
    gcc
    clang
    cargo
    rustfmt
    cmake
  ];

  RUST_BACKTRACE = 1;
}
