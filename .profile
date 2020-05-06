if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/yonits/.sdkman"
[[ -s "/Users/yonits/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/yonits/.sdkman/bin/sdkman-init.sh"

# Setting PATH for Python 3.8
# The original version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.8/bin:${PATH}"
export PATH
