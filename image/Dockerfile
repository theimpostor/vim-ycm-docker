FROM buildpack-deps:xenial

# ARG UID
# ARG GID

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        cmake \
        golang \
        nodejs \
        nodejs-legacy \
        npm \
        python3-dev \
        python-dev \
        vim \
    && rm -rf /var/lib/apt/lists/* \
    && npm install -g typescript

#       mono-complete \
#       astyle \
#       libbz2-dev \
#       libffi-dev \
#       libncurses5-dev \
#       libncursesw5-dev \
#       libreadline-dev \
#       libsqlite3-dev \
#       libssl-dev \
#       llvm \
#       ninja-build \

# create user
# RUN \
#     groupadd -g $GID vim && \
#     useradd -ms /bin/bash -l -u $UID -g $GID vim

# RUN useradd -mlU dvim

# USER dvim

# add .vimrc
COPY .vimrc /root/.vimrc

# clone vundle
# run vim command to install plugins
# run ycmd build
#   c#: --omnisharp-completer
RUN git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim \
    && vim +PluginInstall +qall \
    && cd ~/.vim/bundle/YouCompleteMe \
    && ./install.py --clang-completer --gocode-completer --tern-completer

ENTRYPOINT [ "/usr/bin/vim" ]
