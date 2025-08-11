```sql
WITH RECURSIVE subwords AS
(
    SELECT lexicon.word_id, grapheme AS word
    FROM lexicon
    JOIN phonetics
    ON lexicon.phoneme_id=phonetics.phoneme_id
    WHERE letter_ix=0
UNION ALL
    SELECT subwords.word_id, concat(subwords.word, phonetics.grapheme) AS word
    FROM subwords
    JOIN lexicon
    ON subwords.word_id=lexicon.word_id
    JOIN phonetics
    ON lexicon.phoneme_id=phonetics.phoneme_id
    WHERE length(subwords.word)=lexicon.letter_ix
)
SELECT meaning, word
FROM subwords
JOIN translation
ON subwords.word_id=translation.word_id
WHERE length(subwords.word)=translation.word_len
```
# db
- translation
    - word_id
    - meaning
    - word_len
- lexicon
    - word_id
    - letter_ix
    - phoneme_id
- phonetics
    - phoneme_id
    - grapheme