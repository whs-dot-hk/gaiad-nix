with inputs.nixpkgs; let
  arch =
    if system == "x86_64-linux"
    then "amd64"
    else "arm64";

  gaiad_14_1_0 = stdenv.mkDerivation rec {
    pname = "gaiad";
    version = "14.1.0";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/releases/download/v${version}/gaiad-v${version}-linux-${arch}";
      sha256 =
        if arch == "amd64"
        then "sha256-uu1DvT9SP9WHz/TY9485WjvLbSDZpnG+9puPvhATOPY="
        else "sha256-pXgisqGZykYfiouvTpikaAP4+l1M6xMLU569DAPANag=";
    };
    dontUnpack = true;
    dontBuild = true;
    dontConfigure = true;
    dontInstall = true;
    dontPatch = true;
    dontPatchELF = true;
    postFixup = ''
      mkdir -p $out/bin
      cp $src $out/bin/gaiad
      chmod +x $out/bin/gaiad
    '';
  };
in {
  inherit gaiad_14_1_0;
}
