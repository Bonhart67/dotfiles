{ pkgs ? import <nixpkgs> { } }:

with pkgs;

mkShell rec {
  nativeBuildInputs = [
    pkg-config
  ];
  buildInputs = [
    udev alsa-lib vulkan-loader
    xorg.libX11 xorg.libXcursor xorg.libXi xorg.libXrandr xorg.libXinerama
    libxkbcommon wayland
    binutils
    gcc
    glfw
    xorg.libXxf86vm
    mesa
    libGL
  ];
  LD_LIBRARY_PATH = (lib.makeLibraryPath buildInputs) + ":/run/opengl-driver/lib:/run/opengl-driver-32/lib";
}
