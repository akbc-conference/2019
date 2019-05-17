---
title: Speakers
layout: page-fullwidth
permalink: /speakers/
header:
    image_fullwidth: "amherst_sky.jpg"
---

{% for speaker in site.data.speakers %}

<div id="{{ speaker.uniqid }}Summary"></div>
<div class="row"><br/></div>
<div class="row">
	<div class="large-1 columns"> <br /> </div>
	<div class="small-4 large-3 columns">
	  <img src="{{ site.baseurl }}/images/people/{{ speaker.thumbnailUrl}}"  alt="{{ speaker.name }} {{ speaker.surname }}" style="width: 300px" />
	</div>

<div class="small-8 large-7 columns" markdown="1">

### [{{ speaker.name }} {{ speaker.surname }}]({{ speaker.social[0].link }})
#### {{ speaker.title }}
<br />
_{{ speaker.talktitle }}_ <br />


<a href="#{{ speaker.uniqid }}Detail"> Abstract and Bio</a>
</div>

<div class="large-1 columns"></div>
</div>



{% endfor %}

<br />
<br />
<br />
<h1> Speaker abstracts and bios </h1>

{% for speaker in site.data.speakers %}


<div id="{{ speaker.uniqid }}Detail"></div>
<div class="row">
</div>
<div class="row">
<div class="large-1 columns"> <br />
</div>
<div class="small-4 large-3 columns">
<img src="{{ site.baseurl }}/images/people/{{ speaker.thumbnailUrl}}"  alt="{{ speaker.name }} {{ speaker.surname }}" style="width: 300px" />
</div>
<div class="small-8 large-7 columns" markdown="1">

### [{{ speaker.name }} {{ speaker.surname }}]({{ speaker.social[0].link }})
#### {{ speaker.title }}
</div>
</div>
<div class="row">
<div class="large-1 columns"></div>
<div class="large-8 columns" markdown="1">
<h6> Abstract </h6>
<i>{{ speaker.talktitle }}</i>
<br /> <br />
{{ speaker.abstract }}
<br /> <br /> <br />
<h6> Bio </h6>
{{ speaker.bio }}

<a href="#{{ speaker.uniqid }}Summary">Back</a>
</div>
<div class="large-1 columns"></div>
</div>


{% endfor %}

