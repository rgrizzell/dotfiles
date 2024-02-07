function whatprovides --description='Finds what package provides the given file'
	set os (awk '/^ID=(.*)/{split($0,a,"="); print a[2]}' /etc/os-release)
	switch $os
		case debian ubuntu pop
			dpkg -S $argv
		case fedora rhel centos
			dnf provides $argv
		case '*'
			echo "Unknown OS ID: $os"
	end
end
