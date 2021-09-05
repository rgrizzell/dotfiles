# Defined in - @ line 1
function gpg-update --wraps='gpg-connect-agent' --description 'Updates GPG key stubs to current YubiKey'
  gpg-connect-agent "scd serialno" "learn --force" /bye
end
