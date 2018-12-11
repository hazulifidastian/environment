# name: L
function _git_branch_name
  echo (command git symbolic-ref HEAD ^/dev/null | sed -e 's|^refs/heads/||')
end

function _is_git_dirty
  echo (command git status -s --ignore-submodules=dirty ^/dev/null)
end

function fish_prompt
  set -l blue (set_color blue)
  set -l green (set_color green)
  set -l red (set_color red)
  set -l normal (set_color normal)

  set -l arrow $red"λ"
  set -l cwd $blue(basename (prompt_pwd))
  set -l cwd $blue(pwd | sed "s:^$HOME:~:")

  if [ (_git_branch_name) ]
    set git_info $green(_git_branch_name)
    set git_info $normal" on "$git_info

    if [ (_is_git_dirty) ]
      set -l dirty "*"
      set git_info "$git_info$dirty"
    end
  end

  echo -n -s $cwd $git_info $normal
  echo -e ''
  echo -e -n -s $arrow ' '
end
