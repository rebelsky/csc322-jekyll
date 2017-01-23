---
title: Labs
permalink: /labs/
---
# Labs
You will have time in class to complete each of the following labs. A subset of the problems on each lab may be assigned as a lab writeup. Submit your lab writeups before 10:30pm the night after the following class period. For example, a lab assigned on Tuesday is due Wednesday at 10:30pm, whereas a lab assigned on Wednesday is due Friday at 10:30pm.

<dl class="dl-horizontal">
  {% assign daynum = 0 %}
  {% for week in site.data.dates %}
    {% for day in week.days %}
      {% assign class = site.data.classes[daynum] %}
      {% if class.lab %}
        <dt>{{ day | date: '%B %-d, %Y' }}</dt>
        <dd>
          <ul class='list-unstyled'>
            {% for item in class.lab %}
              {% assign lab = site.documents | where: "url", item | first %}
              {% if lab %}
                <li>{% include schedule_item.html item=lab show-due-time=false %}</li>
              {% else %}
                <li>{{ item | markdownify | remove: '<p>' | remove: '</p>' }}</li>
              {% endif %}
            {% endfor %}
          </ul>
        </dd>
      {% endif %}
      {% assign daynum = daynum | plus: 1 %}
    {% endfor %}
  {% endfor %}
</dl>