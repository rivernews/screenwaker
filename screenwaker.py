import datetime, threading, time, pyautogui

# pyautogui dependencises on Mac
# Pillow pyobjc-core pyobjc

width, height = pyautogui.size()

def foo():
    while True:
      print('invoked!')
      pyautogui.moveTo(width/2, height-40)
      pyautogui.moveRel(10, 10)
      time.sleep(5)

foo()
# timerThread = threading.Thread(target=foo)
# timerThread.daemon = True
# timerThread.start()
