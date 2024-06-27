{ pkgs, ... }:

pkgs.mkShell {
  packages = with pkgs; [
    gcc
    clang
    gnumake
    cmake
    gdb
    clang-tools
    valgrind
    bear
  ];

  shellHook = ''
    # Use clangd from clang-tools as the one from clang is not patched for nixos
    PATH="${pkgs.clang-tools}/bin:$PATH"
  '';
}
