#!/bin/bash
#==============================================================================
# August 2025
# https://github.com/MrToadie
#==============================================================================

# Virtuelle Maschinen (virsh)
running_vms=()
while read -r line; do
    [[ "$line" =~ ^[[:space:]]*Id[[:space:]]+Name ]] && continue
    vm_name=$(echo "$line" | awk '{print $2}')
    vm_state=$(echo "$line" | awk '{print $3}')
    [[ "$vm_state" == "laufend" ]] && running_vms+=("$vm_name")
done < <(virsh list --all)

# Docker
docker_containers=()
while read -r container; do
    docker_containers+=("$container")
done < <(docker ps --format "{{.Names}}")

# Kubernetes
k8s_pods=()
while read -r pod; do
    k8s_pods+=("$pod")
done < <(kubectl get pods --no-headers -o custom-columns=":metadata.name")

print_section() {
    local title="$1"
    shift
    local items=("$@")
    local count="${#items[@]}"

    echo -e "\n$title"
    for i in "${!items[@]}"; do
        if (( i == count - 5 )); then
            echo "╭╼ ${items[i]}"
        elif (( i == count - 1 )); then
            echo "╰─╼ ${items[i]}"
        else
            echo "├─╼ ${items[i]}"
        fi
    done
}
    
# Output
if [[ -z "${running_vms[@]}" ]]; then
    echo "No running VMs"
else
    print_section "╭╼ QEMU" "${running_vms[@]}"
fi


if [[ -z "${docker_containers[@]}" ]]; then
    echo "No running Containers"
else
    print_section "╭╼ CONTAINERS" "${docker_containers[@]}"
fi   

if [[ -z "${k8s_pods[@]}" ]]; then
    echo "No running Pods"
else
    print_section "╭╼ K8 PODs" "${k8s_pods[@]}"
fi   
