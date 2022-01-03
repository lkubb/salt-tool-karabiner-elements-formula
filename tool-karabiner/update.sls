{%- from 'tool-karabiner/map.jinja' import karabiner %}

{%- if karabiner.users | selectattr('dotconfig', 'defined') | selectattr('dotconfig') %}
include:
  - .configsync
{%- endif %}
