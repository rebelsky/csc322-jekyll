---
title: Current Outline
permalink: /outlines/current.html
---
{% assign current = site.outlines | where: "current", true | first %}
{% if current %}
{% assign page.number = current.number %}
{% assign page.held = current.held %}
{% include outline.md number=current.number  held=current.held %}
{% else %}
No current outline
=================

For unknown reasons, there is not a current outline.  Contact SamR to
get this issue fixed.
{% endif %}
