---
aliases:
  - '#<%tp.system.prompt("tag:")%>'
---

```dataview
LIST WITHOUT ID "[[" + file.folder + "/" + file.name + "]]"
FROM <%tp.frontmatter["aliases"][0]%>
```
