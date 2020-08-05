---
layout: checklist
title: PSAS Procedure Book
---

# Procedures:
{% comment %}
Liquid is weird.
The dashes in the liquid tags are necessary to make the whitespace work out correctly.
{% endcomment %}

{%- assign pages = site.pages | sort: "url" -%}
{% for page in pages %}
1. [{{ page.title -}}]({{- page.url -}})
{%- endfor %}

For the sake of being meta, you can follow these links for the [TODO](/TODO) list and the [README](/README) for this procedure book.
