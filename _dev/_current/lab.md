---
title: Current Lab
permalink: /labs/current.html
---
{% assign current = site.labs | where: "current", true | first %}
{% if current %}
{{ current.content }}
{% else %}
No lab today
============

There is no laboratory today.  Be prepared to discuss ideas, to
listen to new concepts, to ask questions and to respond to questions.

{% endif %}
