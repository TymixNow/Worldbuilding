```dataview
table taxonomy, choice(default(AI, false), "Y", "n") as "AI", primary-climate, type
from "Species"
sort type, primary-climate, AI, taxonomy
```
