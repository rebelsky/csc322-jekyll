---
title: Current EBoard
permalink: /eboards/current.html
---
{% assign current = site.eboards | where: "current", true | first %}
{% if current %}
{{ current.content }}
{% else %}
No current eboard
=================

For unknown reasons, there is not a current eboard.  Contact SamR to
get this issue fixed.
{% endif %}
