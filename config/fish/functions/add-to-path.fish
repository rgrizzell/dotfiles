function add-to-path --description 'Persistently prepends paths to your PATH'
    if set -l index (contains -i $argv $PATH)
        echo "$argv already in PATH"
    else
        set --universal --export fish_user_paths $fish_user_paths $argv
        echo "Updated PATH: $PATH"
    end
end
