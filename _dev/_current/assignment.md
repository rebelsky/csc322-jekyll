---
title: Current assignment
permalink: /assignments/current.html
---
{% assign current = site.assignments | where: "current", true | first %}
{% if current %}
{{ current.content }}
{% else %}
No current assignment
=====================

The software system is having trouble finding a current assignment.  
Check the [syllabus]({{ site.baseurl }}/syllabus).

{% endif %}
