function dnstwist --wraps='docker run --rm -ti jrottenberg/dnstwist' --description 'dnstwist docker'
    docker run --rm -ti jrottenberg/dnstwist $argv
end
