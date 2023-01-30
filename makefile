FILENAME = text.md

docx:
	pandoc $(FILENAME) --from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex -o output.docx --to=docx --reference-doc=test.docx --columns=1

clean:
	del output.docx
