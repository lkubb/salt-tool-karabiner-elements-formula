# vim: ft=sls

{#-
    Removes the Karabiner Elements package.
    Has a dependency on `tool_karabiner.config.clean`_.
#}

{%- set tplroot = tpldir.split("/")[0] %}
{%- set sls_config_clean = tplroot ~ ".config.clean" %}
{%- from tplroot ~ "/map.jinja" import mapdata as karabiner with context %}

include:
  - {{ sls_config_clean }}


Karabiner Elements is removed:
  pkg.removed:
    - name: {{ karabiner.lookup.pkg.name }}
    - require:
      - sls: {{ sls_config_clean }}
