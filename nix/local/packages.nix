with inputs.nixpkgs; let
  arch =
    if system == "x86_64-linux"
    then "x86_64"
    else "aarch64";

  postInstall = ''
    for f in "$out"/bin/*; do
      local nrp="$(patchelf --print-rpath "$f" | sed -E 's@(:|^)'$NIX_BUILD_TOP'[^:]*:@\1@g')"
      patchelf --set-rpath "$nrp" "$f"
    done
  '';

  libwasmvm_2_1_5 = stdenv.mkDerivation rec {
    pname = "libwasmvm";
    version = "2.1.5";
    src = fetchurl {
      url = "https://github.com/CosmWasm/wasmvm/releases/download/v${version}/libwasmvm.${arch}.so";
      sha256 =
        if arch == "x86_64"
        then "sha256-PAVIA2HfcWGlc6LNcVtnH5o/XCVjPjqty6qi512mNAA="
        else "sha256-1fE1J9DEtzTjS1WDydqc/6JDCJjyjrhoQfgkKATcbMU=";
    };
    dontBuild = true;
    dontUnpack = true;
    installPhase = ''
      mkdir -p $out/lib
      cp $src $out/lib/libwasmvm.${arch}.so
    '';
  };

  gaiad_21_0_1 = buildGoModule rec {
    pname = "gaiad";
    version = "21.0.1";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/archive/refs/tags/v${version}.tar.gz";
      sha256 = "sha256-Wd4EaAoxR7I9Yx7QChdIg2gQ/ErZKQIzaitvZaVfUEc=";
    };
    vendorHash = "sha256-wsgpF2WmvJSL3wFwGyyE0j1OH45eY6/alu+hNy8an6Q=";
    subPackages = "cmd/gaiad";
    buildInputs = [libwasmvm_2_1_5];
    inherit postInstall;
  };
  gaiad_22_2_0 = buildGoModule rec {
    pname = "gaiad";
    version = "22.2.0";
    src = fetchurl {
      url = "https://github.com/cosmos/gaia/archive/refs/tags/v${version}.tar.gz";
      sha256 = "sha256-boND11Z8RHS/Uaab/j1nR8V6aebe0zAs8Z5f/qKQWwU=";
    };
    vendorHash = "sha256-JlJmuOVZpnM5wH6onx2zxrCGh6ZhS5761vfceENEdVE=";
    subPackages = "cmd/gaiad";
    buildInputs = [libwasmvm_2_1_5];
    inherit postInstall;
  };
in {
  inherit libwasmvm_2_1_5;
  inherit gaiad_21_0_1;
  inherit gaiad_22_2_0;
}
