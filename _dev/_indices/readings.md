---
title: Readings
permalink: /readings/
---
# {{ page.title }}

The following readings are required, and should be completed at 8:00pm on
the evening before class on the date listed.

<dl>
  {% assign readings = site.readings | sort: 'due' %}
  {% for reading in readings %}
    {% if reading.link %}
      {% if reading.due %}
        <dt>{% include schedule_item.html item=reading show-due-time=false show-subtitle=true %}</dt>
        <dd>
          <ul class="list-inline">
            {% if reading.assigned %}
              <li>Assigned {{ reading.assigned | date: '%A, %-d %B %Y' }}</li>
            {% endif %}
            {% if reading.due %}
              <li>Due {{ reading.due | date: '%A, %-d %B %Y' }}{% if reading.due-time %} <i>(before {{ reading.due-time | split: ' ' | first }})</i>{% endif %}</li>
            {% endif %}
          </ul>
        </dd>
      {% endif %}
    {% endif %}
  {% endfor %}
</dl>
