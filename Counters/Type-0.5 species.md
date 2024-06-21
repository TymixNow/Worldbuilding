```dataview
table taxonomy, choice(default(AI, false), "Y", "n") as "AI", primary-climate
from "Species/Type/0/0.5"
sort primary-climate, AI, taxonomy
```
