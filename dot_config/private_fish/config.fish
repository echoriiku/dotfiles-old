if status is-interactive
    # Commands to run in interactive sessions can go here
end

zoxide init fish | source
set fish_greeting
set EDITOR "hx"
set BROWSER "firefox"
    export XDG_CONFIG_HOME=$HOME/.config

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
    abbr -a ls   'exa --color=always --group-directories-first --icons'
    abbr -a lsa  'exa --color=always --group-directories-first --icons -a'
    abbr -a ll   'exa --color=always --group-directories-first --icons -l'
    abbr -a lla  'exa --color=always --group-directories-first --icons -l -a'
    abbr -a rm   'trash'
    abbr -a q    'exit'
#start
cutefetch $(printf '\t-k\n-b\n-p' | shuf -n 1) $(shuf -i 1-13 -n 1)
