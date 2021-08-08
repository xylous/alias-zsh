function alias-zsh()
{
    if [[ -z "$@" ]]; then
        echo "alias-zsh: expected argument"
        return 1
    fi

    local aliases_dir="${ALIAS_ZSH_ALIAS_DIRECTORY}"

    if [[ "$1" == "use" ]]; then
        shift
        alias_zsh_use_directory "$1"
    fi

    if [[ -z "${ALIAS_ZSH_ALIAS_DIRECTORY}" ]]; then
        echo 'alias-zsh: run with `use <alias-directory>` first'
    fi

    if [[ "$1" == "load" ]]; then
        shift
        alias_zsh_load_aliases "${aliases_dir}" "$@"
    elif [[ "$1" == "ls" ]]; then
        alias_zsh_list_aliases "${aliases_dir}"
    fi
}

function alias_zsh_use_directory()
{
    if [[ -z "$1" ]]; then
        echo "alias-zsh: use: expected argument"
        return 1
    fi

    local fullpath="$(realpath "$1")"
    export ALIAS_ZSH_ALIAS_DIRECTORY="${fullpath}"
}

function alias_zsh_load_aliases()
{
    local aliases_dir="$1"
    shift

    if [[ "$1" == "all" ]]; then
        for alias_file in "${aliases_dir}"/*; do
            source "${alias_file}"
        done
    elif ! [[ -z "$@" ]]; then
        for alias_file in "$@"; do
            source "${aliases_dir}/${alias_file}.zsh"
        done
    else
        echo "alias-zsh: load: expected argument"
        return 1
    fi
}

function alias_zsh_list_aliases()
{
    local aliases_dir="$1"
    for alias_file in "${aliases_dir}"/*.zsh; do
        echo "$(basename ${alias_file%.*})"
    done
}
