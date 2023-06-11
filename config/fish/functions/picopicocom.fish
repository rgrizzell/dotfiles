function picopicocom --wraps="picocom --quiet --baud 115200 --flow h" --description="Auto-reconnect picocom to serial port"
    while true
        echo "Connecting"
        picocom --quiet --baud 115200 --flow h $argv
        echo "Reconnecting in 3 seconds..."
        echo "Press Control-C to cancel"
        sleep 3
    end
end
