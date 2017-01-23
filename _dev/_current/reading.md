---
title: Current reading
permalink: /readings/current.html
---
{% assign current = site.readings | where: "current", true | first %}
{% if current %}
{{ current.content }}
{% else %}
No current reading
==================

There is no reading for you to do right now.  Take time to reflect
on what we have been learning recently  Be prepared to discuss
ideas, to listen to new concepts, to ask questions, and to respond
to questions.

{% endif %}
