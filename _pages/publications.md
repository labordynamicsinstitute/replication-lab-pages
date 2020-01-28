---
layout: page
permalink: /publications/
title: Publications
description: Papers by project members
years: [2017, 2018, 2019]
---

{% for y in page.years %}
  <h3 class="year">{{y}}</h3>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}
