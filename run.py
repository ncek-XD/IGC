import os, platform, igc as ncekdev
from os import path,system
from platform import uname
arch=uname().machine.lower()
os.system('git pull')
if 'aarch' in arch:
	ncekdev.login_kamu()
else:
	ncekdev.login_kamu()
