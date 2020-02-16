# pyenv setup
set PATH ~/.pyenv/bin $PATH
status --is-interactive; and source (pyenv init -|psub)
status --is-interactive; and source (pyenv virtualenv-init -|psub)

# Rust setup
set PATH ~/.cargo/bin $PATH
set -x RUST_SRC_PATH (rustc --print sysroot)/lib/rustlib/src/rust/src

# Others
set -x PYTHONDONTWRITEBYTECODE 1

# Functions
function ara
    if count $argv > /dev/null
        7z a -t7Z $argv[1].7z $argv[1]
    else
        echo "Error: Supply file to archive"
    end
end

# Aliases
abbr -a autochrome ~/.local/autochrome/chrome --remote-debugging-port=9222
abbr -a ssh-kali ssh root@128.199.151.198
