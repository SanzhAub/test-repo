python3 inf.py > program.log 2>&1 &

echo $! > program.pid
echo "Programm is running (PID: $(cat program.pid))"
tail -f program.log
