main() {
    sudo apt update
    sudo apt install git pip -y
    git clone https://github.com/MhdiTaheri/sms-bomber.git
    (cd sms-bomber && python3 main.py)
}

main