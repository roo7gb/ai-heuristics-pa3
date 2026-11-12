{ pkgs, ... }: {

  # packages for development
  packages = [
    pkgs.vscodium # needed for jupyter REPL
    pkgs.jupyter
  ];

  # add python deps
  languages.python = {
    enable = true;
    venv.enable = true;

    # use uv for package mgmt
    uv = {
      enable = true;

      # work across users
      sync.enable = true;
    };
  };

  # launch vscodium without having to enter dev shell
  tasks = {
    "pa3:codium".exec = "codium .";
  };
}
