function terraform-decrypt --wraps='terraform output -raw $argv' --description 'Pulls a secret value from the Terraform state file and then decrypts it'
	terraform output -raw $argv | base64 --decode | gpg --decrypt
end
