---
name: "make-pdf"
description: "Converts markdown into a polished PDF with optional cover, TOC, watermark, and preview flow. Invoke when the user wants a markdown document exported or iterated into a publication-quality PDF." 
---

# Make PDF

Turn a markdown file into a polished PDF artifact instead of leaving it as a raw `.md`.

## When To Use
- the user wants a markdown file exported as a PDF
- the task calls for a polished memo, essay, report, draft, or shareable document artifact
- the user needs options like cover pages, page numbers, table of contents, watermarking, or preview-first iteration
- the repo already has markdown content and the request is about presentation, printing, or final delivery

## Core Rules
- verify the PDF binary or setup state before promising output
- confirm the source markdown file, output path, and special options when the request is ambiguous
- use preview-first iteration when layout or styling needs quick feedback before final generation
- call out when external images or environment setup are blocking a faithful render
- report the output path and options used so the artifact is reproducible
- keep the flow document-focused: source in, PDF artifact out, with minimal unrelated work

## Workflow
1. Identify the input markdown, desired output path, and whether the user needs preview, final PDF, or both.
2. Check that the `make-pdf` binary is available and stop with setup guidance if it is not.
3. Choose the right rendering mode: simple generate, cover plus TOC, watermark, or preview-first iteration.
4. Generate the artifact and verify the output path exists or the tool returned a clear error.
5. Hand back the PDF location, options used, and any next-step suggestions for layout refinements.

## Output
- source markdown and chosen PDF mode
- generated artifact path or the setup blocker
- options used such as cover, TOC, watermark, or preview
- any rendering caveats like missing network images or missing fonts
- next-step suggestion if the user should preview, regenerate, or iterate on styling
