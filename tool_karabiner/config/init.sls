# vim: ft=sls

{#-
    Manages the Karabiner Elements package configuration by

    * recursively syncing from a dotfiles repo

    Has a dependency on `tool_karabiner.package`_.
#}

include:
  - .sync
