# GPG Key
set -Ux KEYID F7F6C134977499ED
set -Ux FINGERPRINT 29D193156276DFC178E8BDF3F7F6C134977499ED

# GPG Agent
if status is-interactive
    if command -sq gpg-agent
        set -x GPG_TTY (tty)
        set -x SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
        gpgconf --launch gpg-agent
    end
end
