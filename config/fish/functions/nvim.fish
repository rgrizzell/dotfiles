if command -q nvim;
	function vi --wraps nvim --description 'alias vi="nvim"'; nvim $argv; end
	function vim --wraps nvim --description 'alias vim="nvim"'; nvim $argv; end
end
