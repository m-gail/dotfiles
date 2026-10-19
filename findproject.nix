{ lib, rustPlatform, makeWrapper, fzf, tmux, procps, src }:

rustPlatform.buildRustPackage {
  pname = "findproject";
  version = "unstable";
  inherit src;

  cargoLock.lockFile = "${src}/Cargo.lock";

  nativeBuildInputs = [ makeWrapper ];

  postInstall = ''
  mv $out/bin/findproject-rs $out/bin/findproject

  install -Dm755 $src/fp_tmux $out/bin/fp_tmux
  wrapProgram $out/bin/fp_tmux \
    --prefix PATH : ${lib.makeBinPath [ fzf tmux procps ]}:$out/bin
  '';

  meta.license = lib.licenses.gpl3;
}
