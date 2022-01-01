# Defined in - @ line 1
function iotop --wraps='iotop -aod 0.5' --description 'alias iotop=iotop -aod 0.5'
 command iotop -aod 0.5 $argv;
end
