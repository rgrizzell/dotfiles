function testssl --wraps='docker run --rm -ti drwetter/testssl.sh' --description 'testssl.sh docker'
    docker run --rm -ti drwetter/testssl.sh $argv
end
