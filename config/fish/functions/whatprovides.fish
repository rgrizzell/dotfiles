# Defined in - @ line 1
function whatprovides --wraps='dpkg -S $argv' --description='Finds what package provides the given file'
    dpkg -S $argv
end
