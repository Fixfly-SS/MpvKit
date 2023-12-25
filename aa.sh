while IFS= read -r line; do
    # 提取路径和 URL 信息
    if [[ $line =~ \[submodule[[:space:]]"(.*)"\] ]]; then
        path=${BASH_REMATCH[1]}
    elif [[ $line =~ [[:space:]]*path[[:space:]]*=[[:space:]]*(.*) ]]; then
        path_value=${BASH_REMATCH[1]}
    elif [[ $line =~ [[:space:]]*url[[:space:]]*=[[:space:]]*(.*) ]]; then
        url=${BASH_REMATCH[1]}
        # 使用 path 和 url 添加子模块
        git submodule add "$url" "$path_value"
    fi
done < .gitmodules
