packages:
{% if grains['os'] == 'CentOS Stream' %}
  # Common packages for CentOS Stream
  net-tools: net-tools
  tree: tree
{% endif %}

{% if grains['os'] == 'Rocky' %}
  # Common packages for Rocky
  curl: curl
  wget: wget
  vim-enhanced: vim-enhanced
  htop: htop
  epel-release: epel-release
  tree: tree
  tar: tar
{% endif %}


{% if grains ['os'] == 'Windows' %}
  # Common packages for Windows
  chromium: chromium
  notepadplusplus: notepadplusplus
{% endif %}