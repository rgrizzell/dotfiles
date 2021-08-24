function workspace --wraps='mktemp -d' --description='Create a temporary directory'
  set -Ux WORKSPACE (mktemp -d)
  echo "\$WORKSPACE: $WORKSPACE"
end
