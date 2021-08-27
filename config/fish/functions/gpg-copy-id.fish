function gpg-copy-id --wraps='ssh-copy-id -i $PUBKEY $argv' --description "Copies a GPG/SSH key to a remote SSH"
	if command -sq gpg-agent
		ssh-copy-id -i ~/.ssh/id_rsa_gpg.pub $argv
	else
		echo "GPG Agent not installed"
	end
end
