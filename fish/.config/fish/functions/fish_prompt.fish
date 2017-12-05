function fish_prompt
    fishline -s 0 -l USER PWD WRITE SPACE
end

function fish_right_prompt
    fishline -s $status -r SIGSTATUS GIT
end
