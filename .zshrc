# syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# powerlevel 9k is a custom prompt program
POWERLEVEL9K_MODE='nerdfont-complete'
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs dir_writable)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs nodeenv go_version)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
#POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
#POWERLEVEL9K_SHORTEN_DELIMITER=""
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme

# turn on colors for ls
alias ls='ls -G'

alias staging2dap='ssh -i ~/.ssh/id_rsa ec2-user@54.188.192.62';
alias staging2obj='ssh -i ~/.ssh/id_rsa ec2-user@54.245.55.8';
alias staging2services='ssh -i ~/.ssh/id_rsa ec2-user@34.220.42.87';

alias stagingdap='ssh ec2-user@52.34.61.14';
alias stagingobj='ssh ec2-user@52.32.20.6';
alias stagingservices='ssh ec2-user@34.222.234.220';

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# ALIASES
alias ls='ls -GFh'
alias newnote='bash ~/new_note.sh'
export notes="/Users/cblevins/Documents/Notes/"

# diff helper
alias diff_dev_feature='bash ~/diff_dev_feature.sh'

# start chrome with flag to allow cache clear
alias chrome='open -a "Google Chrome" --args --enable-net-benchmarking'

# end ALIASES

# git auto complete
#zstyle ':completion:*:*:git:*' script ~/.completion/git/git-completion.sh

# services
export services="/Users/cblevins/docker/repos/audioeye_services"
export userapi="/Users/cblevins/docker/repos/audioeye_userapi"
export dap="/Users/cblevins/docker/repos/audioeye_dap"
export objmod="/Users/cblevins/docker/repos/audioeye_obj"
export objcore="/Users/cblevins/docker/repos/obj"
export voice="/Users/cblevins/docker/repos/audioeye_voiceserver"
export iosvoice="/Users/cblevins/App-Dev/voiceios"
export voiceapp="/Users/cblevins/docker/repos/voiceapp"
export scanlogs="/Users/cblevins/docker/repos/audioeye_scanLogs"
export remext="/Users/cblevins/docker/repos/audioeye_remediation_chrome_ext/"
export gofiles="/go/src/git.audioeye.com/"

# Aliases for common commands
alias run_android_device='/Users/cblevins/Library/Android/sdk/tools/emulator -avd Nexus_5X_API_23_React_Native'

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

##
# Your previous /Users/cblevins/.bash_profile file was backed up as /Users/cblevins/.bash_profile.macports-saved_2018-03-19_at_16:32:14
##

# MacPorts Installer addition on 2018-03-19_at_16:32:14: adding an appropriate PATH variable for use with MacPorts.
export PATH="/usr/local/go/bin:/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


export PATH=/Users/cblevins/go/bin:$PATH

export GOPATH="/Users/cblevins/go:/Users/cblevins/docker/repos/audioeye_userapi/"
export GOBIN=$GOPATH/bin

# many things like neovim are stored here
export PATH=/usr/local/bin:$PATH
