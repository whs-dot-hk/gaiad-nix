with inputs.nixpkgs; let
  arch =
    if system == "x86_64-linux"
    then "amd64"
    else "arm64";

  postFixup = ''
    mkdir -p $out/bin
    cp $src $out/bin/gaiad
    chmod +x $out/bin/gaiad
  '';

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
    inherit postFixup;
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
    inherit postFixup;
  };
  gaiad_15_1_0 = stdenv.mkDerivation rec {
    pname = "gaiad";
    version = "15.1.0";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/releases/download/v${version}/gaiad-v${version}-linux-${arch}";
      sha256 =
        if arch == "amd64"
        then "sha256-vwwI6sXCxeoU6wmDd4FUENXL5SCIjBAy+XC6BADAIyM="
        else "sha256-6RvREYg8fK2z/o8LCjP9ggpeod62uBLl7fd7IJK+G4I=";
    };
    dontUnpack = true;
    dontBuild = true;
    dontConfigure = true;
    dontInstall = true;
    dontPatch = true;
    dontPatchELF = true;
    inherit postFixup;
  };
  gaiad_15_2_0 = stdenv.mkDerivation rec {
    pname = "gaiad";
    version = "15.2.0";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/releases/download/v${version}/gaiad-v${version}-linux-${arch}";
      sha256 =
        if arch == "amd64"
        then "sha256-peDG3XTYE25LACU1JFHkxsrYiF5qXu7Tm5wyWXim2d0="
        else "sha256-TIAtWaH4lrF9qlNvVvEvNACHjyb9cLr5acJvvxCo3vs=";
    };
    dontUnpack = true;
    dontBuild = true;
    dontConfigure = true;
    dontInstall = true;
    dontPatch = true;
    dontPatchELF = true;
    inherit postFixup;
  };
  gaiad_16_0_0 = stdenv.mkDerivation rec {
    pname = "gaiad";
    version = "16.0.0";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/releases/download/v${version}/gaiad-v${version}-linux-${arch}";
      sha256 =
        if arch == "amd64"
        then "sha256-VEDcwo0QHnrXQhBI4zOYkbfueo9XbmY58F8v2+5f7aI="
        else "sha256-LRkMbKN6RZQK9MbyoNkBt/3CEKWJa3fXKBYMJ1PuE70=";
    };
    dontUnpack = true;
    dontBuild = true;
    dontConfigure = true;
    dontInstall = true;
    dontPatch = true;
    dontPatchELF = true;
    inherit postFixup;
  };
  gaiad_17_0_0 = stdenv.mkDerivation rec {
    pname = "gaiad";
    version = "17.0.0";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/releases/download/v${version}/gaiad-v${version}-linux-${arch}";
      sha256 =
        if arch == "amd64"
        then "sha256-cLeqMjjiyXeVYLoI4xB36cEHpoRfZY8i/D3feuIWoXI="
        else "sha256-aUAEq6qMYLkMR2l+GskRbfnqSy66KQcMDdn0rn/J1gA=";
    };
    dontUnpack = true;
    dontBuild = true;
    dontConfigure = true;
    dontInstall = true;
    dontPatch = true;
    dontPatchELF = true;
    inherit postFixup;
  };
  gaiad_17_1_0 = stdenv.mkDerivation rec {
    pname = "gaiad";
    version = "17.1.0";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/releases/download/v${version}/gaiad-v${version}-linux-${arch}";
      sha256 =
        if arch == "amd64"
        then "sha256-7E6wBONtBKBfymw7Rh2iKveKiHSV63j0YKNHlae7A2I="
        else "sha256-ko5o+tf5+PHJB0Vj6sGKp56MB3Qa6L1PYPdaJIJllO4=";
    };
    dontUnpack = true;
    dontBuild = true;
    dontConfigure = true;
    dontInstall = true;
    dontPatch = true;
    dontPatchELF = true;
    inherit postFixup;
  };
  gaiad_17_2_0 = stdenv.mkDerivation rec {
    pname = "gaiad";
    version = "17.2.0";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/releases/download/v${version}/gaiad-v${version}-linux-${arch}";
      sha256 =
        if arch == "amd64"
        then "sha256-XM5PGt5y2Gl6w2P7Ua0wcbu9PDYe2xOdgiAVXahNFq0="
        else "sha256-OdOLWKAppW5F5LpORIOccTOkfs1oKb9nCJ3p3plYnVk=";
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
  inherit gaiad_14_1_0;
  inherit gaiad_15_0_0;
  inherit gaiad_15_1_0;
  inherit gaiad_15_2_0;
  inherit gaiad_16_0_0;
  inherit gaiad_17_0_0;
  inherit gaiad_17_1_0;
  inherit gaiad_17_2_0;
}
