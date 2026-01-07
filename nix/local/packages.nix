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
  gaiad_23_2_0 = stdenv.mkDerivation rec {
    pname = "gaiad";
    version = "23.2.0";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/releases/download/v${version}/gaiad-v${version}-linux-amd64";
      sha256 = "sha256-w3M+b1+sENHAoL7MuJ+PYTN5eID/vGjODqDwERWwxI4=";
    };
    dontUnpack = true;
    dontBuild = true;
    dontConfigure = true;
    dontInstall = true;
    dontPatch = true;
    dontPatchELF = true;
    inherit postFixup;
  };
  gaiad_23_3_0 = stdenv.mkDerivation rec {
    pname = "gaiad";
    version = "23.3.0";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/releases/download/v${version}/gaiad-v${version}-linux-amd64";
      sha256 = "sha256-fGGx0ptodJzw1u9RcLJkpgUPQoFehvL/3BVKTARmEEc=";
    };
    dontUnpack = true;
    dontBuild = true;
    dontConfigure = true;
    dontInstall = true;
    dontPatch = true;
    dontPatchELF = true;
    inherit postFixup;
  };
  gaiad_24_0_0 = stdenv.mkDerivation rec {
    pname = "gaiad";
    version = "24.0.0";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/releases/download/v${version}/gaiad-v${version}-linux-amd64";
      sha256 = "sha256-nFDtMYjU91Gb+loGuKgxG4rEgOhsu6V3Is1iucO66zo=";
    };
    dontUnpack = true;
    dontBuild = true;
    dontConfigure = true;
    dontInstall = true;
    dontPatch = true;
    dontPatchELF = true;
    inherit postFixup;
  };
  gaiad_25_0_0 = stdenv.mkDerivation rec {
    pname = "gaiad";
    version = "25.0.0";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/releases/download/v${version}/gaiad-v${version}-linux-amd64";
      sha256 = "sha256-ZG+GpwNaYB28o66OplJpZC9ZuM9fE1f1xIMxlltSQc0=";
    };
    dontUnpack = true;
    dontBuild = true;
    dontConfigure = true;
    dontInstall = true;
    dontPatch = true;
    dontPatchELF = true;
    inherit postFixup;
  };
  gaiad_25_1_0 = stdenv.mkDerivation rec {
    pname = "gaiad";
    version = "25.1.0";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/releases/download/v${version}/gaiad-v${version}-linux-amd64";
      sha256 = "sha256-G9a8cv2Yte96YAGg5ChQq03R0ypjqWJ6tyg0q2HtT3Y=";
    };
    dontUnpack = true;
    dontBuild = true;
    dontConfigure = true;
    dontInstall = true;
    dontPatch = true;
    dontPatchELF = true;
    inherit postFixup;
  };
  gaiad_25_2_0 = stdenv.mkDerivation rec {
    pname = "gaiad";
    version = "25.2.0";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/releases/download/v${version}/gaiad-v${version}-linux-amd64";
      sha256 = "sha256-5UqzCcpMEX1zoEOt/E6RVfNaSAklrYqUpiW9gOk5j3Y=";
    };
    dontUnpack = true;
    dontBuild = true;
    dontConfigure = true;
    dontInstall = true;
    dontPatch = true;
    dontPatchELF = true;
    inherit postFixup;
  };
  gaiad_25_3_0 = stdenv.mkDerivation rec {
    pname = "gaiad";
    version = "25.3.0";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/releases/download/v${version}/gaiad-v${version}-linux-amd64";
      sha256 = "sha256-OWwvCMbWDMFMEBODoy8yAjeeRNT8SmVQXbs4l+Dx4e0=";
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
  inherit gaiad_23_2_0;
  inherit gaiad_23_3_0;
  inherit gaiad_24_0_0;
  inherit gaiad_25_0_0;
  inherit gaiad_25_1_0;
  inherit gaiad_25_2_0;
  inherit gaiad_25_3_0;
}
