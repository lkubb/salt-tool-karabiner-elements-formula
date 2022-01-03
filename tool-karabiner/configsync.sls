{%- from 'tool-karabiner/map.jinja' import karabiner -%}

{%- for user in karabiner.users | selectattr('dotconfig', 'defined') | selectattr('dotconfig') %}
Karabiner Elements configuration is synced for user '{{ user.name }}':
  file.recurse:
    - name: {{ user._karabiner.confdir }}
    - source:
      - salt://dotconfig/{{ user.name }}/karabiner
      - salt://dotconfig/karabiner
    - context:
        user: {{ user }}
    - template: jinja
    - user: {{ user.name }}
    - group: {{ user.group }}
    - file_mode: keep
    - dir_mode: '0700'
    - makedirs: True
{%- endfor %}
