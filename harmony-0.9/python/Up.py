import threading

count = 0
done = [ False, False ]

def incrementer(self):
    global count
    count = count + 1
    done[self] = True

def main():
    while not all(done):
        pass
    assert count == 2, count
    print("Done")

def spawn(f, a):
    threading.Thread(target=f, args=a).start()

spawn(incrementer, (0,))
spawn(incrementer, (1,))
spawn(main, ())