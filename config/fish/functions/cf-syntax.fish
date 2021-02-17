function cf-syntax --description="Perform a check of a CFEngine policy"
	for file in $argv
		if cf-promises -f ./$file
			echo "$file: good"
		end
	end
end
