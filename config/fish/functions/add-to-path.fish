function add-to-path --description 'Persistently prepends paths to your PATH'
    contains -- $argv $fish_user_paths
    or set --global --export fish_user_paths $fish_user_paths $argv
    echo "Updated PATH: $PATH"
end
