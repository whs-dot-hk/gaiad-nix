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
  gaiad_15_0_0 = stdenv.mkDerivation rec {
    pname = "gaiad";
    version = "15.0.0";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/releases/download/v${version}/gaiad-v${version}-linux-${arch}";
      sha256 =
        if arch == "amd64"
        then "sha256-I2tbg6dnTg5juihnOcRnDRXX1rPc2BADH/g73sLAwq8="
        else "sha256-sFX7cBHpnRajzK4GRDsNz9dFs2SAr2s+Vp6IyU8xNNM=";
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
  inherit gaiad_15_0_0;
}
