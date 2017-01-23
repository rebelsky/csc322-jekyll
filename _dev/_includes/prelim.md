{% assign counter = include.counter %}
{% if counter < 10 %} {% assign counter = counter | prepend: "0" %} {% endif %}
{% assign filepath = counter | prepend: "_prelim/prelim." | append: ".md" %}
{% assign info = site.prelim | where: "path", filepath | first %}
{% if info %}

{{ info.content }}

{% else %}

**Can't find daily preliminaries!**

info: {{ info }}

filepath: {{ filepath }}

{% endif %}
