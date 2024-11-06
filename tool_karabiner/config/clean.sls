# vim: ft=sls

{#-
    Removes the configuration of the Karabiner Elements package.
#}

{%- set tplroot = tpldir.split("/")[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as karabiner with context %}


{%- for user in karabiner.users %}

Karabiner Elements config file is cleaned for user '{{ user.name }}':
  file.absent:
    - name: {{ user["_karabiner"].conffile }}

Karabiner Elements config dir is absent for user '{{ user.name }}':
  file.absent:
    - name: {{ user["_karabiner"].confdir }}
{%- endfor %}
