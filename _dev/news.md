---
title: Class news
section: top-level
---
Class news
==========

*This news is copied from the daily outlines.*

{% assign dates = "" | split: "|" %}
{% assign counter = 0 %}
{% for week_data in site.data.dates %}
  {% if week_data.days %}
    {% assign newdates = week_data.days | join: '|' %}
    {% assign dates = dates | join: '|' | append: '|' | append: newdates | split: '|' %}
  {% endif %}
{% endfor %}
{% assign prelim = site.prelim | sort: 'title' | reverse %}

{% for item in prelim %}
  {% assign counter = counter | plus: '1' %}
  {% assign held = dates[counter] %}

## Class {{ counter }} ({{ held | date: '%A, %-d %B %Y' }})

{% if counter < 10 %}
{% capture fname %}prelim.0{{ counter }}.md{% endcapture %}
{% else %}
{% capture fname %}prelim.{{ counter }}.md{% endcapture %}
{% endif %}

{% include prelim.md counter=counter %}

<hr/>
{% endfor %}
