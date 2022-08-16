function ssh-clean --wraps='rm ~/.ssh/sockets/' --description 'Cleans up all SSH client sockets'
    rm ~/.ssh/sockets/*
end
