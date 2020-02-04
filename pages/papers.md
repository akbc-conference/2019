---
title: Accepted Papers
layout: page-fullwidth
permalink: /papers/
header:
    image_fullwidth: "amherst_sky.jpg"
---

All papers, with their reviews and other details, are also available on [OpenReview](https://openreview.net/group?id=AKBC.ws/2019/Conference).

## Archival Papers

<ul>
{% for paper in site.data.accepted %}
    {% if paper['archival status'] == "Archival" %}
    {% include paper.html p=paper %}
    {% endif %}
{% endfor %}
</ul>

## Non-Archival Papers

<ul>
{% for paper in site.data.accepted %}
    {% if paper['archival status'] == "" %}
    {% include paper.html p=paper %}
    {% endif %}
{% endfor %}
</ul>