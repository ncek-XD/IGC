#!/data/data/com.termux/files/usr/bin/bash
echo -e "\n[ installer tool for IGC -by NCEK DEV ]\n"
echo -e "\n[wait] sedang menjalankan pkg update and pkg upgrade (📦) ...\n"
pkg update -y && pkg upgrade -y
echo -e "\n[info] sedang menginstall package dan dependencies ...\n"
pkg install clang python binutils libffi openssl libsodium git -y
echo -e "\n[info] cloning github repository -> 'IGC' ...\n"
git clone https://github.com/ncek-XD/IGC && cd IGC
echo -e "\n[info] proses install module and requirements ...\n"
pip install wheel && pip install -r requirements.txt
echo -e "\n[done] running 'run.py' to open IGC ...\n"
chmod +x igc
./igc
