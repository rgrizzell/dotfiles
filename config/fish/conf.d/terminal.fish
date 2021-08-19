# If any of these terminals are installed, the first one is used.
set term_pref urxvt terminator tilix gnome-terminal

for term in $term_pref
	if type -q $term	
		set -Ux TERMINAL (type -p $term)
		break
	end
end
