with inputs.nixpkgs; let
  postFixup = ''
    mkdir -p $out/bin
    cp $src $out/bin/gaiad
    chmod +x $out/bin/gaiad
  '';

  gaiad_21_0_1 = stdenv.mkDerivation rec {
    pname = "gaiad";
    version = "21.0.1";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/releases/download/v${version}/gaiad-v${version}-linux-amd64";
      sha256 = "sha256-7NivZ3poXXs8NAhL2k2uthg12a/B+8qV93g/wnQLBrU=";
    };
    dontUnpack = true;
    dontBuild = true;
    dontConfigure = true;
    dontInstall = true;
    dontPatch = true;
    dontPatchELF = true;
    inherit postFixup;
  };
  gaiad_22_2_0 = stdenv.mkDerivation rec {
    pname = "gaiad";
    version = "22.2.0";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/releases/download/v${version}/gaiad-v${version}-linux-amd64";
      sha256 = "sha256-SWvct0hRY0hAtzALwatIbidOcI6kx5NwMOw+4jjMCTY=";
    };
    dontUnpack = true;
    dontBuild = true;
    dontConfigure = true;
    dontInstall = true;
    dontPatch = true;
    dontPatchELF = true;
    inherit postFixup;
  };
in {
  inherit gaiad_21_0_1;
  inherit gaiad_22_2_0;
}
