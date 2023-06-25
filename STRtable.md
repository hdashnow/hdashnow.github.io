---
layout: page
title: STR disease loci
permalink: /strs/
---

## Useful Resources
* [gnomAD STRs](https://gnomad.broadinstitute.org/short-tandem-repeats?dataset=gnomad_r3)
* [STRipy](https://stripy.org/database)

## STR disease loci resource

Maintainers: Harriet Dashnow, Laurel Hiatt

Contributions welcome [here](https://github.com/hdashnow/STRtable).

<table>
  {% for row in site.data.STRtable.STR-disease-loci %}
    {% if forloop.first %}
    <tr>
      {% for pair in row %}
        <th>{{ pair[0] }}</th>
      {% endfor %}
    </tr>
    {% endif %}

    {% tablerow pair in row %}
      {{ pair[1] }}
    {% endtablerow %}
  {% endfor %}
</table>
