function iotop --wraps='iotop -aod 0.5' --description 'Runs iotop with default options'
    command iotop -aod 0.5 $argv
end
