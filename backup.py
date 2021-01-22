import os

fileordirectory = input("is it a file or a directory ")

if fileordirectory == "file":
    path = input("provide the path to the file please ")
    os.system(f"scp {path} ubuntu@10.0.0.145:/home/ubuntu")
elif fileordirectory == "directory":
    path = input("provide the path to the directory ")
    os.system(f"scp -r {path} ubuntu@10.0.0.145:/home/ubuntu")