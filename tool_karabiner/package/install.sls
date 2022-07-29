# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as karabiner with context %}


Karabiner Elements is installed:
  pkg.installed:
    - name: {{ karabiner.lookup.pkg.name }}

Karabiner Elements setup is completed:
  test.nop:
    - name: Hooray, Karabiner Elements setup has finished.
    - require:
      - pkg: {{ karabiner.lookup.pkg.name }}
