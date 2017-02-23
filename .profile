if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/yonits/.sdkman"
[[ -s "/Users/yonits/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/yonits/.sdkman/bin/sdkman-init.sh"
