# Course-website-ejs Extension For Quarto

A collection of ejs templates for a course website.

## Installing

```bash
quarto add qmd-lab/course-website-ejs
```

This will install the extension under the `_extensions` subdirectory.
If you're using version control, you will want to check in this directory.

## Using

You use these ejs templates by providing a path to them in the listings yaml of the document in which you'd like it to be applied. For example:

```qmd
---
title: Course 101
subtitle: My University
listing:
  - id: schedule-listing
    contents: scheduled-docs_files/schedule.yml
    template: '_extensions/qmd-lab/course-website/schedule-1.ejs'
---
```


