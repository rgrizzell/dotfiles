function fish_greeting
	set -l changes (git -C $DOTFILES status -s | wc -l)
	if test $changes -gt 0
		echo "There are $changes dotfile changes pending."
	else
		git -C $DOTFILES pull -q
	end
end
