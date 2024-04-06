{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  name = "python3-env";
  packages = with pkgs; [
    python311Full
    (writeShellScriptBin "python" ''
      exec python3 "$@"
    '')
  ];
}
