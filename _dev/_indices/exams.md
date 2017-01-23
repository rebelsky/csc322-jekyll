---
title: Exams
permalink: /exams/
---
# Exams

<dl>
  {% assign exams = site.exams | sort: 'due' %}
  {% for exam in exams %}
    {% if exam.due %}
      <dt>{% include schedule_item.html item=exam show-due-time=false %}</dt>
      <dd>
        <ul class="list-inline">
          {% if exam.assigned %}
            <li>Released {{ exam.assigned | date: '%B %-d, %Y' }}</li>
          {% endif %}
          {% if exam.due %}
            <li>Due {{ exam.due | date: '%B %-d, %Y' }}{% if exam.due-time %} <i>(before {{ exam.due-time }})</i>{% endif %}</li>
          {% endif %}
        </ul>
      </dd>
    {% endif %}
  {% endfor %}
</dl>
