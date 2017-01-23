{% if include.number %}
{% assign number = include.number %}
{% else %}
{% assign number = page.number %}
{% endif %}
{% if include.held %}
{% assign held = include.held %}
{% else %}
{% assign held = page.held %}
{% endif %}
{% assign num = number | plus: '0' %}
{% if num < 10 %}{% assign number = number | prepend: '0' %}{% endif %}
{% assign index = num | plus: '-1' %}
{% assign class = site.data.classes[index] %}
# Class {{ num }}: {{ class.topic }}

Held: {{ held | date: '%A, %-d %B %Y' }}

{% if class.summary %}
*{{ class.summary }}*
{% endif %}

## Preliminaries

{% if class.subjects %}
### Overview

{% for item in class.subjects %}* {{ item }}
{% endfor %}
{% endif %}

{% if class.handouts %}
### Handouts

{% for item in class.handouts%}
* {{ item }}
{% endfor %}
{% endif %}

### Related Pages

* [Eboard {{ num }}](../eboards/eboard.{{ number }}.html) ([Source](../eboards/eboard.{{ number }}.md))
{% for item in class.reading %}
  {% assign reading = site.readings | where: "url", item | first %}
* Reading: [{{ reading.title }}]({{ reading.url | prepend: site.baseurl }})
{% endfor %}
{% for item in class.lab %}
  {% assign lab = site.labs | where: "url", item | first %}
* Lab: [{{ lab.title }}]({{ lab.url | prepend: site.baseurl }})
{% endfor %}
{% capture fname %}_related/related.{{ number }}.md{% endcapture %}
{% assign info = site.related | where: "path", fname | first %}
{% if info %}
{{ info.content }}
{% endif %}

## Updates

{% include prelim.md counter=num %}

{% if class.abbrev %}
  {% capture fname %}_bodies/{{ class.abbrev }}.md{% endcapture %}
  {% assign info = site.bodies | where: "path", fname | first %}
  {% if info %}
{{ info.content }}
  {% endif %}
{% endif %}
