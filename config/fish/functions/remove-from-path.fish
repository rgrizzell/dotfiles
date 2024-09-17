function remove-from-path --description="Removes a given path from PATH"
    if set -l index (contains -i $argv $PATH)
        set --erase --global fish_user_paths[$index]
        echo "Updated PATH"
        echo $PATH
    else
        echo "$argv not found in PATH"
        echo $PATH
    end
end
