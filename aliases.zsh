#
# Aliases
#
alias mv='nocorrect mv -v'
alias cp='nocorrect cp -v'
alias rm='nocorrect rm -v'
alias mkdir='nocorrect mkdir'
alias man='nocorrect man'
alias find='noglob find'
alias ls='ls -FG --color'
alias ll='ls -l'
alias la='ls -a'
alias li='ls -ial'
alias lsd='ls -ld *(-/DN)'
alias lsa='ls -ld .*'
alias du='du -h'
alias df='df -h'
alias x='startx'
alias ps='ps'
alias cal='cal'
alias clr='find . -regex .*~ | xargs rm -f'
alias mkinst='sudo make install'
alias sc='less /usr/X11R6/lib/X11/rgb.txt'
alias mnt='sudo mount'
alias mntl='sudo mount -o loop'
alias umnt='sudo umount'
alias cfg='./configure --prefix=/usr --sysconfdir=/etc'
alias u2d='perl -pi -e "s/\\n/\\r\\n/;"'
alias d2u='perl -pi -e "s/\\r\\n/\\n/;"'
alias slog='sudo tail -f /var/log/messages | ccze -A -p syslog'
alias mlog='sudo tail -f /var/log/maillog | ccze -A -p syslog'
alias pst='pstree -G | less'
alias h=history
alias ispell='ispell -d russian'
alias -g M='|more'
alias -g L='|less'
alias -g H='|head'
alias -g T='|tail'
alias -g N='2>/dev/null'
alias v='mvim'
alias gv='gvim'
alias d='dirs -v'
alias cvu="cvs update"
alias cvc="cvs commit"
alias svu="svn update"
alias svs="svn status"
alias svc="svn commit"
alias ssync="rsync --rsh=ssh"
alias ssyncr="rsync --rsh=ssh --recursive --verbose --progress"
alias grab="sudo chown ${USER} --recursive"
alias hmakej="hilite make -j"
alias clean="rm *~"
alias emacs="emacs -nw"
alias grep='grep --color=auto'
alias myracksh='USERACK=1 irb -r "racksh/irb"'
alias pu="git pull"
alias puh="git push origin HEAD"
alias pupuh="pu && puh"
alias pupud="pu && puh && cap staging deploy"
alias st="git status"
alias co="git checkout"
alias ci="git commit -m"
alias cim="git commit -a -m"
alias ad="git add"
alias di="git diff"
alias mg="git merge"
alias cr="git push origin "
alias orb="sudo orbited -c config/vendor/orbited/orbited.cfg"
alias rabbit1="sudo rm -rf /opt/local/var/lib/rabbitmq/mnesia/rabbit"
alias rabbit2="cd /opt/local/etc/LaunchDaemons/org.macports.rabbitmq-server"
alias rabbit3="sudo launchctl stop org.macports.rabbitmq-server"
alias rabbit4="sudo launchctl start org.macports.rabbitmq-server"
alias rab="rabbit1 rabbit2 rabbit3 rabbit4"
alias res="LOGGING=true QUEUE=* rvm-shell -c 'bundle exec rake resque:run'"
alias red="redis-server"
alias mine="pivotal stories --mine"
alias gsc="~/Sites/gsc/"
alias nginx_start="sudo launchctl load /Library/LaunchDaemons/org.macports.nginx.plist"
alias nginx_stop="sudo launchctl unload /Library/LaunchDaemons/org.macports.nginx.plist"
alias nginx_restart="nginx_stop; nginx_start;"
alias socketio="node ~/Sites/socketio/app.js"
alias haproxy_start="sudo /usr/local/sbin/haproxy -f /etc/haproxy.cfg"
alias pci="rvm 1.9.2-p180 do pivotal commit -m"
alias pf="rvm 1.9.2-p180 do pivotal finish"
alias ph="rvm 1.9.2-p180 do pivotal help"
alias pl="rvm 1.9.2-p180 do pivotal stories"
alias pup="rvm 1.9.2-p180 do pivotal update"
alias tests="RAILS_ENV=test bundle exec rake jasmine"


#
# read additional aliases
#
if [ -d $ZSH_MYCONFDIR/aliases.d/ ]; then
    load_files $ZSH_MYCONFDIR/aliases.d
    case "$PKG_MANAGER" in
    port)
	    load_files $ZSH_MYCONFDIR/aliases.d/macports
	    ;;
    fink)
	    load_files $ZSH_MYCONFDIR/aliases.d/fink
	    ;;
    brew)
	    load_files $ZSH_MYCONFDIR/aliases.d/brew
	    ;;
    esac
fi

