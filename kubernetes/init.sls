kubernetes:
  kubeadm:
    version: '1.23.4'
  kubectl:
    version: '1.23.4'
  kubelet:
    version: '1.23.4'
  crio:
    version: '1.23.1'
  firewalld:
    ports:
{% if 'kubernetes_master' in grains ['roles'] %}
      - 6443/tcp
      - 2379-2380/tcp
      - 10250-10252/tcp
      - 10255/tcp
{% elif 'kubernetes_worker' in grains ['roles'] %}
      - 10250/tcp
      - 10255/tcp
      - 30000-32767/tcp
{% endif %}
  nfs_storage:
    server: '192.168.110.245'
    server_directory: '/mnt/pool2/kubernetes-data/'
    local_directory: '/mnt/pool2/kubernetes-data/'
    options: 'defaults'
    dump: '0'
    fcsk: '0'