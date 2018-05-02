# pip install --user virtualenv
# python -m virtualenv venv
python3 -m venv venv
if [ -d "venv" ]; then
    . venv/bin/activate
    pip install pyobjc-core pyobjc
    pip install Pillow
    pip install pyautogui
    python screenwaker.py
    deactivate
else
    echo cannot find venv
fi

