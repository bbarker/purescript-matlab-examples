
```
export BDIR=`pwd`
nix-shell ci.nix
cd ~/workspace/COBRAContainers/nix/shells/MATLAB && nix-shell

spago build --purs-args "-g corefn" && cd $HOME/workspace/purescript-dynlangs && stack --no-nix-pure exec psmatlab --cwd $BDIR; cd $BDIR
```
