with import <nixpkgs> {};
with dockerTools;

let
  ubuntu = pullImage {
    imageName = "ubuntu";
    finalImageTag = "18.04";
    imageDigest = "sha256:29934af957c53004d7fb6340139880d23fb1952505a15d69a03af0d1418878cb";
    os = "linux";
    arch = "amd64";
    sha256 = "0yy24sjrvrxh3x0j0ha2izysqzxad6gp204ckikijw1dnw1hk519";
  };

  ijavascript = callPackage ./ijavascript {};

in
    buildImage {
      name = "nix-docker-issue";
      contents = ijavascript.ijavascript;
      fromImage = ubuntu;
      tag = "latest";
    }
