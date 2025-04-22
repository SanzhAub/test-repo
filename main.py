import random
import time

curr_range = [x for x in range(2000000)]

TMP_FILE = "temp/mem.txt"
PERSISTENT_FILE = "persistent/"

def read_mem():
    f = open(TMP_FILE, "rt")
    result = f.read()
    f.close()
    return result

def write_mem(content):
    f = open(TMP_FILE, "wt")
    f.write(content)
    f.close()

def write_persistent(number, content):
    f = open(f"{PERSISTENT_FILE}{number}.txt", "at")
    f.write(content + " ")
    f.close()

write_mem("")

while True:
    time.sleep(10)
    mem = [int(n) for n in read_mem().split()]
    current_number = random.choice(curr_range)
    while current_number in mem:
        current_number = random.choice(curr_range)
    write_persistent(current_number % 16, str(current_number))
    mem.append(current_number)
    write_mem(" ".join([str(el) for el in mem]))    
