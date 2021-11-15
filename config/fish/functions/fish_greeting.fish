function fish_greeting
	function git
		/usr/bin/git -C $DOTFILES $argv
	end

	set -l changes (git status -s | wc -l)
	if test $changes -gt 0
		echo "There are $changes dotfile changes pending."
	else
		echo "Checking for dotfile updates..."
		git fetch -q
		set -l files (git diff --name-only HEAD origin/main)
		if test $files -gt 0
			git pull -q
			$DOTFILES/install
			read -n 1 -p '\nPress any key to continue'
		end
		clear
	end
	functions --erase git
end
