function benchmark --description='Run a command and measure the time it takes.'

# TODO: Add CSV support.
  set report_file (mktemp)
  set runs $argv[1]
  
  for i in runs
	set duration (time $argv[:2]) 1>/dev/null
    echo $duration > $report_file
  end


  
end
