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

function fish_greeting
    fortune -a
end

function cf
    ~/tools/cloudflared access login https://canopy.centurioninfosec.team > /dev/null
    set -x CANOPY_CF_TOKEN (~/tools/cloudflared access token -app=https://canopy.centurioninfosec.team)
end

function musl-build
  docker run \
    -v cargo-cache:/root/.cargo/registry \
    -v "$PWD:/volume" \
    --rm -it clux/muslrust cargo build --release
end

# Aliases
abbr -a autochrome ~/.local/autochrome/chrome --remote-debugging-port=9222
abbr -a ssh-kali ssh root@128.199.151.198
