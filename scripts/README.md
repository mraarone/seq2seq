# Use SSH (ssh-agent) from WSL 2 to docker container

Run dockerfiles/Dockerfile.devenv on your desktop using build.sh and run.sh.

## Set up your environment

I created my own process that doesn't require other software that works with Windows Docker Desktop 4.11.1 (84025), and Ubuntu 20.04.

1.  [WINDOWS       ] Generate your GitHub SSH keys
2.  [WINDOWS       ] Copy them to GitHub in your account Settings->SSH and GPG Keys
3.  [WINDOWS       ] Open WSL 2, Ubuntu 20.04, Bash terminal
4.  [WSL BASH      ] Copy the keys from /mnt/c/path/id_ed25519 to ~/.ssh
5.  [WSL BASH      ] Run eval $(ssh-agent -s)
6.  [WSL BASH      ] Run ssh-add
7.  [WINDOWS VSCODE] You may update your devcontainer.json's PostStartupCommand attribute to run the two above commands upon startup.
8.  [DOCKER DEVENV ] docker run -it --rm \
                             -v $SSH_AUTH_SOCK:$SSH_AUTH_SOCK \
                             -e SSH_AUTH_SOCK=$SSH_AUTH_SOCK \
                             mraarone/pytorch-devenv:latest
9.  [DOCKER DEVENV ] mkdir ~/.ssh
10. [DOCKER DEVENV ] ssh-keyscan github.com >> ~/.ssh/known_hosts
11. [DOCKER DEVENV ] git clone git@github.com:mraarone/seq2seq.git

## References

* https://stackoverflow.com/questions/67178239/ssh-forwarding-using-wsl2-and-vs-code-containers-on-windows
* https://github.com/microsoft/vscode-remote-release/issues/2925#issuecomment-652558889
* https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
* https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account
