function tartar --wraps='tar' --description='Unarchive a compressed tarball'
    switch $argv
        case "*.gz"
            tar xzf $argv
        case "*.tgz"
            tar xzf $argv
        case "*.xz"
            tar xJf $argv
        case "*.txz"
            tar xJf $argv
        case '*'
            echo 'File unrecognized.'
    end
end
