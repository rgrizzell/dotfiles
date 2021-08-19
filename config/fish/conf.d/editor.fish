# If any of these editors are installed, the first one is used.
set edit_pref vim nano vi

for edit in $edit_pref
	if type -q $edit
		set -Ux EDITOR (type -p $edit)
		break
	end
end
