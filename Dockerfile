FROM base
RUN (apt-get install -y libgmp3-dev libsigsegv-dev openssl libssl-dev libncurses5-dev git make)
RUN (git clone https://github.com/urbit/urbit.git)
RUN (cd /urbit && export URBIT_HOME=/urbit/urb && make)
ADD . /
RUN (chmod +x /start)
ENTRYPOINT ["/bin/bash"]
CMD ["-c", "/start"]
