---
title: Current
permalink: /current/
---
# Current Course Materials

{% assign today = 'now' %}

## {{ today | date: '%B %-d, %Y' }}
{% assign today_s = today | date_to_string | date: '%s' %}

{% assign daynum = false %}
{% assign index = 0 %}
{% for week in site.data.dates %}
  {% for day in week.days %}
    {% assign day_s = day | date_to_string | date: '%s' %}
    {% if today_s ==  day_s %}
      {% assign daynum = index %}
    {% endif %}
    {% assign index = index | plus: 1 %}
  {% endfor %}
{% endfor %}
{% assign class = site.data.classes[daynum] %}

<dl class="dl-horizontal">
  <dt>Topic of the day:</dt>
  <dd><ul class='list-unstyled'>
    {% if class.topic %}
      <li>{{ class.topic }}</li>
    {% else %}
      <li>No class today.</li>
    {% endif %}
  </ul></dd>

  <dt>Reading:</dt>
  <dd><ul class='list-unstyled'>
  {% if class.reading %}
    {% for item in class.reading %}
      {% assign reading = site.documents | where: "url", item | first %}
      {% if reading %}
        <li>{% include schedule_item.html item=reading show-due-time=false %}</li>
      {% else %}
        <li>{{ item | markdownify | remove: '<p>' | remove: '</p>' }}</li>
      {% endif %}
    {% endfor %}
  {% else %}
    <li>No reading today.</li>
  {% endif %}
  </ul></dd>

  <dt>Lab:</dt>
  <dd><ul class='list-unstyled'>
    {% if class.lab %}
      {% for item in class.lab %}
        {% assign lab = site.documents | where: "url", item | first %}
        {% if lab %}
          <li>{% include schedule_item.html item=lab show-due-time=false %}</li>
        {% else %}
          <li>{{ item | markdownify | remove: '<p>' | remove: '</p>' }}</li>
        {% endif %}
      {% endfor %}
    {% else %}
      <li>No lab today.</li>
    {% endif %}
  </ul></dd>

  <dt>Assignment:</dt>
  <dd><ul class='list-unstyled'>
    {% assign has_assignment = false %}
    {% for assignment in site.assignments %}
      {% if assignment.assigned and assignment.due %}
        {% assign assigned_s = assignment.assigned | date_to_string | date: '%s' %}
        {% assign due_s = assignment.due | date_to_string | date: '%s' %}
        {% if assigned_s <= today_s and today_s <= due_s and assignment.link %}
          {% assign has_assignment = true %}
          <ul class="list-inline">
            <li>{% include schedule_item.html item=assignment show-due-time=false %}</li>
            {% if assignment.assigned %}
              <li>Assigned {{ assignment.assigned | date: '%B %-d, %Y' }}</li>
            {% endif %}
            {% if assignment.due %}
              <li>Due {{ assignment.due | date: '%B %-d, %Y' }}{% if assignment.due-time %} <i>(before {{ assignment.due-time }})</i>{% endif %}</li>
            {% endif %}
          </ul>
        {% endif %}
      {% endif %}
    {% endfor %}
    {% if has_assignment == false %}
      <li>No assignments this week.</li>
    {% endif %}
  </ul></dd>
</dl>