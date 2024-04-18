FROM alpine:3

WORKDIR /front

RUN [ "apk", "update", "upgrade" ]
RUN [ "apk", "add", "curl", "git", "zsh", "nodejs", "npm" ]
RUN [ "npm", "install", "-g", "live-server" ]
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y

SHELL [ "/bin/zsh" ]

ENTRYPOINT [ "live-server" ]