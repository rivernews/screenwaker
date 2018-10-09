is_python_three_installed=$(eval command -v python77)

function activate_install_and_run {
    . ./venv/bin/activate
    pip install pyobjc-core pyobjc
    pip install Pillow
    pip install pyautogui

    if [[ ${is_python_three_installed} = "" ]]; then
        python screenwaker.py
    else
        python3 screenwaker.py
    fi
    deactivate
}

if [ -d "venv" ]; then
    :
else
    if [[ ${is_python_three_installed} = "" ]]; then
        echo "INFO: python3 not installed, will try to use python2 and install virtualenv..."
        pip install --user virtualenv
        python -m virtualenv venv
    else
        echo "INFO: found python3."
        python3 -m venv venv
    fi
fi

activate_install_and_run
