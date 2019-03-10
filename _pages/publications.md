---
layout: page
permalink: /publications/
title: Publications
description: Papers by project members
---

<h3 class="year">Articles</h3>
  {% bibliography -f papers -q @article %}

<h3 class="year">Working papers and preprints</h3>
  {% bibliography -f papers -q @techreport %}