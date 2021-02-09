function fish_greeting
	set -l changes (git -C ~/.dotfiles status -s | wc -l)
	if test $changes -gt 0
		echo "There are $changes dotfile changes pending."
	end
end
