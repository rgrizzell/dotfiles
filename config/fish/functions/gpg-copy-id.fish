function gpg-copy-id --wraps='ssh-copy-id -i $PUBKEY $argv' --description "Copies a GPG/SSH key to a remote SSH"
	if command -sq gpg-agent
		# Create pubkey file
		set PUBKEY (mktemp --suffix=".pub")
		ssh-add -L | sed "s/cardno:.*/gpg:$KEYID/g" > $PUBKEY

		# Copy pubkey to remote host
		ssh-copy-id -i $PUBKEY $argv
	
		# Clean up pubkey
		rm $PUBKEY
	else
		echo "Can't get GPG key: GPG Agent not installed"
	end
end
