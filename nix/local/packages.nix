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
  gaiad_22_0_2 = stdenv.mkDerivation rec {
    pname = "gaiad";
    version = "22.0.2";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/releases/download/v${version}/gaiad-v${version}-linux-amd64";
      sha256 = "sha256-yXVPkZCbvsuN4vwxy7lXZ7CtsvrilVvyL80NeHxiNBQ=";
    };
    dontUnpack = true;
    dontBuild = true;
    dontConfigure = true;
    dontInstall = true;
    dontPatch = true;
    dontPatchELF = true;
    inherit postFixup;
  };
  gaiad_22_1_0 = stdenv.mkDerivation rec {
    pname = "gaiad";
    version = "22.1.0";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/releases/download/v${version}/gaiad-v${version}-linux-amd64";
      sha256 = "sha256-fcXMcwpsHfXljGDNF+VUKe01ImjKik7GBezMuUFF1+A=";
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
  gaiad_23_0_0 = stdenv.mkDerivation rec {
    pname = "gaiad";
    version = "23.0.0";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/releases/download/v${version}/gaiad-v${version}-linux-amd64";
      sha256 = "sha256-A7LQ+WvO8LhmdpdLjt/1URb+riGD3tgo05LQyd+U7v8=";
    };
    dontUnpack = true;
    dontBuild = true;
    dontConfigure = true;
    dontInstall = true;
    dontPatch = true;
    dontPatchELF = true;
    inherit postFixup;
  };
  gaiad_23_0_1 = stdenv.mkDerivation rec {
    pname = "gaiad";
    version = "23.0.1";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/releases/download/v${version}/gaiad-v${version}-linux-amd64";
      sha256 = "sha256-460KWCfGbtEmhT8kf0D2AfYsZWmRdfxzG00QvbZgicU=";
    };
    dontUnpack = true;
    dontBuild = true;
    dontConfigure = true;
    dontInstall = true;
    dontPatch = true;
    dontPatchELF = true;
    inherit postFixup;
  };
  gaiad_23_1_1 = stdenv.mkDerivation rec {
    pname = "gaiad";
    version = "23.1.1";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/releases/download/v${version}/gaiad-v${version}-linux-amd64";
      sha256 = "sha256-Zn4GOnLdiidbPp8CcluiAF0BzXmUKTIui7OeRmWF8Ac=";
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
  inherit gaiad_22_0_2;
  inherit gaiad_22_1_0;
  inherit gaiad_22_2_0;
  inherit gaiad_23_0_0;
  inherit gaiad_23_0_1;
  inherit gaiad_23_1_1;
}
