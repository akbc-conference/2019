---
title: Speakers
layout: page-fullwidth
permalink: /speakers/
header:
    image_fullwidth: "amherst_sky.jpg"
---

{% for speaker in site.data.speakers %}

<div class="row">
<div class="large-1 columns"> <br /> </div>
<div class="small-4 large-3 columns">
  <img src="{{ site.baseurl }}/images/people/{{ speaker.thumbnailUrl}}"  alt="{{ speaker.name }} {{ speaker.surname }}" style="width: 300px" />
</div>

<div class="small-8 large-6 columns" markdown="1">
<a href="#{{ speaker.name }}"></a>

### [{{ speaker.name }} {{ speaker.surname }}]({{ speaker.social[0].link }})
#### {{ speaker.title }}
<br />
_{{ speaker.talktitle }}_ <br />
<a href="" data-reveal-id="{{ speaker.name }}Modal"> Abstract and Bio </a> &nbsp;
</div>

<div class="large-1 columns"></div>
</div>



{% endfor %}


{% for speaker in site.data.speakers %}


<!-- Modal -->
<div id="{{ speaker.name }}Modal" class="reveal-modal large" data-reveal aria-labelledby="{{ speaker.name }}Modal" aria-hidden="true" role="dialog">
  <h2 id="modalTitle">{{ speaker.name }} {{ speaker.surname }}</h2>
  <br /> <br />
  <h6> Abstract </h6>
  <i>{{ speaker.talktitle }}</i>
  <br /> <br />
  {{ speaker.abstract }}
  <br /> <br /> <br />
  <h6> Bio </h6>
  {{ speaker.bio }}
  <a class="close-reveal-modal" aria-label="Close">&#215;</a>
</div>


{% endfor %}

