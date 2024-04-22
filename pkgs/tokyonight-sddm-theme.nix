{ stdenv, inputs }:

stdenv.mkDerivation {
  name = "tokyonight-sddm-theme";
  dontBuild = true;
  installPhase = ''
    mkdir -p $out/share/sddm/themes
    cp -aR $src $out/share/sddm/themes/tokyonight
  '';
  src = inputs.tokyonight-sddm-theme;
}
