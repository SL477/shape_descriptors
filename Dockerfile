FROM python:3.9-slim-buster

# install CUDA version of PyTorch
RUN python3 -m pip install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu113

# Need to then run apt-get update, then apt install make, then apt install zsh, then apt install git, apt install unzip
# I commented out the md5sum on the make file as i couldn't get it to work

# using https://stackoverflow.com/questions/54816712/md5sum-complaining-about-carriage-return-characters I fixed the md5sum issues