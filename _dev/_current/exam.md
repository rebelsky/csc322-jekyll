---
title: Current exam
permalink: /exams/current.html
---
{% assign current = site.exams | where: "current", true | first %}
{% if current %}
{{ current.content }}
{% else %}
No current examination
======================

We do not currently have an examination in progress.  You should look
at the [schedule]({{ site.baseurl }}/schedule) to see what work
is currently due.

{% endif %}
