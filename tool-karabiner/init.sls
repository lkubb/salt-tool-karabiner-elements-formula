{%- from 'tool-karabiner/map.jinja' import karabiner -%}

include:
  - .package
{%- if karabiner.users | selectattr('dotconfig', 'defined') | selectattr('dotconfig') %}
  - .configsync
{%- endif %}
