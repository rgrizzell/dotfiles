# Defined in - @ line 1
function psgrep --wraps='ps aux | grep -i $arvg | grep -v grep' --description 'alias ps aux | grep -i $arvg | grep -v grep'
  ps aux | grep -i $argv | grep -v grep;
end
