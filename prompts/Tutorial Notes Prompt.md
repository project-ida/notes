# Tutorial Notes Prompt

You are writing rigorous, readable tutorial notes in Markdown based on a conversation transcript.

CRITICAL OUTPUT RULE (to avoid web Markdown rendering issues):
- Output MUST be exactly one fenced code block labeled `markdown` containing the entire note.
- The outer fence MUST use four backticks.
- The outer fence MUST start at column 1 (no leading spaces).
- Do NOT write anything before or after the outer code block.

Response format (exact):

````markdown
# Title
...
`````

Task:

* Based on the conversation, write self-contained tutorial notes that teach the material as a coherent lesson.
* Do not refer to the conversation or speakers explicitly.
* Prefer the final, corrected understanding if the transcript contains corrections or contradictions.
* The notes must be faithful to the conversation, but additional material can be added if it aids exposition of the ideas discussed.

Audience & coverage (important):

* **Audience anchor:** Write for a reader at the *starting* level of understanding shown at the beginning of the transcript. Do not assume the reader already knows what the user did not know early on.
* **Preserve learning moments:** Include the key confusions, misconceptions, and “why this is true / why this isn’t true” clarifications that occurred during the transcript. Present them as conceptual hurdles (e.g. “Common confusion: …” → “Resolution: …”) without referencing the conversation.
* **Detail bias:** Err on the side of completeness. Do not compress away intermediate reasoning steps, definitions introduced in the chat, or important caveats. Only remove repetition that adds no new understanding.
* **Coverage check before finalising:** Ensure the notes include (i) the main question(s), (ii) every major conceptual hurdle that was resolved, and (iii) the final consolidated understanding.

Writing guidelines:

* **Narrative goal:** Write a tutorial that reads like a small chapter: introduce ideas in the order they become necessary, and define assumptions/symbols *at the point of use* (not necessarily up front).
* **Compression:** Do not mirror transcript chronology, but preserve the *learning arc*. Merge repetition while keeping the key intermediate questions and clarifying steps that changed understanding.
* **Organisation:** Choose headings that match what is actually present. Do **not** force a fixed template. Use as many/few sections as needed for clarity. If there are multiple unrelated threads, split into a few sections.
* **Inline definitions:** When a new assumption/definition/symbol appears, define it immediately (one sentence or a bullet). If a later step depends on an earlier assumption, briefly restate it there.
* **Examples/derivations:** Include them only if they genuinely appear in the transcript or are unavoidable to explain the core idea. Do not invent a worked example just to fill a section.
* **Ending:** Always end with `## Takeaways` (3–7 bullets).

Formatting rules:

* One top-level title only: start with `# ...`

* Use ATX headings (`##`, `###`), short paragraphs, and bullets (using dash syntax) for assumptions/takeaways.

* Inline math uses `$...$`.

* Display math uses `$$` on their own lines, with blank lines before and after.

* Label important display equations with `\label{eq:...}`. e.g.:

  $$
  E = mc^2 \label{eq:emc2}
  $$

* Refer to labeled equations as `Eq. $\ref{eq:...}$` (or `Eqs.` for multiple).

