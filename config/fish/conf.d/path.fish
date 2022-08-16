# Set PATH with extra directories
set extra_paths ~/bin ~/.local/bin

for src in $extra_paths
    if not contains $src $fish_user_paths
        set -a fish_user_paths $fish_user_paths $src
    end
end
