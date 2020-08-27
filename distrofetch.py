import os
import distro
print("Shell  " + os.environ["SHELL"])
print("WM/DE  " + os.environ["DESKTOP_SESSION"])
print("Distro  " + distro.linux_distribution()[0])