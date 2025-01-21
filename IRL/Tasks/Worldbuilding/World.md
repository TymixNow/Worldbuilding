---
cssclasses: []
---
# 1. Universe
- [x] [[../../../Old/Physics/Cosmology/Plane Alignment|Cosmology]]
- [x] [[../../../Old/Tables/Energy change chart|Chemistry]]
# 2. Life
```dataview
task from "General/Chemistry/Tables/Obtaining chart.md"
```


  - [ ] #taxonomy 
    - [ ] #taxonomy/unapars 
    - [ ] #taxonomy/nontotae 
    - [ ] #taxonomy/plurpars 
        - [x] #taxonomy/plurpars/densae 
      - [x] #taxonomy/plurpars/virids 
        - [x] #taxonomy/plurpars/virids/allovirids 
        - [x] #taxonomy/plurpars/virids/calvovirids 
        - [x] #taxonomy/plurpars/virids/colorovirids 
      - [ ] #taxonomy/plurpars/motae 
        - [ ] #taxonomy/plurpars/motae/parvae 
          - [ ] #taxonomy/plurpars/motae/parvae/aquaparvae 
          - [ ] #taxonomy/plurpars/motae/parvae/aquatestae 
          - [x] #taxonomy/plurpars/motae/parvae/minuomonstrae 
        - [ ] #taxonomy/plurpars/motae/plurdirae 
        - [ ] #taxonomy/plurpars/motae/chordatae 
          - [ ] #taxonomy/plurpars/motae/chordatae/pisciae 
          - [ ] #taxonomy/plurpars/motae/chordatae/frigae 
            - [ ] #taxonomy/plurpars/motae/chordatae/frigae/terae 
            - [ ] #taxonomy/plurpars/motae/chordatae/frigae/magnomonstrae 
  - [ ] #climates 
    - [x] #climates/arid-cold 
    - [x] #climates/arid-hot 
    - [x] #climates/continental
    - [x] #climates/swamp
    - [x] #climates/mediterranean
    - [x] #climates/oceanic
    - [x] #climates/rainforest
    - [x] #climates/savanna
    - [x] #climates/tundra
    - [ ] 

### 1. Type-0.5 (non-alchemical) and Type-0 (element obtaining) species (based on [[../../../Old/Tables/Energy change chart|#elements]], [[Definers/Taxonomy|#taxonomy]] & [[../../../Definers/Climate|#climate]])
```dataview
table taxonomy, choice(default(AI, false), "Y", "n") as "AI", primary-climate
from "Species/Type/0" and !"Species/Type/0/0.5"
sort primary-climate, AI, taxonomy
```

```dataview
table taxonomy, choice(default(AI, false), "Y", "n") as "AI", primary-climate
from "Species/Type/0/0.5"
sort primary-climate, AI, taxonomy
```

### 2. Type-1 (element using, herbivorous) species (based on Type-1 species, [[../../../Old/Tables/Energy change chart|Elements]], [[Definers/Taxonomy|Taxonomy]] & [[Definers/Climate|Climate]])
```dataview
table taxonomy, choice(default(AI, false), "Y", "n") as "AI", primary-climate, prime
from "Species/Type/1"
sort type, primary-climate, AI, taxonomy
```
### 3. Type-2 (element using, carnivorous, omnivorous) species (based on [[../../../Old/Tables/Energy change chart|Elements]], [[../../../Definers/Taxonomy|Taxonomy]], [[../../../Definers/Climate|Climate]] & type-1 species)
### 4. Type-3 (intelligent) species (based on Type-2 species,[[Definers/Taxonomy|Taxonomy]] & [[Definers/Climate|Climate]])
### 5. Type-3.5 (cultural) species
