---
title: Reports
permalink: /reports/
---
# Reports

We will have regular reports almost every week of the semester.
Mondays are in-class reports, Fridays are emailed reports.

<dl>
  {% assign reports = site.reports | sort: 'due' %}
  {% for report in reports %}
    {% if report.link %}
      {% if report.due %}
        <dt>{% include schedule_item.html item=report show-due-time=false show-subtitle=true %}</dt>
        <dd>
          <ul class="list-inline">
            {% if report.assigned %}
              <li>Assigned {{ report.assigned | date: '%A, %-d %B %Y' }}</li>
            {% endif %}
            {% if report.due %}
              <li>Due {{ report.due | date: '%A, %-d %B %Y' }}{% if report.due-time %} <i>(before {{ report.due-time | split: ' ' | first }})</i>{% endif %}</li>
            {% endif %}
          </ul>
        </dd>
      {% endif %}
    {% endif %}
  {% endfor %}
</dl>
