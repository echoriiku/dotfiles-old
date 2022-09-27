# if status is-interactive
#     # Commands to run in interactive sessions can go here
# end

# The following snippet is meant to be used like this in your fish config:
#
# if status is-interactive
#     # Configure auto-attach/exit to your likings (default is off).
    # set ZELLIJ_AUTO_ATTACH true
    # set ZELLIJ_AUTO_EXIT true
    # eval (zellij setup --generate-auto-start fish | string collect)
# end
# if not set -q ZELLIJ
#     if test "$ZELLIJ_AUTO_ATTACH" = "true"
#         zellij attach -c
#     else
#         zellij
#     end

#     if test "$ZELLIJ_AUTO_EXIT" = "true"
#         kill $fish_pid
#     end
# end


zoxide init fish | source
starship init fish | source
set fish_greeting
set EDITOR "hx"
set BROWSER "firefox"
export XDG_CONFIG_HOME=$HOME/.config
fish_add_path /home/riiku/.spicetify

##FUNCTIONS
#backup
function backup --argument filename
    cp $filename $filename.bak
end
#restore
function restore --argument file
    mv $file (echo $file | sed s/.bak//)
end
#mkdir-cd
function mkdir-cd
    mkdir -p -- $argv && cd -- $argv
end
#create-file
function create-file --argument target
    mkdir -p (dirname $target)
    touch $target
end
#eat
  function eat --argument dir
      for f in (find $dir -maxdepth 1 -not -path $dir)
          rsync --archive --remove-source-files --delete $f .
      end
      rmdir $dir
  end
#abbrs
    abbr -a bk   'backup'
    abbr -a re   'restore'
    abbr -a mc   'mkdir-cd'
    abbr -a cat  'bat'
    abbr -a dnfi 'sudo dnf install'
    abbr -a dnfr 'sudo dnf remove'
    abbr -a dnfs 'dnf search'
    abbr -a dnfu 'sudo dnf update'
    abbr -a flup 'flatpak update'
    abbr -a lg   'lazygit'
    abbr -a ls   'exa --color=always --group-directories-first --icons'
    abbr -a lsa  'exa --color=always --group-directories-first --icons -a'
    abbr -a ll   'exa --color=always --group-directories-first --icons -l'
    abbr -a lla  'exa --color=always --group-directories-first --icons -l -a'
    abbr -a rm   'trash'
    abbr -a q    'exit'
    abbr -a tm   'tmux'
    abbr -a zl   'zellij'
    abbr -a xp   'xplr'

#autostart fetch script
cutefetch $(printf '\t-k\n-b\n-p' | shuf -n 1) $(shuf -i 1-13 -n 1)
