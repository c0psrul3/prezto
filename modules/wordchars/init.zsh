bindkey "^H" backward-delete-char                                     # delete the character behind with ctrl+h
bindkey '^[OH' beginning-of-line                                      # change to start of line on START
bindkey '^[OF' end-of-line                                            # change to end of line on END
bindkey '^[[5~' up-line-or-history                                    # pgup, go up one line
bindkey '^[[6~' down-line-or-history                                  # pgdown, go down one line

### rather than to each word separated by a '/'. To make the behavior more like bash, you can evaluate this command:                                    
##export WORDCHARS=''       
### If you prefer, you can make WORDCHARS local to the definition of say, 
###  backword-word, so that kill-word still deletes an entire path.
##tcsh-backward-word() {    
##    local WORDCHARS="${WORDCHARS:s@/@}"
##      zle backward-word   
##}                         
##zle -N tcsh-backward-word 
##                          
## by default: export WORDCHARS='*?_-.[]~=/&;!#$%^(){}<>'
###  we take out the slash"/", period".", angle brackets"<>", dash here.
#export WORDCHARS='*?_[]~=&;!#$%^(){}'
###  above should skip included chars when scolling by word
#
### See: http://zshwiki.org/home/zle/bindkeys
##bindkey '^[[5D' emacs-backward-word                # Default configuration for scrolling word with Ctrl-leftarrow
##bindkey '^[[5C' emacs-forward-word                # Default configuration for scrolling word with Ctrl-rightarrow
#bindkey ';5D' emacs-backward-word                 # My xterm (KDE Konsole) was showing ";5D" and ";5C", so I just used them instead:
#bindkey ';5C' emacs-forward-word                 # My xterm (KDE Konsole) was showing ";5D" and ";5C", so I just used them instead:
##bindkey "\e\e[D" backward-word                    # on my urxvt it works with <alt>-<left>/-<right>
##bindkey "\e\e[C" forward-word                    # on my urxvt it works with <alt>-<left>/-<right>
###XTerm*vt100.Translations:       #override\n\
###Ctrl <KeyPress> Left   : string("\033[90~")  \n\
###Ctrl <KeyPress> Right  : string("\033[91~")  \n
#
#bindkey '^[[A' up-line-or-history
#bindkey '^[[B' down-line-or-history
#
#bindkey "^r" history-incremental-search-backward                      # search backwards with ctrl+r
#bindkey "^t" history-incremental-search-forward                       # search forward with ctrl+t
#
#bindkey ' ' magic-space                                               # do history expansion on space
#bindkey '^I' complete-word                                            # complete on tab, leave expansion to _expand
#
#bindkey    "^[[3~"          delete-char                               # delete one character behind the cursor on DEL
#bindkey    "^[3;5~"         delete-char                               # same
#
